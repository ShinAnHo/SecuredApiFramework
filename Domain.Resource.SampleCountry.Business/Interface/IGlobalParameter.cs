using Domain.Api;
using Domain.Database;
using Domain.Resource.SampleCountry.Data;
using System.Threading.Tasks;

namespace Domain.Resource.SampleCountry.Business
{
    public interface IGlobalParameter : IBusinessLogic<GlobalParameter>
    {
        Task<GlobalParameter> GetById(string ParameterId);
    }
}
