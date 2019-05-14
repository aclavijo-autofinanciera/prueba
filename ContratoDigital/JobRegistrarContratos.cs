using ContratoDigital.Controllers;
using Microsoft.Extensions.Hosting;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Net.Http;
using System.Threading;
using System.Threading.Tasks;

namespace ContratoDigital
{
    internal class JobRegistrarContratos : IHostedService
    {
        private Timer _timer;
        private readonly ICanonicalUrlConfiguration _canonicalUrlConfiguration;

        public JobRegistrarContratos(ICanonicalUrlConfiguration canonicalUrlConfiguration)
        {
            _canonicalUrlConfiguration = canonicalUrlConfiguration;
        }

        

        public Task StartAsync(CancellationToken cancellationToken)
        {
            try
            {
                _timer = new Timer(RegisterSiiconContracts, null, TimeSpan.Zero, TimeSpan.FromHours(6));                
                //throw new NotImplementedException();
            }
            catch (Exception ex)
            {
                Console.WriteLine("[EXCEPTION STARTASYNC]: " + ex.Message);
                Console.WriteLine("[STACKTRACE]: " + ex.StackTrace);
            }
            return Task.CompletedTask;
        }

        private void RegisterSiiconContracts(object state)
        {
            try
            {
                using (var client = new HttpClient())
                {
                    CanonicalUrlService urlService = new CanonicalUrlService(_canonicalUrlConfiguration);
                    var result = client.GetStringAsync(urlService.GetCanonicalUrl() + "api/Freyja/RegistrarContratos").Result;
                }
            }
            catch (Exception ex)
            {
                Console.WriteLine("[EXCEPTION REGISTERCONTRACTS]: " + ex.Message);
                Console.WriteLine("[STACKTRACE]: " + ex.StackTrace);
            }
        }

       

        public Task StopAsync(CancellationToken cancellationToken)
        {
            _timer?.Change(Timeout.Infinite, 0);
            return Task.CompletedTask;
        }

        /*public void Dispose()
        {
            _timer?.Dispose();
        }*/
    }
}
