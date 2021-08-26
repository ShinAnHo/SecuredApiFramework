using RepoDb.Attributes;

namespace Domain.Resource.SampleCountry.Data
{
    public class Country
    {
        [Primary]
        public string Code { get; set; }
        public string Name { get; set; }
    }
}
