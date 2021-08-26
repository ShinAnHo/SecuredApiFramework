using Domain.Api;
using Domain.Database;
using Domain.Resource.SampleCountry.Data;
using System.Threading.Tasks;

namespace Domain.Resource.SampleCountry.Business
{
    public interface ICountry : IBusinessLogic<Country>
    {
        Task<Country> GetByCode(string Code);
    }
}
