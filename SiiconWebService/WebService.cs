using System;
using System.Collections.Generic;
using System.Text;

namespace SiiconWebService333
{
    public class WebService
    {
        //ServiceClient service = new ServiceClient();
        public WSTiendaSoapClient WS1 = new WSTiendaSoapClient();
        public void FindMarcas()
        {
            /* var list = service.SelecccionarMarcasAsync().Result;
             string nombre = list.ToString();
             var nombre_ = service.ConsultarFacturasClienteAsync("1043843573").Result;            
             nombre.ToString();*/
            
            
        }
    }
}
