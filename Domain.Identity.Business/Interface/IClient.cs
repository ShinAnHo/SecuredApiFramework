using Domain.Api;
using Domain.Database;
using Domain.Identity.Oauth;
using Microsoft.AspNetCore.Mvc;
using System.Threading.Tasks;

namespace Domain.Identity.Business
{
    public interface IClient : IBusinessLogic<Client>
    {
        Task<Client> GetById(long Id);
        Task<Client> GetByName(string Name);
        Task<ClientSecret> Register(Client data);
    }
}
