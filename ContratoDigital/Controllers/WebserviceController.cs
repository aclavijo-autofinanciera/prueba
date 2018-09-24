using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using ContratoDigital.Data;
using ContratoDigital.Models;
using Microsoft.AspNetCore.Hosting;
using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;
using Microsoft.EntityFrameworkCore;
using SiiconWebService;

namespace ContratoDigital.Controllers
{
    [Route("api/Freyja")]
    [ApiController]
    public class WebserviceController : ControllerBase
    {
        ServiceClient service = new ServiceClient();
        private readonly ContratoDigitalContext _context;
        private readonly IEmailConfiguration _emailConfiguration;
        private readonly IHostingEnvironment _hostingEnvironment;
        private readonly Utilities _utilities;
        public WebserviceController(ContratoDigitalContext context, IEmailConfiguration emailConfiguration, IHostingEnvironment hostingEnvironment, Utilities utilites)
        {
            _context = context;
            _emailConfiguration = emailConfiguration;
            _utilities = utilites;
            _hostingEnvironment = hostingEnvironment;
        }


        [HttpGet("GetCompanias")]
        [Route("api/Freyja/GetCompanias")]
        public async Task<ActionResult<string>> GetCompanias()
        {
            return await service.SelecccionarCompañiasAsync();
        }

        [HttpGet("GetAgencias/{asesor}/{compania}")]
        [Route("api/Freyja/GetAgencias")]
        public async Task<ActionResult<string>> GetAgencias(string asesor, string compania)
        {
            return await service.SelecccionarTerceroAgenciasAsync(asesor, compania);
            //return await service.SelecccionarAgenciasAsync();
        }

        [HttpGet("GetMarcas")]
        [Route("api/Freyja/GetMarcas")]
        public async Task<ActionResult<string>> GetMarcas()
        {
            return await service.SelecccionarMarcasAsync();
        }

        [HttpGet("GetMarcas/{compania}/{tipobien}")]
        [Route("api/Freyja/GetMarcas")]
        public async Task<ActionResult<string>> GetMarcas(string compania, int tipobien)
        {
            return await service.SelecccionarMarcasTipoBienAsync(compania, tipobien);
        }

        [HttpGet("GetTipoBien/{compania}")]
        [Route("api/Freyja/GetTipoBien")]
        public async Task<ActionResult<string>> GetTipoBien(string compania)
        {
            //compania = compania.Equals("auto") ? Constants.GuuidAuto : Constants.GuuidElectro;
            return await service.SelecccionarTiposBienesCompañiaAsync(compania);
        }

        [HttpGet("GetTipoBien/{compania}/{agencia}")]
        [Route("api/Freyja/GetTipoBien")]
        public async Task<ActionResult<string>> GetTipoBien(string compania, int agencia)
        {
            //compania = compania.Equals("auto") ? Constants.GuuidAuto : Constants.GuuidElectro;
            return await service.SelecccionarTiposBienesCompañiaAgenciaAsync(compania,agencia);
        }

        [HttpGet("GetPorcentajeInscripcion/{compania}")]
        [Route("api/Freyja/GetPorcentajeInscripcion")]
        public async Task<ActionResult<string>> GetPorcentajeInscripcion(string compania)
        {
            //compania = compania.Equals("auto") ? Constants.GuuidAuto : Constants.GuuidElectro;
            return await service.SelecccionarPorcInscripcionCompañiaAsync(compania);
        }

        [HttpGet("GetPorcentajeAdministracion/{compania}")]
        [Route("api/Freyja/GetPorcentajeAdministracion")]
        public async Task<ActionResult<string>> GetPorcentajeAdministracion(string compania)
        {
            //compania = compania.Equals("auto") ? Constants.GuuidAuto : Constants.GuuidElectro;
            return await service.SelecccionarPorcAdministracionCompañiaAsync(compania);
        }

        [HttpGet("GetBienes/{compania}/{idTipoBien}/{idMarca}")]
        [Route("api/Freyja/GetBienes")]
        public async Task<ActionResult<string>> GetBienes(string compania, int idTipoBien, int idMarca)
        {
            //compania = compania.Equals("auto") ? Constants.GuuidAuto : Constants.GuuidElectro;
            return await service.SelecccionarBienesCompañiaAsync(compania, idTipoBien, idMarca);
        }

