using Domain.Client.Web.Models;
using Domain.Identity.Oauth;
using Microsoft.AspNetCore.Authentication;
using Microsoft.AspNetCore.Authorization;
using Microsoft.AspNetCore.Mvc;
using Microsoft.Extensions.Logging;
using Microsoft.Extensions.Options;
using Newtonsoft.Json;
using System;
using System.Collections.Generic;
using System.Diagnostics;
using System.Linq;
using System.Net.Http;
using System.Threading.Tasks;


namespace Domain.Client.Web.Controllers
{
    public class MasterController : BaseController
    {
        private readonly ILogger<HomeController> _logger;
        public MasterController(IHttpClientFactory httpClientFactory, IOptions<AppSettings> appSettings) : base(httpClientFactory, appSettings) { }
        [Authorize]
        public IActionResult MasterNews()
        {
            return View();
        }
        [Authorize]
        public IActionResult NewsAdd()
        {
            return View();
        }
        [Authorize]
        public IActionResult NewsEdit(int id)
        {
            ViewBag.Id = id;

            return View();
        }
        public async Task<ActionResult> GetNews()
        {
            var data = await SecuredGetRequest<IEnumerable<News>>($"https://localhost:44310/api/samplenews/News");
            return AjaxResponse("Get successfully", true, data);
        }
        public async Task<ActionResult> GetNewsDetail(int id)
        {
            var data = await SecuredGetRequest<News>($"https://localhost:44310/api/samplenews/News/" + id);
            return AjaxResponse("Get successfully", true, data);
        }
        public async Task<ActionResult> InsertNews([FromBody] News News)
        {
            try
            {
                var data = await SecuredPostRequest<News>($"https://localhost:44310/api/samplenews/News/Insert", News);
                return AjaxResponse("Insert successfully", true, null);
            }
            catch (Exception ex)
            {
                if (ex is UnauthorizedAccessException)
                {
                    return AjaxResponse("Unauthorized", false);
                }
                else
                {
                    return AjaxResponse(ex.Message, false);
                }
            }
        }
        public async Task<ActionResult> UpdateNews([FromBody] News News)
        {
            try
            {
                var data = await SecuredPostRequest<News>($"https://localhost:44310/api/samplenews/News/Update", News);
                return AjaxResponse("Update successfully", true, null);
            }
            catch (Exception ex)
            {
                if (ex is UnauthorizedAccessException)
                {
                    return AjaxResponse("Unauthorized", false);
                }
                else
                {
                    return AjaxResponse(ex.Message, false);
                }
            }
        }
        public async Task<ActionResult> DeleteNews([FromBody] News News)
        {
            try
            {
                var data = await SecuredPostRequest<News>($"https://localhost:44310/api/samplenews/News/Delete", News);
                return AjaxResponse("Update successfully", true, null);
            }
            catch (Exception ex)
            {
                if (ex is UnauthorizedAccessException)
                {
                    return AjaxResponse("Unauthorized", false);
                }
                else
                {
                    return AjaxResponse(ex.Message, false);
                }
            }
        }
        public class News
        {
            public long Id { get; set; }
            public string NewsId { get; set; }
            public string Title { get; set; }
            public string Content { get; set; }
        }
        public class AjaxResult
        {
            public string message { get; set; }
            public bool isSuccess { get; set; }
            public object? data { get; set; }
        }
        public ContentResult AjaxResponse(string message, bool isSuccess, object data = null)
        {
            return Content(JsonConvert.SerializeObject(new { message = message, isSuccess = isSuccess, data = data }, Formatting.None, new JsonSerializerSettings() { ReferenceLoopHandling = ReferenceLoopHandling.Ignore }));
        }
    }
}
