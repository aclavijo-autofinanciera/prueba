using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace ContratoDigital
{
    public interface ICanonicalUrlConfiguration
    {
        string CanonicalUrl { get; }
    }

    public class CanonicalUrlConfiguration : ICanonicalUrlConfiguration
    {
        public string CanonicalUrl { get; set; }
    }
}