        [HttpGet("GetBienesParametros/{compania}/{idTipoBien}/{valorBien}/{tipoBienParametroId}")]
        [Route("api/Freyja/GetBienesParametros")]
        public async Task<ActionResult<string>> GetBienesParametros(string compania, int idTipoBien, int valorBien, int tipoBienParametroId)
        {
            //compania = compania.Equals("auto") ? Constants.GuuidAuto : Constants.GuuidElectro;
            return await service.SeleccionarBienParametrosAsync(compania, idTipoBien, valorBien, tipoBienParametroId);
        }

        [HttpGet("GenerarReferenciaPago/{compania}/{documento}/{valorPagar}/{contratoTiendaID}")]
        [Route("/api/Freyja/GenerarReferenciaPago")]
        public async Task<ActionResult<string>> GenerarReferenciaPago(string compania, string documento, double valorPagar, int contratoTiendaID)
        {            
            try
            {
                return await service.GenerarReferenciaPagoAsync(compania, documento, (long)valorPagar, contratoTiendaID, Constants.GuuidUsuarioSiicon);
            }
            catch (Exception ex)
            {
                var perol = ex.Message;
                throw;
            }
            
        }

        [HttpGet("GetAsesorId/{cedula}")]
        [Route("api/Freyja/GetAsesorId")]
        public async Task<ActionResult<string>> GetAsesorId(string cedula)
        {
            long.TryParse(s: cedula, result: out long documento);
            return await service.SelecccionarAsesorAsync(documento);
        }

        [HttpGet("GetSiiconUserId/{cedula}")]
        [Route("api/Freyja/GetSiiconUserId")]
        public async Task<ActionResult<string>> GetSiiconUserId(string cedula)
        {
            return await service.SelecccionarTerceroAsync(cedula);
        }

        [HttpGet("GetTipoMedio")]
        [Route("api/Freyja/GetTipoMedio")]
        public async Task<ActionResult<string>> GetTipoMedio()
        {
            return await service.SelecccionarTiposMediosAsync();
        }

        [HttpGet("GetMedioAgencia/{compania}/{tipoMedioId}/{codAgencia}")]
        [Route("api/Freyja/GetMedioAgencia")]
        public async Task<ActionResult<string>> GetMedioAgencia(string compania, int tipoMedioId, int codAgencia)
        {
            return await service.SelecccionarMediosAgenciaAsync(compania, tipoMedioId, codAgencia);
        }
        
        /// <summary>
        /// Devuelve una clase con los 4 estados posibles de un contrato.
        /// </summary>
        /// <param name="idcontrato">el identificativo único correlativo del contrato</param>
        /// <returns>Una clase serializada con los valores de ConfirmarContrato</returns>
        [HttpGet("GetStatusContrato/{idContrato}")]
        [Route("api/Freyja/GetStatusContrato")]
        public ActionResult<ConfirmacionContrato> GetStatusContrato(int idcontrato)
        {
            try
            {
                ConfirmacionContrato contrato = new ConfirmacionContrato();
                ConfirmacionContrato contratoDummy = _context.ConfirmacionContratos.SingleOrDefault(x => x.IdContrato == idcontrato);
                contrato.Id = contratoDummy.Id;
                contrato.IdContrato = contratoDummy.IdContrato;
                contrato.IsAccepted = contratoDummy.IsAccepted;
                contrato.IsIdUploaded = contratoDummy.IsIdUploaded;
                contrato.IsPaid = contratoDummy.IsPaid;
                contrato.IsVerified = contratoDummy.IsVerified;
                contrato.FechaAceptacion = contratoDummy.FechaAceptacion;
                contrato.FechaPago = contratoDummy.FechaPago;
                contrato.FechaVerificacion = contratoDummy.FechaVerificacion;
                return contrato;
            }
            catch (Exception ex)
            {
                var value = ex.Message;
                throw;
            }
            
        }

