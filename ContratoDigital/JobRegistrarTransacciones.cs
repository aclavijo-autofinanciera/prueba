﻿using ContratoDigital.Controllers;
using Microsoft.Extensions.Hosting;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Net.Http;
using System.Threading;
using System.Threading.Tasks;

namespace ContratoDigital
{
    
    internal class JobRegistrarTransacciones : IHostedService, IDisposable
    {
        private Timer _timer;
        private readonly ICanonicalUrlConfiguration _canonicalUrlConfiguration;

        public JobRegistrarTransacciones(ICanonicalUrlConfiguration canonicalUrlConfiguration)
        {
            _canonicalUrlConfiguration = canonicalUrlConfiguration;
        }



        public Task StartAsync(CancellationToken cancellationToken)
        {
            _timer = new Timer(RegisterSiiconContracts, null, TimeSpan.Zero, TimeSpan.FromMinutes(5));
            return Task.CompletedTask;
            //throw new NotImplementedException();
        }

        private void RegisterSiiconContracts(object state)
        {
            using (var client = new HttpClient())
            {
                CanonicalUrlService urlService = new CanonicalUrlService(_canonicalUrlConfiguration);
                var result = client.GetStringAsync(urlService.GetCanonicalUrl() + "api/Freyja/RegistrarTransacciones").Result;
            }
        }



        public Task StopAsync(CancellationToken cancellationToken)
        {
            _timer?.Change(Timeout.Infinite, 0);
            return Task.CompletedTask;
        }
        public void Dispose()
        {
            _timer?.Dispose();
        }
    }
}