using Domain.Database;

namespace Domain.Resource.SampleCountry.Data
{
    public class CountryRepository : RepoSqlSrvDbRepository<Country>
    {
        public CountryRepository(IUnitOfWork uow) : base(uow) { }
    }
}
