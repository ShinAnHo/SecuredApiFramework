using Domain.Database;

namespace Domain.Resource.SampleNews.Data
{
    public class GlobalParameterRepository : RepoSqlSrvDbRepository<GlobalParameter>
    {
        public GlobalParameterRepository(IUnitOfWork uow) : base(uow) { }
    }
}
