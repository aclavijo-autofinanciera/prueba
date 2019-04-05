using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Freyja.Data;
using Freyja.Models;
using Microsoft.AspNetCore.Authorization;
using Microsoft.AspNetCore.Mvc;
using SiiconWebService;

namespace Freyja.Controllers
{
    [Route("api/Freyja")]
    [ApiController]
    public class FreyjaController : ControllerBase
    {
        ServiceClient service = new ServiceClient();
        private readonly FreyjaContext _context;

        public FreyjaController(FreyjaContext context)
        {
            _context = context;
        }
        
        [AllowAnonymous]
        [HttpPost("RegistrarTransaccionesAuto")]
        [Route("api/Freyja/RegistrarTransaccionesAuto")]
        public async Task<ActionResult<string>> RegistrarTransaccionesAuto()
        {
            PagoTuCompra pago = new PagoTuCompra();

            /*StringBuilder consoleResponse = new StringBuilder();
            consoleResponse.AppendLine("[ITERACION FORMA DE TUPAGO]:");
            foreach (var item in HttpContext.Request.Form)
            {
                consoleResponse.AppendLine("[" + item.Key +  "]: " + item.Value );
            }
            Console.Write(consoleResponse);*/

            pago.codigoFactura = string.IsNullOrEmpty(HttpContext.Request.Form["codigoFactura"]) ? "" : HttpContext.Request.Form["codigoFactura"].ToString();
            pago.valorFactura = string.IsNullOrEmpty(HttpContext.Request.Form["valorFactura"]) ? "" : HttpContext.Request.Form["valorFactura"].ToString();
            pago.transaccionAprobada = string.IsNullOrEmpty(HttpContext.Request.Form["transaccionAprobada"]) ? "" : HttpContext.Request.Form["transaccionAprobada"].ToString();
            pago.codigoAutorizacion = string.IsNullOrEmpty(HttpContext.Request.Form["codigoAutorizacion"]) ? "" : HttpContext.Request.Form["codigoAutorizacion"].ToString();
            pago.firmaTuCompra = string.IsNullOrEmpty(HttpContext.Request.Form["firmaTuCompra"]) ? "" : HttpContext.Request.Form["firmaTuCompra"].ToString();
            pago.numeroTransaccion = string.IsNullOrEmpty(HttpContext.Request.Form["numeroTransaccion"]) ? "" : HttpContext.Request.Form["numeroTransaccion"].ToString();
            pago.metodoPago = string.IsNullOrEmpty(HttpContext.Request.Form["metodoPago"]) ? "" : HttpContext.Request.Form["metodoPago"].ToString();
            pago.nombreMetodo = string.IsNullOrEmpty(HttpContext.Request.Form["nombreMetodo"]) ? "" : HttpContext.Request.Form["nombreMetodo"].ToString();
            pago.banco = string.IsNullOrEmpty(HttpContext.Request.Form["banco"]) ? "" : HttpContext.Request.Form["banco"].ToString();
            pago.valorBase = string.IsNullOrEmpty(HttpContext.Request.Form["valorBase"]) ? "" : HttpContext.Request.Form["valorBase"].ToString();
            pago.valorIva = string.IsNullOrEmpty(HttpContext.Request.Form["valorIva"]) ? "" : HttpContext.Request.Form["valorIva"].ToString();
            pago.valorReteiva = string.IsNullOrEmpty(HttpContext.Request.Form["valorReteiva"]) ? "" : HttpContext.Request.Form["valorReteiva"].ToString();
            pago.valorReteica = string.IsNullOrEmpty(HttpContext.Request.Form["valorReteica"]) ? "" : HttpContext.Request.Form["valorReteica"].ToString();
            pago.valorRetefuente = string.IsNullOrEmpty(HttpContext.Request.Form["valorRetefuente"]) ? "" : HttpContext.Request.Form["valorRetefuente"].ToString();
            pago.descripcion = string.IsNullOrEmpty(HttpContext.Request.Form["descripcion"]) ? "" : HttpContext.Request.Form["descripcion"].ToString();
            pago.descripcion2 = string.IsNullOrEmpty(HttpContext.Request.Form["descripcion2"]) ? "" : HttpContext.Request.Form["descripcion2"].ToString();
            pago.detalle = string.IsNullOrEmpty(HttpContext.Request.Form["detalle"]) ? "" : HttpContext.Request.Form["detalle"].ToString();
            pago.fechaPago = string.IsNullOrEmpty(HttpContext.Request.Form["fechaPago"]) ? "" : HttpContext.Request.Form["fechaPago"].ToString(); ;
            pago.numeroTarjeta = string.IsNullOrEmpty(HttpContext.Request.Form["numeroTarjeta"]) ? "" : HttpContext.Request.Form["numeroTarjeta"].ToString();
            pago.numeroCuotas = string.IsNullOrEmpty(HttpContext.Request.Form["numeroCuotas"]) ? "" : HttpContext.Request.Form["numeroCuotas"].ToString();
            pago.correoComprador = string.IsNullOrEmpty(HttpContext.Request.Form["correoComprador"]) ? "" : HttpContext.Request.Form["correoComprador"].ToString();
            pago.nombreComprador = string.IsNullOrEmpty(HttpContext.Request.Form["nombreComprado"]) ? "" : HttpContext.Request.Form["nombreComprado"].ToString();
            pago.apellidoComprador = string.IsNullOrEmpty(HttpContext.Request.Form["apellidoComprador"]) ? "" : HttpContext.Request.Form["apellidoComprador"].ToString();
            pago.documentoComprador = string.IsNullOrEmpty(HttpContext.Request.Form["documentoComprador"]) ? "" : HttpContext.Request.Form["documentoComprador"].ToString();
            pago.telefonoComprador = string.IsNullOrEmpty(HttpContext.Request.Form["telefonoComprador"]) ? "" : HttpContext.Request.Form["telefonoComprador"].ToString();
            pago.direccionComprador = string.IsNullOrEmpty(HttpContext.Request.Form["direccionComprador"]) ? "" : HttpContext.Request.Form["direccionComprador"].ToString();
            pago.ipComprador = string.IsNullOrEmpty(HttpContext.Request.Form["ipComprador"]) ? "" : HttpContext.Request.Form["ipComprador"].ToString();
            pago.ciudadComprador = string.IsNullOrEmpty(HttpContext.Request.Form["ciudadComprador"]) ? "" : HttpContext.Request.Form["ciudadComprador"].ToString();
            pago.paisComprador = string.IsNullOrEmpty(HttpContext.Request.Form["paisComprador"]) ? "" : HttpContext.Request.Form["paisComprador"].ToString();
            pago.estadoPago = string.IsNullOrEmpty(HttpContext.Request.Form["estadoPago"]) ? "" : HttpContext.Request.Form["estadoPago"].ToString();
            pago.razonRechazo = string.IsNullOrEmpty(HttpContext.Request.Form["razonRechazo"]) ? "" : HttpContext.Request.Form["razonRechazo"].ToString();
            pago.tipoTarjeta = string.IsNullOrEmpty(HttpContext.Request.Form["tipoTarjeta"]) ? "" : HttpContext.Request.Form["tipoTarjeta"].ToString();
            pago.categoriatarjeta = string.IsNullOrEmpty(HttpContext.Request.Form["categoriatarjeta"]) ? "" : HttpContext.Request.Form["categoriatarjeta"].ToString();
            pago.paisemisor = string.IsNullOrEmpty(HttpContext.Request.Form["paisemisor"]) ? "" : HttpContext.Request.Form["paisemisor"].ToString();
            pago.telefonoBancoemisor = string.IsNullOrEmpty(HttpContext.Request.Form["telefonoBancoemisor"]) ? "" : HttpContext.Request.Form["telefonoBancoemisor"].ToString();
            pago.valorComisionbancaria = string.IsNullOrEmpty(HttpContext.Request.Form["valorComisionBancaria"]) ? "" : HttpContext.Request.Form["valorComisionBancaria"].ToString();
            pago.valorDepositoBanco = string.IsNullOrEmpty(HttpContext.Request.Form["valorDepositoBanco"]) ? "" : HttpContext.Request.Form["valorDepositoBanco"].ToString();
            pago.bancoRecaudador = string.IsNullOrEmpty(HttpContext.Request.Form["bancoRecaudador"]) ? "" : HttpContext.Request.Form["bancoRecaudador"].ToString();
            pago.horaPago = string.IsNullOrEmpty(HttpContext.Request.Form["horaPago"]) ? "" : HttpContext.Request.Form["horaPago"].ToString(); ;
            pago.caja = string.IsNullOrEmpty(HttpContext.Request.Form["caja"]) ? "" : HttpContext.Request.Form["caja"].ToString();
            pago.formaPago = string.IsNullOrEmpty(HttpContext.Request.Form["formaPago"]) ? "" : HttpContext.Request.Form["formaPago"].ToString();
            pago.oficina = string.IsNullOrEmpty(HttpContext.Request.Form["oficina"]) ? "" : HttpContext.Request.Form["oficina"].ToString();
            pago.cuentaBanco = string.IsNullOrEmpty(HttpContext.Request.Form["cuentaBanco"]) ? "" : HttpContext.Request.Form["cuentaBanco"].ToString();
            pago.jornada = string.IsNullOrEmpty(HttpContext.Request.Form["jornada"]) ? "" : HttpContext.Request.Form["jornada"].ToString();
            pago.tipoRegistro = string.IsNullOrEmpty(HttpContext.Request.Form["tipoRegistro"]) ? "" : HttpContext.Request.Form["tipoRegistro"].ToString();
            pago.operador = string.IsNullOrEmpty(HttpContext.Request.Form["operador"]) ? "" : HttpContext.Request.Form["operador"].ToString();
            pago.tipoTransaccion = string.IsNullOrEmpty(HttpContext.Request.Form["tipoTransaccion"]) ? "" : HttpContext.Request.Form["tipoTransaccion"].ToString();
            pago.descripcionTipoTransaccion = string.IsNullOrEmpty(HttpContext.Request.Form["descripcionTipoTransaccion"]) ? "" : HttpContext.Request.Form["descripcionTipoTransaccion"].ToString();
            pago.fechaSaldoAplicado = string.IsNullOrEmpty(HttpContext.Request.Form["fechaSaldoAplicado"]) ? "" : HttpContext.Request.Form["fechaSaldoAplicado"].ToString();
            pago.codBancoRecaudador = string.IsNullOrEmpty(HttpContext.Request.Form["codBancoRecaudador"]) ? "" : HttpContext.Request.Form["codBancoRecaudador"].ToString();
            pago.celular = string.IsNullOrEmpty(HttpContext.Request.Form["celular"]) ? "" : HttpContext.Request.Form["celular"].ToString();
            pago.terminaltucompra = string.IsNullOrEmpty(HttpContext.Request.Form["terminaltucompra"]) ? "" : HttpContext.Request.Form["terminaltucompra"].ToString();
            pago.nro_convenio = string.IsNullOrEmpty(HttpContext.Request.Form["nro_convenio"]) ? "" : HttpContext.Request.Form["nro_convenio"].ToString();
            pago.serialunicotransaccion = string.IsNullOrEmpty(HttpContext.Request.Form["serialunicotransaccion"]) ? "" : HttpContext.Request.Form["serialunicotransaccion"].ToString();
            pago.validarorcorresponsalath = string.IsNullOrEmpty(HttpContext.Request.Form["validarorcorresponsalath"]) ? "" : HttpContext.Request.Form["validarorcorresponsalath"].ToString();

            pago.celular_nro_convenio = string.IsNullOrEmpty(HttpContext.Request.Form["celular&nro_convenio"]) ? "" : HttpContext.Request.Form["celular&nro_convenio"].ToString();
            pago.celular_terminaltucompra = string.IsNullOrEmpty(HttpContext.Request.Form["celular&terminaltucompra"]) ? "" : HttpContext.Request.Form["celular&terminaltucompra"].ToString();

            pago.compania = Constants.GuuidAuto;
            pago.fechaDeRegistro = String.Format("{0:yyyy-MM-dd HH:mm:ss}", DateTime.Now);
            pago.registradoEnSiicon = false;
            pago.fechaRegistroSiicon = "";

            _context.PagoTuCompra.Add(pago);
            await _context.SaveChangesAsync();
            if (RegistrarTransaccion(pago).Result.Value == "HTTP 200 OK")
            {
                pago.fechaRegistroSiicon = String.Format("{0:yyyy-MM-dd HH:mm:ss}", DateTime.Now);
                pago.registradoEnSiicon = true;
                await _context.SaveChangesAsync();
            }
            return "HTTP 200 OK";
        }

