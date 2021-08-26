using Domain.Api;
using Domain.Database;
using Domain.Resource.SampleNews.Data;
using System.Collections.Generic;
using System.Threading.Tasks;

namespace Domain.Resource.SampleNews.Business
{
    public interface INews : IBaseBusinessLogic<News>
    {
        Task<News> GetById(long Id);
        Task<IEnumerable<News>> GetByUser(string user);
    }
}
