using Domain.Api;
using Domain.Database;
using Domain.Resource.SampleNews.Data;
using System.Threading.Tasks;

namespace Domain.Resource.SampleNews.Business
{
    public interface IGlobalParameter : IBusinessLogic<GlobalParameter>
    {
        Task<GlobalParameter> GetById(string ParameterId);
    }
}
