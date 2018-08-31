using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using ContratoDigital.Data;
using ContratoDigital.Models;
using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;
using SiiconWebService;

namespace ContratoDigital.Controllers
{
    [Route("api/Freyja")]
    [ApiController]
    public class WebserviceController : ControllerBase
    {
        ServiceClient service = new ServiceClient();
        private readonly ContratoDigitalContext _context;
        public WebserviceController(ContratoDigitalContext context)
        {
            _context = context;
        }


        [HttpGet("GetCompanias")]
        [Route("api/Freyja/GetCompanias")]
        public async Task<ActionResult<string>> GetCompanias()
        {
            return await service.SelecccionarCompañiasAsync();
        }

        [HttpGet("GetAgencias")]
        [Route("api/Freyja/GetAgencias")]
        public async Task<ActionResult<string>> GetAgencias()
        {
            return await service.SelecccionarAgenciasAsync();
        }

        [HttpGet("GetMarcas")]
        [Route("api/Freyja/GetMarcas")]
        public async Task<ActionResult<string>> GetMarcas()
        {
            return await service.SelecccionarMarcasAsync();
        }

        [HttpGet("GetTipoBien/{compania}")]
        [Route("api/Freyja/GetTipoBien")]
        public async Task<ActionResult<string>> GetTipoBien(string compania)
        {
            //compania = compania.Equals("auto") ? Constants.GuuidAuto : Constants.GuuidElectro;
            return await service.SelecccionarTiposBienesCompañiaAsync(compania);
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
        
        public async Task<ActionResult<string>> CreatePersonaSiicon(PersonaSiicon persona)
        {

            return await service.CrearPersonaAsync(persona.TipoPersonaId, persona.TipoIdentificacionRepreLegalId,persona.NumeroIdentificacionRepreLegal,
                persona.CiudadConstitucionId, persona.FechaConstitucion, persona.PrimerNombre, persona.SegundoNombre, persona.PrimerApellido, persona.SegundoApellido,
                persona.RazonSocial, persona.TipoDocumentoIdentidadId, persona.NumeroDocumento, persona.DigitoVerificacion, persona.CiudadExpedicionId, persona.FechaNacimiento,
                persona.CiudadNacimientoId, persona.SexoId, persona.EstadoCivilId, persona.Email, persona.DireccionNotifiacion, persona.BarrioNotifiacion, persona.TelefonoNotifiacion,
                persona.CelularNotificacion, persona.DepartamentoNotificacionId, persona.CiudadNotificacionId, persona.EmpresaLabora, persona.CargoLabora,
                persona.DireccionLabora,persona.BarrioLabora, persona.TelefonoLabora, persona.CelularOficina, persona.DepartamentoLaboraId, persona.CiudadLaboraId,
                persona.IngresoMensual, persona.EgresoMensual, persona.Profesion, persona.TerceroId);
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

        

    }
}