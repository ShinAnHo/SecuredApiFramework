using Domain.Api;
using Domain.Identity.Business;
using Domain.Identity.Oauth;
using Microsoft.AspNetCore.Mvc;
using Microsoft.Extensions.DependencyInjection;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Threading.Tasks;

namespace Domain.Identity.Web
{
    [Route("api/identity/client")]
    public class ClientController : Controller
    {
        private readonly string _label = "Client";
        private readonly Business.IClient _client;
        public ClientController(IServiceProvider serviceProvider)
        {
            this._client = serviceProvider.GetRequiredService<Business.IClient>();
        }
        [HttpGet, Route("")]
        public async Task<IActionResult> Get()
        {
            var data = await _client.GetAll();
            var result = new ApiResult(_label, ApiMessageType.SuccessfullyFetch, data);
            var response = new ApiResponse(HttpStatusCode.OK, result);

            return this.SendResponse(response);
        }
        [HttpGet, Route("{ScopeId}")]
        public async Task<IActionResult> Get(long ScopeId)
        {
            var data = await _client.GetById(ScopeId);
            var result = new ApiResult(_label, ApiMessageType.SuccessfullyFetch, data);
            var response = new ApiResponse(HttpStatusCode.OK, result);

            return this.SendResponse(response);
        }
        [HttpPost, Route("insert")]
        public async Task<IActionResult> Insert(Client data)
        {
            await _client.Insert(data);
            var result = new ApiResult(_label, ApiMessageType.SuccessfullyFetch, data);
            var response = new ApiResponse(HttpStatusCode.OK, result);

            return this.SendResponse(response);
        }
        [HttpPost, Route("update")]
        public async Task<IActionResult> Update(Client data)
        {
            await _client.Insert(data);
            var result = new ApiResult(_label, ApiMessageType.SuccessfullyUpdate, data);
            var response = new ApiResponse(HttpStatusCode.OK, result);

            return this.SendResponse(response);
        }
        [HttpPost, Route("delete")]
        public async Task<IActionResult> Delete(Client data)
        {
            await _client.Delete(data);
            var result = new ApiResult(_label, ApiMessageType.SuccessfullyDelete, data);
            var response = new ApiResponse(HttpStatusCode.OK, result);

            return this.SendResponse(response);
        }
        [HttpPost, Route("register")]
        public async Task<IActionResult> Register(Client data)
        {
            var inserted = await _client.Register(data);
            var result = new ApiResult(_label, ApiMessageType.SuccessfullyWrite, inserted);
            var response = new ApiResponse(HttpStatusCode.OK, result);

            return this.SendResponse(response);
        }
    }
}