        /// <summary>
        /// Devuelve los base 64 con el reverso y el anverso de la cédula.
        /// </summary>
        /// <param name="idContrato">El Id del contrato</param>
        /// <returns>Un modelo de clase documentode identidad.</returns>
        [HttpGet("GetDocumentoIdentidad/{idContrato}")]
        [Route("api/Freyja/GetDocumentoIdentidad")]
        public ActionResult<DocumentoIdentidad> GetDocumentoIdentidad(int idContrato)
        {
            try
            {
                DocumentoIdentidad documento = new DocumentoIdentidad();
                DocumentoIdentidad documentoDummy = _context.DocumentoIdentidad.SingleOrDefault(x => x.IdContrato == idContrato);
                documento.Anverso = documentoDummy.Anverso;
                documento.Reverso = documentoDummy.Reverso;
                documento.FechaAdjunto = documentoDummy.FechaAdjunto;
                return documento;
            }
            catch (Exception)
            {                
                throw;
            }
        }


        [HttpGet("GetCiudades/{id}")]
        [Route("api/Freyja/GetCiudades")]
        public ActionResult<List<Ciudades>> GetCiudades(int id)
        {
            var ciudades = _context.Ciudades.Where(x => x.IdDepartamentoSiicon == id).ToList(); //FromSql(sql : $"SELECT * FROM CIUDADES WHERE IdDepartamentoSiicon = {id}").ToList();
            return ciudades;
        }

        /// <summary>
        /// Registra un pago realizado en el sistema
        /// </summary>
        /// <param name="_referencia">Referencia de pago asignada al contrato</param>
        /// <param name="_contrato">Id de contrato del cual se ha pagado la referencia</param>
        /// <returns></returns>
        [HttpGet("RegistrarPago/{_referencia}/{_contrato}/{_valorpago}")]
        [Route("api/Freyja/RegistrarPago")]
        public async Task<ActionResult<string>> RegistrarPago(string _referencia, string _contrato, string _valorpago)
        {
            int numerocontrato = 0;
            int.TryParse(_contrato, out numerocontrato);
            double valorPago = 0;
            double.TryParse(_valorpago, out valorPago);
            if(String.IsNullOrEmpty(_referencia) || numerocontrato <= 0 || valorPago <= 0)
            {
                return "HTTP 501: Error de conversión";
            }
            Contrato contrato = await _context.Contratos.SingleOrDefaultAsync(x => x.IdContrato == numerocontrato);
            if(contrato == null)
            {
                return "HTTP 404: Contrato no conseguido";
            }
            if(contrato.ConfirmacionContratos.ReferenciaPago != _referencia)
            {
                return "HTTP 404: Referencia no conseguida";
            }
            if(valorPago >= contrato.valor_primer_pago)
            {
                contrato.ConfirmacionContratos.IsPaid = true;
                contrato.ConfirmacionContratos.FechaPago = DateTime.Now;
                await _context.SaveChangesAsync();
                return "HTTP 200: OK";
            }
            else
            {
                EmailService emailService = new EmailService(_emailConfiguration);
                EmailMessage emailMessage = new EmailMessage();
                emailMessage.FromAddresses = new List<EmailAddress>()
                {
                new EmailAddress{Name = "Mi Contrato", Address="tienda@autofinanciera.com.co"}
                };
                emailMessage.ToAddresses = new List<EmailAddress>()
                {
                new EmailAddress{Name = contrato.primer_nombre + " " + contrato.segundo_nombre + " " + contrato.primer_apellido + " " + contrato.segundo_apellido, Address=contrato.email_suscriptor}
                };
                string srcTemplate = "";
                if (contrato.id_compania.Equals(Constants.GuuidElectro))
                {
                    emailMessage.Subject = "[ELECTROPLAN] Mi Contrato - Aceptación condiciones del contrato";
                    switch (contrato.marca_exclusiva_bien)
                    {
                        case "YAMAHA":
                            srcTemplate = _hostingEnvironment.WebRootPath + "/emailtemplates/PagoParcial/PagoParcialMotoMas.html";
                            break;
                        case "AUTECO - BAJAJ":
                            srcTemplate = _hostingEnvironment.WebRootPath + "/emailtemplates/PagoParcial/PagoParcialBajaj.html";
                            break;
                        case "AUTECO - KAWASAKI":
                            srcTemplate = _hostingEnvironment.WebRootPath + "/emailtemplates/PagoParcial/PagoParcialKawasaki.html";
                            break;
                        case "AUTECO - KTM":
                            srcTemplate = _hostingEnvironment.WebRootPath + "/emailtemplates/PagoParcial/PagoParcialKtm.html";
                            break;
                        default:
                            srcTemplate = _hostingEnvironment.WebRootPath + "/emailtemplates/PagoParcial/PagoParcialElectroplan.html";
                            break;
                    }
                }
                else
                {
                    emailMessage.Subject = "[AUTOFINANCIERA] Mi Contrato - Aceptación condiciones del contrato";
                    switch (contrato.marca_exclusiva_bien)
                    {
                        case "KIA":
                            srcTemplate = _hostingEnvironment.WebRootPath + "/emailtemplates/PagoParcial/PagoParcialKiaPlan.html";
                            break;
                        case "HYUNDAI":
                            srcTemplate = _hostingEnvironment.WebRootPath + "/emailtemplates/PagoParcial/PagoParcialAutokoreana.html";
                            break;
                        case "VOLKSWAGEN":
                            srcTemplate = _hostingEnvironment.WebRootPath + "/emailtemplates/PagoParcial/PagoParcialAutofinanciera.html";
                            break;
                        default:
                            srcTemplate = _hostingEnvironment.WebRootPath + "/emailtemplates/PagoParcial/PagoParcialAutofinanciera.html";
                            break;
                    }
                }
                emailMessage.Content = String.Format(_utilities.GetTemplate(srcTemplate),
                    ""
                    );
                emailService.Send(emailMessage);
            }
            return "HTTP 502: Pago Parcial";
        }

