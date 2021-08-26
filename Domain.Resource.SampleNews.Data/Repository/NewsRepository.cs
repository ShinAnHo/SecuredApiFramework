using Domain.Database;

namespace Domain.Resource.SampleNews.Data
{
    public class NewsRepository : RepoSqlSrvDbRepository<News>
    {
        public NewsRepository(IUnitOfWork uow) : base(uow) { }
    }
}
