using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Threading.Tasks;

namespace Freyja.Models
{
    public class PagoTuCompra
    {

        [Key] public int IdPago { get; set; }
        public string codigoFactura { get; set; }
        public string valorFactura { get; set; }
        public string transaccionAprobada { get; set; }
        public string codigoAutorizacion { get; set; }
        public string firmaTuCompra { get; set; }
        public string numeroTransaccion { get; set; }
        public string metodoPago { get; set; }
        public string nombreMetodo { get; set; }
        public string banco { get; set; }
        public string valorBase { get; set; }
        public string valorIva { get; set; }
        public string valorReteiva { get; set; }
        public string valorReteica { get; set; }
        public string valorRetefuente { get; set; }
        public string descripcion { get; set; }
        public string descripcion2 { get; set; }
        public string detalle { get; set; }
        public string fechaPago { get; set; }
        public string numeroTarjeta { get; set; }
        public string numeroCuotas { get; set; }
        public string correoComprador { get; set; }
        public string nombreComprador { get; set; }
        public string apellidoComprador { get; set; }
        public string documentoComprador { get; set; }
        public string telefonoComprador { get; set; }
        public string direccionComprador { get; set; }
        public string ipComprador { get; set; }
        public string ciudadComprador { get; set; }
        public string paisComprador { get; set; }
        public string estadoPago { get; set; }
        public string razonRechazo { get; set; }
        public string tipoTarjeta { get; set; }
        public string categoriatarjeta { get; set; }
        public string paisemisor { get; set; }
        public string telefonoBancoemisor { get; set; }
        public string valorComisionbancaria {get;set;}
        public string valorDepositoBanco { get; set; }
        public string bancoRecaudador { get; set; }
        public string horaPago { get; set; }
        public string caja { get; set; }
        public string formaPago { get; set; }
        public string oficina { get; set; }
        public string cuentaBanco { get; set; }
        public string jornada { get; set; }
        public string tipoRegistro { get; set; }
        public string operador { get; set; }
        public string tipoTransaccion { get; set; }
        public string descripcionTipoTransaccion { get; set; }
        public string fechaSaldoAplicado { get; set; }
        public string codBancoRecaudador { get; set; }
        public string celular { get; set; }
        public string terminaltucompra { get; set; }
        public string nro_convenio { get; set; }
        public string serialunicotransaccion { get; set; }
        public string validarorcorresponsalath { get; set; }
        public string celular_nro_convenio { get; set; }
        public string celular_terminaltucompra { get; set; }
        public string compania { get; set; }

        public string fechaDeRegistro { get; set; }
        public bool registradoEnSiicon { get; set; }
        public string fechaRegistroSiicon { get; set; }
    }

    
}
