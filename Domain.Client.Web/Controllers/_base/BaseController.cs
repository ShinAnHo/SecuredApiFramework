using Domain.Api;
using Microsoft.AspNetCore.Authentication;
using Microsoft.AspNetCore.Mvc;
using Microsoft.Extensions.Options;
using Newtonsoft.Json;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Net.Http;
using System.Net.Http.Headers;
using System.Text;
using System.Threading.Tasks;

namespace Domain.Client.Web
{
    public class BaseController : Controller
    {
        private readonly IHttpClientFactory _httpClientFactory;
        private readonly AppSettings _appSettings;
        public BaseController(IHttpClientFactory httpClientFactory, IOptions<AppSettings> appSettings)
        {
            _httpClientFactory = httpClientFactory;
            _appSettings = appSettings.Value;
        }
        public async Task<T> SecuredGetRequest<T>(string url) where T : class
        {
            var apiResponse = await AccessTokenRefreshWrapper(
                () => GetRequest(url));

            if (apiResponse.StatusCode == System.Net.HttpStatusCode.OK)
            {
                var responseBody = apiResponse.Content.ReadAsStringAsync().Result;
                var apiResult = JsonConvert.DeserializeObject<ApiResult>(responseBody);
                var apiData = JsonConvert.DeserializeObject<T>(apiResult.Data.ToString());

                return apiData;
            }
            else
                throw new UnauthorizedAccessException();
        }
        public async Task<T> SecuredPostRequest<T>(string url, object data) where T : class
        {
            var apiResponse = await AccessTokenRefreshWrapper(
                () => PostRequest(url, data));

            if (apiResponse.StatusCode == System.Net.HttpStatusCode.OK)
            {
                var responseBody = apiResponse.Content.ReadAsStringAsync().Result;
                var apiResult = JsonConvert.DeserializeObject<ApiResult>(responseBody);
                var apiData = JsonConvert.DeserializeObject<T>(apiResult.Data.ToString());

                return apiData;
            }
            else
                throw new UnauthorizedAccessException();
        }
        private async Task<HttpResponseMessage> AccessTokenRefreshWrapper(Func<Task<HttpResponseMessage>> initialRequest)
        {
            var response = await initialRequest();

            if (response.StatusCode == System.Net.HttpStatusCode.Unauthorized)
            {
                await RefreshAccessToken();
                response = await initialRequest();
            }

            return response;
        }
        private async Task<HttpResponseMessage> GetRequest(string url)
        {
            var token = await HttpContext.GetTokenAsync("access_token");
            var client = _httpClientFactory.CreateClient();
            client.DefaultRequestHeaders.Add("Authorization", $"Bearer {token}");
            return await client.GetAsync(url);
        }
        private async Task<HttpResponseMessage> PostRequest(string url, object data)
        {
            var token = await HttpContext.GetTokenAsync("access_token");
            var client = _httpClientFactory.CreateClient();
            client.DefaultRequestHeaders.Add("Authorization", $"Bearer {token}");

            //var stringContent = new StringContent(JsonConvert.SerializeObject(data), Encoding.UTF8, "application/json");
            //return await client.PostAsync(url, stringContent);

            var content = System.Net.Http.Json.JsonContent.Create(data);
            return await client.PostAsync(url, content);

            //var myContent = JsonConvert.SerializeObject(data);
            //var buffer = System.Text.Encoding.UTF8.GetBytes(myContent);
            //var byteContent = new ByteArrayContent(buffer);
            //byteContent.Headers.ContentType = new MediaTypeHeaderValue("application/json");
            //return await client.PostAsync(url, byteContent);
        }
        private async Task RefreshAccessToken()
        {
            var refreshToken = await HttpContext.GetTokenAsync("refresh_token");
            var refreshTokenClient = _httpClientFactory.CreateClient();

            var requestData = new Dictionary<string, string>
            {
                ["grant_type"] = "refresh_token",
                ["refresh_token"] = refreshToken
            };

            var request = new HttpRequestMessage(HttpMethod.Post, $"{_appSettings.GatewayUrl}/api/connect/token")
            {
                Content = new FormUrlEncodedContent(requestData)
            };

            var response = await refreshTokenClient.SendAsync(request);

            if (response.StatusCode == System.Net.HttpStatusCode.OK)
            {
                var responseString = await response.Content.ReadAsStringAsync();
                var responseData = JsonConvert.DeserializeObject<Dictionary<string, string>>(responseString);

                var newAccessToken = responseData.GetValueOrDefault("access_token");
                var newRefreshToken = responseData.GetValueOrDefault("refresh_token");

                var authInfo = await HttpContext.AuthenticateAsync("ClientCookie");
                authInfo.Properties.UpdateTokenValue("access_token", newAccessToken);
                authInfo.Properties.UpdateTokenValue("refresh_token", newRefreshToken);

                await HttpContext.SignInAsync("ClientCookie", authInfo.Principal, authInfo.Properties);
            }
        }
        public ContentResult AjaxResponse(string message, object data = null)
        {
            return Content(JsonConvert.SerializeObject(new ApiResult(message: message, data: data)));
        }
    }
}
