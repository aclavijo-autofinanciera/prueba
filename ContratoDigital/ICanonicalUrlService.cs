using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace ContratoDigital
{
    public interface ICanonicalUrlService
    {
        string GetCanonicalUrl();
    }

    public class CanonicalUrlService : ICanonicalUrlService
    {
        private readonly ICanonicalUrlConfiguration _canonicalUrlConfiguration;

        public CanonicalUrlService(ICanonicalUrlConfiguration canonicalUrlConfiguration)
        {
            _canonicalUrlConfiguration = canonicalUrlConfiguration;
        }

        public string GetCanonicalUrl()
        {
            return _canonicalUrlConfiguration.CanonicalUrl;
        }
    }
}
