using Domain.Identity.Oauth;
using Microsoft.AspNetCore.Authentication;
using Microsoft.AspNetCore.Authentication.Cookies;
using Microsoft.Extensions.Options;
using Newtonsoft.Json;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Net.Http;
using System.Threading.Tasks;

namespace Domain.Client.Web
{
    public class CustomCookieAuthenticationEvents : CookieAuthenticationEvents
    {
        private readonly IHttpClientFactory _httpClientFactory;
        private readonly AppSettings _appSettings;
        public CustomCookieAuthenticationEvents(IHttpClientFactory httpClientFactory, IOptions<AppSettings> appSettings)
        {
            _httpClientFactory = httpClientFactory;
            _appSettings = appSettings.Value;
        }
        public override async Task ValidatePrincipal(CookieValidatePrincipalContext context)
        {
            var tokens = context.Properties.GetTokens();
            var refreshToken = tokens.FirstOrDefault(t => t.Name == "refresh_token").Value;
            var accessToken = tokens.FirstOrDefault(t => t.Name == "access_token").Value;

            var expires_at = long.Parse(context.Principal.Claims.Where(c => c.Type == "exp").First().Value);
            var expires_date = DateTimeOffset.FromUnixTimeSeconds(expires_at).UtcDateTime;

            //if (expires_date <= DateTime.Now)
            //{
            //    context.RejectPrincipal();
            //    await context.HttpContext.SignOutAsync("ClientCookie");
            //}

            if (expires_date <= DateTime.Now)
            {
                using var refreshTokenClient = _httpClientFactory.CreateClient();
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

                    var securityToken = new SecurityToken()
                    {
                        access_token = responseData.GetValueOrDefault("access_token"),
                        refresh_token = responseData.GetValueOrDefault("refresh_token")
                    };
                }
                else
                {
                    context.RejectPrincipal();
                    await context.HttpContext.SignOutAsync("ClientCookie");
                }
            }
        }
    }
}