        [AllowAnonymous]
        [HttpPost("RegistrarTransaccionesElectro")]
        [Route("api/Freyja/RegistrarTransaccionesElectro")]
        public async Task<ActionResult<string>> RegistrarTransaccionesElectro()
        {
            PagoTuCompra pago = new PagoTuCompra();

            /*StringBuilder consoleResponse = new StringBuilder();
            consoleResponse.AppendLine("[ITERACION FORMA DE TUPAGO]:");
            foreach (var item in HttpContext.Request.Form)
            {
                consoleResponse.AppendLine("[" + item.Key +  "]: " + item.Value );
            }
            Console.Write(consoleResponse);*/

            pago.codigoFactura = string.IsNullOrEmpty(HttpContext.Request.Form["codigoFactura"]) ? "" : HttpContext.Request.Form["codigoFactura"].ToString();
            pago.valorFactura = string.IsNullOrEmpty(HttpContext.Request.Form["valorFactura"]) ? "" : HttpContext.Request.Form["valorFactura"].ToString();
            pago.transaccionAprobada = string.IsNullOrEmpty(HttpContext.Request.Form["transaccionAprobada"]) ? "" : HttpContext.Request.Form["transaccionAprobada"].ToString();
            pago.codigoAutorizacion = string.IsNullOrEmpty(HttpContext.Request.Form["codigoAutorizacion"]) ? "" : HttpContext.Request.Form["codigoAutorizacion"].ToString();
            pago.firmaTuCompra = string.IsNullOrEmpty(HttpContext.Request.Form["firmaTuCompra"]) ? "" : HttpContext.Request.Form["firmaTuCompra"].ToString();
            pago.numeroTransaccion = string.IsNullOrEmpty(HttpContext.Request.Form["numeroTransaccion"]) ? "" : HttpContext.Request.Form["numeroTransaccion"].ToString();
            pago.metodoPago = string.IsNullOrEmpty(HttpContext.Request.Form["metodoPago"]) ? "" : HttpContext.Request.Form["metodoPago"].ToString();
            pago.nombreMetodo = string.IsNullOrEmpty(HttpContext.Request.Form["nombreMetodo"]) ? "" : HttpContext.Request.Form["nombreMetodo"].ToString();
            pago.banco = string.IsNullOrEmpty(HttpContext.Request.Form["banco"]) ? "" : HttpContext.Request.Form["banco"].ToString();
            pago.valorBase = string.IsNullOrEmpty(HttpContext.Request.Form["valorBase"]) ? "" : HttpContext.Request.Form["valorBase"].ToString();
            pago.valorIva = string.IsNullOrEmpty(HttpContext.Request.Form["valorIva"]) ? "" : HttpContext.Request.Form["valorIva"].ToString();
            pago.valorReteiva = string.IsNullOrEmpty(HttpContext.Request.Form["valorReteiva"]) ? "" : HttpContext.Request.Form["valorReteiva"].ToString();
            pago.valorReteica = string.IsNullOrEmpty(HttpContext.Request.Form["valorReteica"]) ? "" : HttpContext.Request.Form["valorReteica"].ToString();
            pago.valorRetefuente = string.IsNullOrEmpty(HttpContext.Request.Form["valorRetefuente"]) ? "" : HttpContext.Request.Form["valorRetefuente"].ToString();
            pago.descripcion = string.IsNullOrEmpty(HttpContext.Request.Form["descripcion"]) ? "" : HttpContext.Request.Form["descripcion"].ToString();
            pago.descripcion2 = string.IsNullOrEmpty(HttpContext.Request.Form["descripcion2"]) ? "" : HttpContext.Request.Form["descripcion2"].ToString();
            pago.detalle = string.IsNullOrEmpty(HttpContext.Request.Form["detalle"]) ? "" : HttpContext.Request.Form["detalle"].ToString();
            pago.fechaPago = string.IsNullOrEmpty(HttpContext.Request.Form["fechaPago"]) ? "" : HttpContext.Request.Form["fechaPago"].ToString(); ;
            pago.numeroTarjeta = string.IsNullOrEmpty(HttpContext.Request.Form["numeroTarjeta"]) ? "" : HttpContext.Request.Form["numeroTarjeta"].ToString();
            pago.numeroCuotas = string.IsNullOrEmpty(HttpContext.Request.Form["numeroCuotas"]) ? "" : HttpContext.Request.Form["numeroCuotas"].ToString();
            pago.correoComprador = string.IsNullOrEmpty(HttpContext.Request.Form["correoComprador"]) ? "" : HttpContext.Request.Form["correoComprador"].ToString();
            pago.nombreComprador = string.IsNullOrEmpty(HttpContext.Request.Form["nombreComprado"]) ? "" : HttpContext.Request.Form["nombreComprado"].ToString();
            pago.apellidoComprador = string.IsNullOrEmpty(HttpContext.Request.Form["apellidoComprador"]) ? "" : HttpContext.Request.Form["apellidoComprador"].ToString();
            pago.documentoComprador = string.IsNullOrEmpty(HttpContext.Request.Form["documentoComprador"]) ? "" : HttpContext.Request.Form["documentoComprador"].ToString();
            pago.telefonoComprador = string.IsNullOrEmpty(HttpContext.Request.Form["telefonoComprador"]) ? "" : HttpContext.Request.Form["telefonoComprador"].ToString();
            pago.direccionComprador = string.IsNullOrEmpty(HttpContext.Request.Form["direccionComprador"]) ? "" : HttpContext.Request.Form["direccionComprador"].ToString();
            pago.ipComprador = string.IsNullOrEmpty(HttpContext.Request.Form["ipComprador"]) ? "" : HttpContext.Request.Form["ipComprador"].ToString();
            pago.ciudadComprador = string.IsNullOrEmpty(HttpContext.Request.Form["ciudadComprador"]) ? "" : HttpContext.Request.Form["ciudadComprador"].ToString();
            pago.paisComprador = string.IsNullOrEmpty(HttpContext.Request.Form["paisComprador"]) ? "" : HttpContext.Request.Form["paisComprador"].ToString();
            pago.estadoPago = string.IsNullOrEmpty(HttpContext.Request.Form["estadoPago"]) ? "" : HttpContext.Request.Form["estadoPago"].ToString();
            pago.razonRechazo = string.IsNullOrEmpty(HttpContext.Request.Form["razonRechazo"]) ? "" : HttpContext.Request.Form["razonRechazo"].ToString();
            pago.tipoTarjeta = string.IsNullOrEmpty(HttpContext.Request.Form["tipoTarjeta"]) ? "" : HttpContext.Request.Form["tipoTarjeta"].ToString();
            pago.categoriatarjeta = string.IsNullOrEmpty(HttpContext.Request.Form["categoriatarjeta"]) ? "" : HttpContext.Request.Form["categoriatarjeta"].ToString();
            pago.paisemisor = string.IsNullOrEmpty(HttpContext.Request.Form["paisemisor"]) ? "" : HttpContext.Request.Form["paisemisor"].ToString();
            pago.telefonoBancoemisor = string.IsNullOrEmpty(HttpContext.Request.Form["telefonoBancoemisor"]) ? "" : HttpContext.Request.Form["telefonoBancoemisor"].ToString();
            pago.valorComisionbancaria = string.IsNullOrEmpty(HttpContext.Request.Form["valorComisionBancaria"]) ? "" : HttpContext.Request.Form["valorComisionBancaria"].ToString();
            pago.valorDepositoBanco = string.IsNullOrEmpty(HttpContext.Request.Form["valorDepositoBanco"]) ? "" : HttpContext.Request.Form["valorDepositoBanco"].ToString();
            pago.bancoRecaudador = string.IsNullOrEmpty(HttpContext.Request.Form["bancoRecaudador"]) ? "" : HttpContext.Request.Form["bancoRecaudador"].ToString();
            pago.horaPago = string.IsNullOrEmpty(HttpContext.Request.Form["horaPago"]) ? "" : HttpContext.Request.Form["horaPago"].ToString(); ;
            pago.caja = string.IsNullOrEmpty(HttpContext.Request.Form["caja"]) ? "" : HttpContext.Request.Form["caja"].ToString();
            pago.formaPago = string.IsNullOrEmpty(HttpContext.Request.Form["formaPago"]) ? "" : HttpContext.Request.Form["formaPago"].ToString();
            pago.oficina = string.IsNullOrEmpty(HttpContext.Request.Form["oficina"]) ? "" : HttpContext.Request.Form["oficina"].ToString();
            pago.cuentaBanco = string.IsNullOrEmpty(HttpContext.Request.Form["cuentaBanco"]) ? "" : HttpContext.Request.Form["cuentaBanco"].ToString();
            pago.jornada = string.IsNullOrEmpty(HttpContext.Request.Form["jornada"]) ? "" : HttpContext.Request.Form["jornada"].ToString();
            pago.tipoRegistro = string.IsNullOrEmpty(HttpContext.Request.Form["tipoRegistro"]) ? "" : HttpContext.Request.Form["tipoRegistro"].ToString();
            pago.operador = string.IsNullOrEmpty(HttpContext.Request.Form["operador"]) ? "" : HttpContext.Request.Form["operador"].ToString();
            pago.tipoTransaccion = string.IsNullOrEmpty(HttpContext.Request.Form["tipoTransaccion"]) ? "" : HttpContext.Request.Form["tipoTransaccion"].ToString();
            pago.descripcionTipoTransaccion = string.IsNullOrEmpty(HttpContext.Request.Form["descripcionTipoTransaccion"]) ? "" : HttpContext.Request.Form["descripcionTipoTransaccion"].ToString();
            pago.fechaSaldoAplicado = string.IsNullOrEmpty(HttpContext.Request.Form["fechaSaldoAplicado"]) ? "" : HttpContext.Request.Form["fechaSaldoAplicado"].ToString();
            pago.codBancoRecaudador = string.IsNullOrEmpty(HttpContext.Request.Form["codBancoRecaudador"]) ? "" : HttpContext.Request.Form["codBancoRecaudador"].ToString();
            pago.celular = string.IsNullOrEmpty(HttpContext.Request.Form["celular"]) ? "" : HttpContext.Request.Form["celular"].ToString();
            pago.terminaltucompra = string.IsNullOrEmpty(HttpContext.Request.Form["terminaltucompra"]) ? "" : HttpContext.Request.Form["terminaltucompra"].ToString();
            pago.nro_convenio = string.IsNullOrEmpty(HttpContext.Request.Form["nro_convenio"]) ? "" : HttpContext.Request.Form["nro_convenio"].ToString();
            pago.serialunicotransaccion = string.IsNullOrEmpty(HttpContext.Request.Form["serialunicotransaccion"]) ? "" : HttpContext.Request.Form["serialunicotransaccion"].ToString();
            pago.validarorcorresponsalath = string.IsNullOrEmpty(HttpContext.Request.Form["validarorcorresponsalath"]) ? "" : HttpContext.Request.Form["validarorcorresponsalath"].ToString();

            pago.celular_nro_convenio = string.IsNullOrEmpty(HttpContext.Request.Form["celular&nro_convenio"]) ? "" : HttpContext.Request.Form["celular&nro_convenio"].ToString();
            pago.celular_terminaltucompra = string.IsNullOrEmpty(HttpContext.Request.Form["celular&terminaltucompra"]) ? "" : HttpContext.Request.Form["celular&terminaltucompra"].ToString();

            pago.compania = Constants.GuuidElectro;
            pago.fechaDeRegistro = String.Format("{0:yyyy-MM-dd HH:mm:ss}", DateTime.Now);
            pago.registradoEnSiicon = false;
            pago.fechaRegistroSiicon = "";

            _context.PagoTuCompra.Add(pago);
            await _context.SaveChangesAsync();
            if (RegistrarTransaccion(pago).Result.Value == "HTTP 200 OK")
            {
                pago.fechaRegistroSiicon = String.Format("{0:yyyy-MM-dd HH:mm:ss}", DateTime.Now);
                pago.registradoEnSiicon = true;
                await _context.SaveChangesAsync();
            }
            return "HTTP 200 OK";
        }

