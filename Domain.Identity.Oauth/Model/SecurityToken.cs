using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace Domain.Identity.Oauth
{
    public class SecurityToken
    {
        public string access_token { get; set; }
        public string refresh_token { get; set; }
    }
}
