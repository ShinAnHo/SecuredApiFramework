using Microsoft.AspNetCore.Mvc;

namespace Domain.Api
{
    public class RequireClaimAttribute : TypeFilterAttribute
    {
        public RequireClaimAttribute(string claimType, params string[] claimValue) : base(typeof(RequireClaimFilter))
        {
            Arguments = new object[] { claimType, claimValue };
        }
    }

}