        public async Task<ActionResult<string>> RegistrarTransaccion(PagoTuCompra pago)
        {
            string result = service.RegistrarPagoTuCompraAsync(pago.codigoFactura, pago.valorFactura, pago.transaccionAprobada,
                pago.codigoAutorizacion, pago.firmaTuCompra, pago.numeroTransaccion, pago.metodoPago, pago.nombreMetodo, pago.banco,
                pago.valorBase, pago.valorIva, pago.valorReteiva, pago.valorReteica, pago.valorRetefuente, pago.descripcion,
                pago.descripcion2, pago.detalle, pago.fechaPago, pago.numeroTarjeta, pago.numeroCuotas, pago.correoComprador,
                pago.nombreComprador, pago.apellidoComprador, pago.documentoComprador, pago.telefonoComprador, pago.direccionComprador,
                pago.ipComprador, pago.ciudadComprador, pago.paisComprador, pago.estadoPago, pago.razonRechazo, pago.tipoTarjeta,
                pago.categoriatarjeta, pago.paisemisor, pago.telefonoBancoemisor, pago.valorComisionbancaria, pago.valorDepositoBanco,
                pago.bancoRecaudador, pago.horaPago, pago.caja, pago.formaPago, pago.oficina, pago.cuentaBanco, pago.jornada,
                pago.tipoRegistro, pago.operador, pago.tipoTransaccion, pago.descripcionTipoTransaccion, pago.fechaSaldoAplicado,
                pago.codBancoRecaudador, pago.celular_terminaltucompra, pago.celular_nro_convenio, pago.celular, pago.terminaltucompra,
                pago.nro_convenio, pago.serialunicotransaccion, pago.validarorcorresponsalath, pago.compania).Result;
            return "HTTP 200 OK";
        }


    }
}
