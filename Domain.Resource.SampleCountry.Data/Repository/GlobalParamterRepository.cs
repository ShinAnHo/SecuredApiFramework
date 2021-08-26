using Domain.Database;

namespace Domain.Resource.SampleCountry.Data
{
    public class GlobalParameterRepository : RepoSqlSrvDbRepository<GlobalParameter>
    {
        public GlobalParameterRepository(IUnitOfWork uow) : base(uow) { }
    }
}
