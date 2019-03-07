using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Threading.Tasks;

namespace ContratoDigital.Models
{
    public class PagoTuCompra
    {

        [Key] public int IdPago { get; set; }
        public int codigoFactura { get; set; }
        public float valorFactura { get; set; }
        public string transaccionAprobada { get; set; }
        public string codigoAutorizacion { get; set; }
        public string firmaTuCompra { get; set; }
        public int numeroTransaccion { get; set; }
        public int metodoPago { get; set; }
        public string banco { get; set; }
        public float valorBase { get; set; }
        public float valorIva { get; set; }
        public float valorReteiva { get; set; }
        public float valorReteica { get; set; }
        public float valorRetefuente { get; set; }
        public string descripcion { get; set; }
        public string descripcion2 { get; set; }
        public string detalle { get; set; }
        public DateTime fechaPago { get; set; }
        public string numeroTarjeta { get; set; }
        public int numeroCuotas { get; set; }
        public string correoComprador { get; set; }
        public string nombreComprador { get; set; }
        public string apellidoComprador { get; set; }
        public int documentoComprador { get; set; }
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
        public float valorComisionbancaria{get;set;}
        public float valorDepositoBanco { get; set; }
        public string bancoRecaudador { get; set; }
        public DateTime horaPago { get; set; }
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
    }
}
