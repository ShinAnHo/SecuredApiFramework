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
    public class HomeController : BaseController
    {
        private readonly ILogger<HomeController> _logger;

        public HomeController(IHttpClientFactory httpClientFactory, IOptions<AppSettings> appSettings) : base(httpClientFactory, appSettings) { }

        [Authorize]
        public IActionResult Index()
        {
            return View();
        }
        public IActionResult UnauthorizedAction()
        {
            return View("Unauthorized");
        }
        [Authorize]
        public IActionResult Normal()
        {
            return View();
        }
        [Authorize]
        public IActionResult Client()
        {
            return View();
        }
        [Authorize]
        public IActionResult Login()
        {
            return View();
        }
        public async Task<IActionResult> Logout()
        {
            await HttpContext.SignOutAsync("ClientCookie");
            return RedirectToAction("Index", "Home");
        }
        public async Task<IActionResult> NormalCall()
        {
            try
            {
                var data = await SecuredGetRequest<Company>($"https://localhost:44310/api/protected/Company/1");
                return AjaxResponse("Get successfully", true, data);
            } 
            catch(Exception ex)
            {
                if(ex is UnauthorizedAccessException)
                {
                    return AjaxResponse("Unauthorized", false);
                }
                else
                {
                    return AjaxResponse(ex.Message, false);
                }
            }
        }
        public async Task<ActionResult> GetMasterApiScope()
        {
            var data = await SecuredGetRequest<IEnumerable<Company>>($"https://localhost:44310/api/protected/Company");
            return AjaxResponse("Get successfully", true, data);
        }
        public async Task<ActionResult> GetMasterApiScopeLocked()
        {
            var data = await SecuredGetRequest<IEnumerable<Company>>($"https://localhost:44310/api/protected/Company/1");
            return AjaxResponse("Get successfully", true, data);
        }
        public IActionResult Privacy()
        {
            return View();
        }
        [ResponseCache(Duration = 0, Location = ResponseCacheLocation.None, NoStore = true)]
        public IActionResult Error()
        {
            return View(new ErrorViewModel { RequestId = Activity.Current?.Id ?? HttpContext.TraceIdentifier });
        }
        public class Company
        {
            public long Id { get; set; }
            public string Name { get; set; }
            public string Industry { get; set; }
            public string Market { get; set; }
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