        public async Task<ActionResult<string>> RegistrarContratos()
        {
            return "HTTP 200: OK";
        }
        
        /*
        [HttpGet("RegistrarPago")]
        public async Task<ActionResult<string>> CreatePersonaSiicon(PersonaSiicon persona)
        {

            Console.WriteLine(persona.TipoPersonaId + ", " + persona.TipoIdentificacionRepreLegalId + ", " + persona.NumeroIdentificacionRepreLegal + ", " +
                persona.CiudadConstitucionId + ", " + persona.FechaConstitucion + ", " + persona.PrimerNombre + ", " + persona.SegundoNombre + ", " +
                persona.PrimerApellido + ", " + persona.SegundoApellido + ", " + persona.RazonSocial + ", " + persona.TipoDocumentoIdentidadId + ", " +
                persona.NumeroDocumento + ", " + persona.DigitoVerificacion + ", " + persona.CiudadExpedicionId + ", " + persona.FechaNacimiento + ", " +
                persona.CiudadNacimientoId + ", " + persona.SexoId + ", " + persona.EstadoCivilId + ", " + persona.Email + ", " + persona.DireccionNotifiacion + ", " +
                persona.BarrioNotifiacion + ", " + persona.TelefonoNotifiacion + ", " + persona.CelularNotificacion + ", " + persona.DepartamentoNotificacionId + ", " +
                persona.CiudadNotificacionId + ", " + persona.EmpresaLabora + ", " + persona.CargoLabora + ", " + persona.DireccionLabora + ", " +
                persona.BarrioLabora + ", " + persona.TelefonoLabora + ", " + persona.CelularOficina + ", " + persona.DepartamentoLaboraId + ", " +
                persona.CiudadLaboraId + ", " + persona.IngresoMensual + ", " + persona.EgresoMensual + ", " + persona.Profesion + ", " + persona.TerceroId);

            return ""; /*await service.CrearPersonaAsync(persona.TipoPersonaId, persona.TipoIdentificacionRepreLegalId,persona.NumeroIdentificacionRepreLegal,
                persona.CiudadConstitucionId, persona.FechaConstitucion, persona.PrimerNombre, persona.SegundoNombre, persona.PrimerApellido, persona.SegundoApellido,
                persona.RazonSocial, persona.TipoDocumentoIdentidadId, persona.NumeroDocumento, persona.DigitoVerificacion, persona.CiudadExpedicionId, persona.FechaNacimiento,
                persona.CiudadNacimientoId, persona.SexoId, persona.EstadoCivilId, persona.Email, persona.DireccionNotifiacion, persona.BarrioNotifiacion, persona.TelefonoNotifiacion,
                persona.CelularNotificacion, persona.DepartamentoNotificacionId, persona.CiudadNotificacionId, persona.EmpresaLabora, persona.CargoLabora,
                persona.DireccionLabora,persona.BarrioLabora, persona.TelefonoLabora, persona.CelularOficina, persona.DepartamentoLaboraId, persona.CiudadLaboraId,
                persona.IngresoMensual, persona.EgresoMensual, persona.Profesion, persona.TerceroId);*//*
        } */
        

    }
}