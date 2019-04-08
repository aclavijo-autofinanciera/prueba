using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Threading.Tasks;
using ContratoDigital.Areas.Identity.Data;
using ContratoDigital.Data;
using ContratoDigital.Models;
using iText.Forms;
using iText.Forms.Fields;
using iText.Kernel.Pdf;
using Microsoft.AspNetCore.Authorization;
using Microsoft.AspNetCore.Hosting;
using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Identity;
using Microsoft.AspNetCore.Mvc;
using Microsoft.EntityFrameworkCore;
using Newtonsoft.Json;
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
        private readonly UserManager<ContratoDigitalUser> _userManager;
        private readonly ICanonicalUrlConfiguration _canonicalUrlConfiguration;
        public WebserviceController(ContratoDigitalContext context, IEmailConfiguration emailConfiguration, IHostingEnvironment hostingEnvironment, Utilities utilites, UserManager<ContratoDigitalUser> userManager, ICanonicalUrlConfiguration canonicalUrlConfiguration)
        {
            _context = context;
            _emailConfiguration = emailConfiguration;
            _utilities = utilites;
            _hostingEnvironment = hostingEnvironment;
            _userManager = userManager;
            _canonicalUrlConfiguration = canonicalUrlConfiguration;
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
            return await service.SelecccionarTiposBienesCompañiaAgenciaAsync(compania, agencia);
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

        [HttpGet("GetAsesoresPorAgencia/{idAgencia}")]
        public ActionResult<List<ContratoDigitalUser>> GetAsesoresPorAgencia(string idAgencia)
        {
            var usuarios = _userManager.Users.Where(x => x.Agencia == int.Parse(idAgencia)).ToList();
            return usuarios;
        }

        [HttpGet("GetAsesoresPorAgenciaSiicon/{companiaId}/{codAgencia}")]
        [Route("api/Freyja/GetAsesoresPorAgenciaSiicon")]
        public async Task<ActionResult<string>> GetAsesoresPorAgenciaSiicon(string companiaId,int codAgencia)
        {
            return await service.SeleccionarAsesoresAgenciaAsync(companiaId, codAgencia);
        }

        [HttpGet("GetNombreAsesor/{companiaId}/{codAgencia}/{asesor}")]
        [Route("api/Freyja/GetNombreAsesor")]
        public async Task<ActionResult<string>> GetNombreAsesor(string companiaId, int codAgencia, int asesor)
        {
            string result = service.SeleccionarAsesoresAgenciaAsync(companiaId, codAgencia).Result;
            string nombreAsesor = "Asesor no registrado";
            if (!string.IsNullOrEmpty(result))
            {
                dynamic json = JsonConvert.DeserializeObject<dynamic>(result);
                foreach (var item in json)
                {
                    if (item.CodAsesor == asesor)
                    {
                        nombreAsesor = item.Asesor.ToString();
                        break;
                    }
                }
            }
            return nombreAsesor;
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
                contrato.IsRegistered = contratoDummy.IsRegistered;
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
        [HttpGet("RegistrarPago/{_referencia}/{_contrato}/{_valorpago}/{_fechaPago}")]
        [Route("api/Freyja/RegistrarPago")]
        public async Task<ActionResult<string>> RegistrarPago(string _referencia, string _contrato, string _valorpago, string _fechaPago)
        {
            int numerocontrato = 0;
            int.TryParse(_contrato, out numerocontrato);
            double valorPago = 0;
            double.TryParse(_valorpago, out valorPago);
            if (String.IsNullOrEmpty(_referencia) || numerocontrato <= 0 || valorPago <= 0)
            {
                return "HTTP 501: Error de conversión";
            }
            Contrato contrato = await _context.Contratos.SingleOrDefaultAsync(x => x.IdContrato == numerocontrato);
            if (contrato == null)
            {
                return "HTTP 404: Contrato no conseguido";
            }

            RecibosPago recibos = await _context.RecibosPago.SingleOrDefaultAsync(x => x.ReferenciaSiicon == _referencia);
            if (recibos == null)
            {
                return "HTTP 404: Referencia no conseguida";
            }
            
            Pagos pago = new Pagos()
            {
                Monto = Double.Parse(_valorpago),
                IdContrato = contrato.IdContrato,
                FechaPago = Convert.ToDateTime(_fechaPago),
                ReferenciaSiicon = _referencia
            };

            await _context.Pagos.AddAsync(pago);
            await _context.SaveChangesAsync();

            List<Pagos> pagos = _context.Pagos.Where(x => x.IdContrato == contrato.IdContrato).ToList();
            double total = 0;
            foreach (var item in pagos)
            {
                total += item.Monto;
            }
            List<PagoManual> pagoManual = _context.PagoManual.Where(x => x.IdContrato == contrato.IdContrato).ToList();
            foreach (var item in pagoManual)
            {
                total += item.Monto;
            }
            if (total >= contrato.valor_primer_pago)
            {
                contrato.ConfirmacionContratos.IsPaid = true;
                contrato.ConfirmacionContratos.FechaPago = DateTime.Now;
                await _context.SaveChangesAsync();
                return "HTTP 200: OK";
            }
            
            return "HTTP 200: Pago Parcial";
        }

        /// <summary>
        /// Registra los contratos en el Siicon
        /// </summary>
        /// <returns>El resultado de de la acción.</returns>
        [HttpGet("RegistrarContratos")]
        [Route("api/Freyja/RegistrarContratos")]
        public async Task<ActionResult<string>> RegistrarContratos()
        {
            List<Contrato> contratos = await _context.Contratos.Where(x =>
            x.ConfirmacionContratos.IsAccepted == true &&
            x.ConfirmacionContratos.IsIdUploaded == true &&
            x.ConfirmacionContratos.IsPaid == true &&
            x.ConfirmacionContratos.IsRegistered == false &&
            x.ConfirmacionContratos.IsRegisteredCommercial == true &&
            x.ConfirmacionContratos.Asesor > 0).ToListAsync();

            foreach (var item in contratos)
            {
                Console.WriteLine("[CONTRATOS]: " + item.IdContrato + " | Pagado: " + item.ConfirmacionContratos.IsPaid);
            }

            //string result = "";
            Status status = new Status(_context);
            Utilities utilities = new Utilities(_context, _userManager);

            foreach (var item in contratos)
            {

                // Registro de la persona
                var user = _userManager.Users.SingleOrDefault(x => x.Id == item.asesor_comercial);
                PersonaSiicon persona = new PersonaSiicon();
                persona.PrimerNombre = item.primer_nombre;
                persona.SegundoNombre = item.segundo_nombre;
                persona.PrimerApellido = item.primer_apellido;
                persona.SegundoApellido = item.segundo_apellido;
                persona.TipoDocumentoIdentidad = status.GetStatusSiiconId(int.Parse(item.tipo_documento_identidad_suscriptor));
                persona.NumeroDocumento = item.documento_identidad_suscriptor.ToString();
                persona.CiudadExpedicionId = utilities.PadWithZeroes(status.GetCiudadSiiconId(int.Parse(item.procedencia_documento_identidad_suscriptor)).ToString(), 5);
                persona.FechaNacimiento = String.Format("{0:MM'/'dd'/'yyyy}", item.fecha_nacimiento_suscriptor);
                persona.CiudadNacimientoID = utilities.PadWithZeroes(status.GetCiudadSiiconId(int.Parse(item.ciudad_suscriptor)).ToString(), 5);
                persona.SexoId = status.GetStatusSiiconId(int.Parse(item.sexo_suscriptor));
                persona.EstadoCivilId = status.GetStatusSiiconId(int.Parse(item.estado_civil_suscriptor));
                persona.Email = item.email_suscriptor;
                persona.DireccionNotificacion = item.direccion_domicilio_suscriptor;
                persona.BarrioNotificacion = item.direccion_domicilio_suscriptor;
                persona.TelefonoNotificacion = item.telefono_suscriptor;
                persona.CelularNotificacion = item.celular_suscriptor;
                persona.DepartamentoNotificacionId = utilities.PadWithZeroes(status.GetStatusSiiconId(int.Parse(item.departamento_suscriptor)).ToString(), 2);
                persona.CiudadNotificacionId = utilities.PadWithZeroes(status.GetCiudadSiiconId(int.Parse(item.ciudad_suscriptor)).ToString(), 5);
                persona.EmpresaLabora = item.empresa_empleadora_suscriptor;
                persona.CargoLabora = item.cargo_suscriptor;
                persona.DireccionLabora = item.direccion_empleo_suscriptor;
                persona.BarrioLabora = item.direccion_empleo_suscriptor;
                persona.TelefonoLabora = item.telefono_empleo_suscriptor;
                persona.CelularOficina = item.celular_empleo_suscriptor;
                persona.DepartamentoLaboraId = utilities.PadWithZeroes(status.GetStatusSiiconId(int.Parse(item.departamento_empleo_suscriptor)).ToString(), 5);
                persona.CiudadLaboraId = utilities.PadWithZeroes(status.GetCiudadSiiconId(int.Parse(item.ciudad_empleo_suscriptor)).ToString(), 5);
                persona.IngresoMensual = Convert.ToInt32(item.ingresos_mensuales_suscriptor);
                persona.EgresoMensual = Convert.ToInt32(item.egresos_mensuales_suscriptor);
                persona.Profesion = item.profesion_suscriptor;

                persona.TerceroId = user.IdSiicon;



                string registroPersonaSiicon = CreatePersonaSiicon(persona).Result.Value;
                Console.WriteLine("[REGX PERSONA]: " + registroPersonaSiicon);


                dynamic jsonPersona = JsonConvert.DeserializeObject<dynamic>(registroPersonaSiicon);                
                if (jsonPersona.First.ElementoId != null)
                {                    
                    item.ConfirmacionContratos.IdSuscriptor = jsonPersona.First.ElementoId;
                    await _context.SaveChangesAsync();
                }
                if (item.ConfirmacionContratos.IdSuscriptor > 0)
                {
                    // Registro del contrato
                    ContratoSiicon contratoSiicon = new ContratoSiicon();
                    contratoSiicon.Contrato = item.numero_de_contrato;
                    contratoSiicon.IdContrato = item.IdContrato;
                    contratoSiicon.Persona1Id = item.ConfirmacionContratos.IdSuscriptor;
                    contratoSiicon.Persona2Id = 0;
                    contratoSiicon.FechaAdhesion = String.Format("{0:MM'/'dd'/'yyyy}", item.ConfirmacionContratos.FechaPago);
                    contratoSiicon.CodAgencia = int.Parse(item.agencia);                    
                    contratoSiicon.CodAsesor = item.ConfirmacionContratos.Asesor;  
                    contratoSiicon.CodConvenio = 1; // Valor Fijo
                    contratoSiicon.CodConcesionario = 1; // Valor Fijo
                    contratoSiicon.TipoMedioId = item.ConfirmacionContratos.TipoMedio;
                    contratoSiicon.MedioId = item.ConfirmacionContratos.Medio;
                    contratoSiicon.MedioFechaID = item.id_fecha_medio;
                    contratoSiicon.CodTipoBien = item.id_tipo_de_bien;
                    contratoSiicon.BienId = int.Parse(item.codigo_bien);
                    contratoSiicon.ValorBien = Convert.ToInt32(item.valor_bien);
                    contratoSiicon.CodMarca = item.id_marca;
                    contratoSiicon.TipoBienParametroId = item.id_tipo_bien_parametro;
                    contratoSiicon.PorcentajeInscripcion = (float)item.porcentaje_cuota_ingreso;
                    contratoSiicon.PorcentajeAdministracion = (float)item.porcentaje_administracion;
                    contratoSiicon.DescuentoId = 2; // Valor fijo
                    contratoSiicon.PorcentajeDescuento = 0; // Valor Fijo
                    contratoSiicon.MontoInscripcion = Convert.ToInt32(item.cuota_ingreso);
                    contratoSiicon.MontoInscripcionIVA = Convert.ToInt32(item.iva_cuota_ingreso);
                    contratoSiicon.plazo = int.Parse(item.plazo_bien);
                    contratoSiicon.MontoAdministracion = Convert.ToInt32(item.administracion);
                    contratoSiicon.MontoAdministracionIVA = Convert.ToInt32(item.iva_administracion);
                    contratoSiicon.CuotaNeta = Convert.ToInt32(item.primera_cuota_neta);
                    contratoSiicon.SuscriptorReferente = "000-000.0"; // Valor Fijo
                    contratoSiicon.TipoventaID = 1; // Valor Fijo. 2 en caso de venta directa en concesionario
                    contratoSiicon.FechaCierre = String.Format("{0:MM'/'dd'/'yyyy}", item.ConfirmacionContratos.FechaCierreComercial);
                    contratoSiicon.CompañiaID = item.id_compania;
                    contratoSiicon.TerceroId = user.IdSiicon;

                    string registroContratoSiicon = CreateContratoSiicon(contratoSiicon).Result.Value;
                    Console.WriteLine("[REGX CONTRATO]:" + registroContratoSiicon);
                    dynamic jsonContrato = JsonConvert.DeserializeObject<dynamic>(registroContratoSiicon);                    
                    if (jsonContrato.First.ElementoId != null)
                    {
                        if(jsonContrato.First.TipoMensajeSistemaId == 1)
                        {
                            item.ConfirmacionContratos.IdContratoSiicon = jsonContrato.First.ElementoId;
                            item.ConfirmacionContratos.FechaRegistro = DateTime.Now;
                            item.ConfirmacionContratos.IsRegistered = true;
                            await _context.SaveChangesAsync();
                        }
                        
                    }
                }

                // registro de pagos.
                if(item.PagosManuales.Count>0)
                {
                    foreach (var pago in item.PagosManuales)
                    {
                        PagoManualSiicon pagoSiicon = new PagoManualSiicon();
                        pagoSiicon.CodConcesionario = pago.IdConcesionario;
                        pagoSiicon.CodCuentaBancaria = pago.IdCuentaBancaria;
                        pagoSiicon.CompañiaId = item.id_compania;
                        pagoSiicon.Contrato = item.numero_de_contrato;
                        pagoSiicon.ContratoId = item.ConfirmacionContratos.IdContratoSiicon;
                        pagoSiicon.FechaPago = item.ConfirmacionContratos.FechaPago;
                        pagoSiicon.monto = Convert.ToInt32(pago.Monto);
                        pagoSiicon.Numero = pago.Numero;
                        pagoSiicon.Referencia = pago.Referencia;
                        pagoSiicon.TerceroGeneradorId = user.IdSiicon;
                        pagoSiicon.TipoPagoId = pago.IdTipoPago;
                        string result =  CreatePagoSiicon(pagoSiicon).Result.Value;
                    }
                }
            }

            
            foreach (var item in contratos)
            {
                await SendContract(item);                
            }

            return "HTTP 200 OK";
        }


        



        public async Task<ActionResult<string>> CreatePersonaSiicon(PersonaSiicon persona)
        {
            try
            {
                Console.WriteLine("[SENT JSON PERSONA]: Nombre:  " + persona.PrimerNombre + ", Segundo Nombre: " + persona.SegundoNombre +
                    ", Apellido: " + persona.PrimerApellido + ", Segundo Apellido: " + persona.SegundoApellido + 
                    ", Tipo Documento: " + persona.TipoDocumentoIdentidad + ", Numero Documento: " + persona.NumeroDocumento + 
                    ", CiudadID: " + persona.CiudadExpedicionId + ", fecha nac: " + persona.FechaNacimiento + 
                    ", CiudadNac: " + persona.CiudadNacimientoID + ", Sexo: " + persona.SexoId + 
                    ", Estado Civil: " + persona.EstadoCivilId + ", Email: " + persona.Email + 
                    ", Dirección:  " + persona.DireccionNotificacion + ", Barrio:3 " + persona.BarrioNotificacion + 
                    ", telefono: " + persona.TelefonoNotificacion + ", Celular: " + persona.CelularNotificacion + 
                    ", departamento: " + persona.DepartamentoNotificacionId.ToString() + 
                    ", ciudad nacimiuento: " + persona.CiudadNacimientoID + ", Empresa: " + persona.EmpresaLabora + 
                    ", Cargo: " + persona.CargoLabora + ", Dirección: " + persona.DireccionLabora + 
                    ", barrio: " + persona.BarrioLabora + ", telefono: " + persona.TelefonoLabora + 
                    ", Celular: " + persona.CelularOficina + ", departamentlo lab: " + persona.DepartamentoLaboraId.ToString() + 
                    ", CiudadLab: " + persona.CiudadLaboraId.ToString() + ", Ingreso men: " + persona.IngresoMensual + 
                    ", EgresoMen: " + persona.EgresoMensual + ", profesion: " + persona.Profesion + 
                    ", tercero ID: " + persona.TerceroId);

                


                var resultat = service.CrearPersonaNaturalAsync(persona.PrimerNombre, persona.SegundoNombre, persona.PrimerApellido,
                persona.SegundoApellido, persona.TipoDocumentoIdentidad, persona.NumeroDocumento, persona.CiudadExpedicionId,
                persona.FechaNacimiento, persona.CiudadNacimientoID, persona.SexoId, persona.EstadoCivilId, persona.Email,
                persona.DireccionNotificacion, persona.BarrioNotificacion, persona.TelefonoNotificacion, persona.CelularNotificacion,
                persona.DepartamentoNotificacionId.ToString(), persona.CiudadNacimientoID, persona.EmpresaLabora, persona.CargoLabora,
                persona.DireccionLabora, persona.BarrioLabora, persona.TelefonoLabora, persona.CelularOficina, persona.DepartamentoLaboraId.ToString(),
                persona.CiudadLaboraId.ToString(), persona.IngresoMensual, persona.EgresoMensual, persona.Profesion, persona.TerceroId).Result;

                return resultat;
            }
            catch (Exception ex)
            {                
                Console.WriteLine("[ERROR]: " + ex.StackTrace);                
                throw;
            }



        }

        public async Task<ActionResult<string>> CreateContratoSiicon(ContratoSiicon contrato)
        {

            try
            {
                Console.WriteLine("[SENT JSON]: " + "[Contrato]: " + contrato.Contrato + ", [PersonaID1]: " + contrato.Persona1Id + ", [PersonaID2]: " + contrato.Persona2Id + ", [FechaAdhesion]: " + contrato.FechaAdhesion + ", [CodAgencia]: " + contrato.CodAgencia + ", [CodAsesor]: " + contrato.CodAsesor + ", [CodConvenio]: " + contrato.CodConvenio + ", [CodConcesionario]: " + contrato.CodConcesionario + ", [TipoMedioID]: " + contrato.TipoMedioId + ", [MedioID]: " + contrato.MedioId + ", [MedioFechaID]: " + contrato.MedioFechaID + ", [CodTipoBien]: " + contrato.CodTipoBien + ", [BienID]: " + contrato.BienId + ", [ValorBien]: " + contrato.ValorBien + ", [CodMarca]: " + contrato.CodMarca + ", [TipoBienParametroID]: " + contrato.TipoBienParametroId + ", [PorcentajeInscripcion]: " + contrato.PorcentajeInscripcion + ", [PorcentajeAdministracion]: " + contrato.PorcentajeAdministracion + ", [DescuentoID]: " + contrato.DescuentoId + ", [PorcentajeDescuento]: " + contrato.PorcentajeDescuento + ", [MontoInscripcion]: " + contrato.MontoInscripcion + ", [MontoInscripcionIVA]: " + contrato.MontoInscripcionIVA + ", [Plazo]: " + contrato.plazo + ", [MontoAdministracion]: " + contrato.MontoAdministracion + ", [MontoAdministracionIVA]: " + contrato.MontoAdministracionIVA + ", [CuotaNeta]: " + contrato.CuotaNeta + ", [SuscriptorReferente]: " + contrato.SuscriptorReferente + ", [TipoVentaID]: " + contrato.TipoventaID + ", [FechaCierra]: " + contrato.FechaCierre + ", [CompañíaID]: " + contrato.CompañiaID + ", [TerceroID]: " + contrato.TerceroId + ", [LeJsonPagos]: " + PagosToJson(contrato.IdContrato));
                var resultat = service.CrearContratoAsync(contrato.Contrato, contrato.Persona1Id, contrato.Persona2Id, contrato.FechaAdhesion,
                        contrato.CodAgencia, contrato.CodAsesor, contrato.CodConvenio, contrato.CodConcesionario, contrato.TipoMedioId, contrato.MedioId,
                        contrato.MedioFechaID, contrato.CodTipoBien, contrato.BienId, contrato.ValorBien, contrato.CodMarca, contrato.TipoBienParametroId,
                        contrato.PorcentajeInscripcion, contrato.PorcentajeAdministracion, contrato.DescuentoId, contrato.PorcentajeDescuento,
                        contrato.MontoInscripcion, contrato.MontoInscripcionIVA, contrato.plazo, contrato.MontoAdministracion, contrato.MontoAdministracionIVA,
                        contrato.CuotaNeta, contrato.SuscriptorReferente, contrato.TipoventaID, contrato.FechaCierre, contrato.CompañiaID, contrato.TerceroId, PagosToJson(contrato.IdContrato)).Result; //"[{\"Thisis a \": \"Test\"}]").Result;

                return resultat;
            }
            catch (Exception ex)
            {
                Console.WriteLine("[ERROR]: " + ex.Message);
                Console.WriteLine("[ERROR]: " + ex.InnerException);
                Console.WriteLine("[ERROR]: " + ex.StackTrace);
                Console.WriteLine("[ERROR]: " + ex.TargetSite);
                throw;
            }
        }

        public async Task<ActionResult<string>> CreatePagoSiicon(PagoManualSiicon pago)
        {
            string result = service.CrearContratoPagoAsync(pago.TipoPagoId, pago.FechaPago, pago.CodCuentaBancaria,
                pago.monto, pago.Referencia, pago.Numero, pago.CodConcesionario, pago.ContratoId, pago.Contrato,
                pago.TerceroGeneradorId, pago.CompañiaId).Result;
            dynamic jsonResultFechaCierre = JsonConvert.DeserializeObject<dynamic>(result);
            if (jsonResultFechaCierre.First.ElementoId != null)
            {
                string value = jsonResultFechaCierre.First.ElementoId;
                return value;
            }
            return "0";
        }

        public async Task SendContract(Contrato contrato)
        {
            MemoryStream stream = new MemoryStream();
            MemoryStream second_stream = new MemoryStream();
            string src = "";
            if (contrato.id_compania.Equals(Constants.GuuidElectro))
            {
                switch (contrato.marca_exclusiva_bien)
                {
                    case "YAMAHA":
                        src = _hostingEnvironment.WebRootPath + "/pdf/" + Constants.ContratoMotoMas;
                        break;
                    default:
                        src = _hostingEnvironment.WebRootPath + "/pdf/" + Constants.ContratoElectro;
                        break;
                }
            }
            else
            {
                switch (contrato.marca_exclusiva_bien)
                {
                    case "KIA":
                        src = _hostingEnvironment.WebRootPath + "/pdf/" + Constants.ContratoKia;
                        break;
                    case "HYUNDAI":
                        src = _hostingEnvironment.WebRootPath + "/pdf/" + Constants.ContratoAutoKoreana;
                        break;
                    case "VOLKSWAGEN":
                        src = _hostingEnvironment.WebRootPath + "/pdf/" + Constants.ContratoColWager;
                        break;

                    default:
                        src = _hostingEnvironment.WebRootPath + "/pdf/" + Constants.ContratoAuto;
                        break;
                }
            }
            PdfWriter pdfwriter = new PdfWriter(stream);
            PdfDocument pdf = new PdfDocument(new PdfReader(src), pdfwriter);
            pdfwriter.SetCloseStream(false);

            PdfAcroForm pdfForm = PdfAcroForm.GetAcroForm(pdf, true);
            IDictionary<String, PdfFormField> fields = pdfForm.GetFormFields();

            _utilities.FillPdf(fields, contrato);

            pdfForm.FlattenFields();
            pdf.Close();
            stream.Flush();
            stream.Position = 0;

           



            EmailService emailService = new EmailService(_emailConfiguration);
            EmailMessage emailMessage = new EmailMessage();
            CanonicalUrlService canonicalUrlService = new CanonicalUrlService(_canonicalUrlConfiguration);


            string srcTemplate = "";
            string srcManual = "";
            if (contrato.id_compania.Equals(Constants.GuuidElectro))
            {
                srcManual = _hostingEnvironment.WebRootPath + "/pdf/" + Constants.ManualSuscriptorElectro;
                emailMessage.FromAddresses = new List<EmailAddress>()
                {
                new EmailAddress{Name = "Mi Contrato Electroplan", Address="tienda@autofinanciera.com.co"}
                };
                emailMessage.ToAddresses = new List<EmailAddress>()
                {
                new EmailAddress{Name = contrato.primer_nombre + " " + contrato.segundo_nombre + " " + contrato.primer_apellido + " " + contrato.segundo_apellido, Address=contrato.email_suscriptor}
                };
                emailMessage.Subject = "[ELECTROPLAN] Mi Contrato - Aceptación condiciones del contrato";
                switch (contrato.marca_exclusiva_bien)
                {
                    case "YAMAHA":
                        srcTemplate = _hostingEnvironment.WebRootPath + "/emailtemplates/ConfirmacionContrato/ContratoMotoMas.html";
                        break;
                    case "AUTECO - BAJAJ":
                        srcTemplate = _hostingEnvironment.WebRootPath + "/emailtemplates/ConfirmacionContrato/ContratoBajaj.html";
                        break;
                    case "AUTECO - KAWASAKI":
                        srcTemplate = _hostingEnvironment.WebRootPath + "/emailtemplates/ConfirmacionContrato/ContratoKawasaki.html";
                        break;
                    case "AUTECO - KTM":
                        srcTemplate = _hostingEnvironment.WebRootPath + "/emailtemplates/ConfirmacionContrato/ContratoKtm.html";
                        break;
                    default:
                        srcTemplate = _hostingEnvironment.WebRootPath + "/emailtemplates/ConfirmacionContrato/ContratoElectroplan.html";
                        break;
                }
            }
            else
            {
                srcManual = _hostingEnvironment.WebRootPath + "/pdf/" + Constants.ManualSuscriptorAuto;
                emailMessage.FromAddresses = new List<EmailAddress>()
                {
                new EmailAddress{Name = "Mi Contrato Autofinanciera", Address="tienda@autofinanciera.com.co"}
                };
                emailMessage.ToAddresses = new List<EmailAddress>()
                {
                new EmailAddress{Name = contrato.primer_nombre + " " + contrato.segundo_nombre + " " + contrato.primer_apellido + " " + contrato.segundo_apellido, Address=contrato.email_suscriptor}
                };
                emailMessage.Subject = "[AUTOFINANCIERA] Mi Contrato - Aceptación condiciones del contrato";
                switch (contrato.marca_exclusiva_bien)
                {
                    case "KIA":
                        srcTemplate = _hostingEnvironment.WebRootPath + "/emailtemplates/ConfirmacionContrato/ContratoKiaPlan.html";
                        break;
                    case "HYUNDAI":
                        srcTemplate = _hostingEnvironment.WebRootPath + "/emailtemplates/ConfirmacionContrato/ContratoAutokoreana.html";
                        break;
                    case "VOLKSWAGEN":
                        srcTemplate = _hostingEnvironment.WebRootPath + "/emailtemplates/ConfirmacionContrato/ContratoAutofinanciera.html";
                        break;
                    default:
                        srcTemplate = _hostingEnvironment.WebRootPath + "/emailtemplates/ConfirmacionContrato/ContratoAutofinanciera.html";
                        break;
                }
            }

            emailMessage.Content = String.Format(
                _utilities.GetTemplate(srcTemplate),
                canonicalUrlService.GetCanonicalUrl() + "ContratoDigital/confirmarcontrato/?guuid=" + contrato.ConfirmacionContratos.Guuid + "&id=" + contrato.ConfirmacionContratos.Id);


            PdfWriter _pdfwriter = new PdfWriter(second_stream);
            PdfDocument _pdf = new PdfDocument(new PdfReader(srcManual), _pdfwriter);
            _pdfwriter.SetCloseStream(false);


            _pdf.Close();
            second_stream.Flush();
            second_stream.Position = 0;


            emailService.Send(emailMessage, stream, second_stream, Constants.ContratoPDF);
                

        }

        private string PagosToJson(int id)
        {
            string result = "[";
            var listaPagos = _context.Pagos.Where(x => x.IdContrato == id);

            int count = listaPagos.Count();
            int countKey = 1;
            foreach (var item in listaPagos)
            {
                result += "{" +
                            "\"ReferenciaPago\":" + "\"" + item.ReferenciaSiicon + "\"," +
                            "\"Monto\":" + "\"" + item.Monto + "\"," +
                            "\"FechaPago\":" + "\"" + String.Format("{0:MM'/'dd'/'yyyy}", item.FechaPago) + "\"" +
                    "}";
                if (countKey < count)
                {
                    result += ",";
                    countKey++;
                }
            }
            return result + "]";
        }

        /// <summary>
        /// Registra los contrataos en el Siicon en cierre comercial
        /// </summary>
        /// <returns></returns>
        public async Task<ActionResult<string>> RegistrarCierreComercial(Contrato contrato)
        {
            var user = _userManager.Users.SingleOrDefault(x => x.Id == contrato.asesor_comercial);
            ContratoCierreComercial cierreComercial = new ContratoCierreComercial();
            cierreComercial.PrimerNombre = contrato.primer_nombre;
            cierreComercial.SegundoNombre = !String.IsNullOrEmpty(contrato.segundo_nombre) ? contrato.segundo_nombre : "-";
            cierreComercial.PrimerApellido = contrato.primer_apellido;
            cierreComercial.SegundoApellido = !String.IsNullOrEmpty(contrato.segundo_apellido) ? contrato.segundo_apellido : "-"; ;
            cierreComercial.TipoDocumentoIdentidadId = int.Parse(contrato.tipo_documento_identidad_suscriptor);
            cierreComercial.NumeroDocumento = contrato.documento_identidad_suscriptor.ToString();
            cierreComercial.Contrato = contrato.numero_de_contrato;
            cierreComercial.CodTipoBien = contrato.id_tipo_de_bien;
            cierreComercial.TipoMedioId = contrato.ConfirmacionContratos.TipoMedio;
            cierreComercial.MedioId = contrato.ConfirmacionContratos.Medio;
            cierreComercial.CodAgencia = int.Parse(contrato.agencia);
            cierreComercial.CodAsesor = contrato.ConfirmacionContratos.Asesor;
            cierreComercial.FechaAdhesion = String.Format("{0:MM'/'dd'/'yyyy}", contrato.ConfirmacionContratos.FechaCreacion);
            cierreComercial.ValorBien = Convert.ToInt32(contrato.valor_bien);
            cierreComercial.CodConcesionario = 1;
            cierreComercial.CodMarca = contrato.id_marca;
            cierreComercial.FechaCierre = String.Format("{0:MM'/'dd'/'yyyy}", contrato.ConfirmacionContratos.FechaCierreComercial);
            cierreComercial.CompaniaId = contrato.id_compania;
            cierreComercial.TerceroId = user.IdSiicon;

            string jsonToSend = "[NOTICE] JSON TO CREATE CIERRE COMERCIAL: " +
                "Primer nombre: " + cierreComercial.PrimerNombre + "," +
                "Segundo nombre: "+ cierreComercial.SegundoNombre + "," +
                "Primer apellido: " + cierreComercial.PrimerApellido + "," +
                "Segundo apellido: " + cierreComercial.SegundoApellido + "," +
                "Tipo documento ID: " + cierreComercial.TipoDocumentoIdentidadId + "," +
                "Numero documento:  " + cierreComercial.NumeroDocumento + "," +
                "Contrato: " + cierreComercial.Contrato + "," +
                "Código tipo bien: " +cierreComercial.CodTipoBien + "," +
                "Tipo medio ID: " + cierreComercial.TipoMedioId + "," +
                "Medio ID: " + cierreComercial.MedioId + "," +
                "Código agencia: " + cierreComercial.CodAgencia + "," +
                "Código asesor: " + cierreComercial.CodAsesor + "," +
                "Fecha Adhesión: " + cierreComercial.FechaAdhesion + "," +
                "Valor del bien: " + cierreComercial.ValorBien + "," +
                "Cod Concesionario " + cierreComercial.CodConcesionario + "," +
                "Código de marca: " + cierreComercial.CodMarca + "," +
                "Fecha Cierre: " + cierreComercial.FechaCierre + "," +
                "Compañia ID: " + cierreComercial.CompaniaId + "," +
                "Tercero ID: " + cierreComercial.TerceroId;
            Console.WriteLine(jsonToSend);

            string result = service.CrearCierreComercialAsync(cierreComercial.PrimerNombre, cierreComercial.SegundoNombre,
                cierreComercial.PrimerApellido, cierreComercial.SegundoApellido, cierreComercial.TipoDocumentoIdentidadId,
                cierreComercial.NumeroDocumento, cierreComercial.Contrato, cierreComercial.CodTipoBien,
                cierreComercial.TipoMedioId, cierreComercial.MedioId, cierreComercial.CodAgencia,
                cierreComercial.CodAsesor, cierreComercial.FechaAdhesion, cierreComercial.ValorBien,
                cierreComercial.CodConcesionario, cierreComercial.CodMarca, cierreComercial.FechaCierre,
                cierreComercial.CompaniaId, cierreComercial.TerceroId).Result;


            dynamic jsonResultFechaCierre = JsonConvert.DeserializeObject<dynamic>(result);
            if(jsonResultFechaCierre.First.ElementoId!= null)
            {
                string value = jsonResultFechaCierre.First.ElementoId;
                return value;
            }
            return "0";
        }        

        [HttpGet("GetFechaCierreComercial/{compania}")]
        [Route("api/Freyja/GetFechaCierreComercial")]
        public async Task<ActionResult<string>> GetFechaCierreComercial(string compania)
        {
            string result = await service.SeleccionarCierreComercialCompañiaAsync(compania);
            return result;
        }

        [HttpGet("GetTiposPagos")]
        [Route("api/Freyja/GetTiposPagos")]
        public async Task<ActionResult<string>> GetTiposPagos()
        {
            return await service.SeleccionarTiposPagosAsync();
        }

        

        [HttpGet("GetCuentasBancarias/{compania}")]
        [Route("api/Freyja/GetCuentasBancarias")]
        public async Task<ActionResult<string>> GetCuentasBancarias(string compania)
        {
            return await service.SeleccionarCuentasBancariasCompañiaAsync(compania);
        }

        [HttpGet("GetConcesionarios/{compania}")]
        [Route("api/Freyja/GetConcesionarios")]
        public async Task<ActionResult<string>> GetConcesionarios(string compania)
        {
            return await service.SeleccionarConcesionarioCompañiaAsync(compania);
        }


        /*[AllowAnonymous]
        [HttpPost("RegistrarTransacciones")]
        [Route("api/Freyja/RegistrarTransacciones")]
        public async Task<ActionResult<string>> RegistrarTransacciones()
        {            
            Console.WriteLine("[SONDA CONTENT LENGTH]" + HttpContext.Request.ContentLength);
            Console.WriteLine("[SONDA CONTENT TYPE]" + HttpContext.Request.ContentType);
            Console.WriteLine("[SONDA QUERY STRING]" + HttpContext.Request.QueryString.ToString());
            Console.WriteLine("[SONDA QUERY COUNT]" + HttpContext.Request.Query.Count());
            Console.WriteLine("[SONDA CODIGO FACTURA]" + HttpContext.Request.Form["codigoFactura"]);
            //Console.WriteLine("[SONDA CodigoFactura]: " + jsonForm.codigoFactura);
            //Console.WriteLine("[SONDA transaccionAprobada]: " + jsonForm.transaccionAprobada);
            //Console.WriteLine("[SONDA valorFactura]: " + jsonForm.valorFactura);

            

            return "HTTP 200 OK";
        }*/
        
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
            if(RegistrarTransaccion(pago).Result.Value == "HTTP 200 OK")
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

        [HttpGet("RegistrarNumeroTransaccion/{numero}/{cuenta}")]
        [Route("api/Freyja/ChequearNumeroTransaccion")]
        public async Task<ActionResult<string>> ChequearNumeroTransaccion(string numero, int cuenta)
        {
            var result = await _context.PagoManual.CountAsync(x => x.Numero == numero && x.IdCuentaBancaria == cuenta);
            return result > 0 ? "true" : "false";
            
        }

        #region reports

        [HttpGet("GetReporteContratos")]
        public async Task<ActionResult<string>> GetReporteContratos()
        {
            Utilities utilities = new Utilities(_context, _userManager);
            string result = "{";

            // generales
            result += "\"Generales\":[";
            result += utilities.BuildJsonString("Contratos", _context.Contratos.Count()) + ",";
            result += utilities.BuildJsonString("Contratos pagados", _context.Contratos.Where(x => x.ConfirmacionContratos.IsPaid).Count()) + ",";
            result += utilities.BuildJsonString("Contratos con condiciones aceptadas", _context.Contratos.Where(x => x.ConfirmacionContratos.IsAccepted).Count()) + ",";
            result += utilities.BuildJsonString("Contratos a la espera de confirmación", _context.Contratos.Where(x => x.ConfirmacionContratos.IsAccepted == false).Count()) + ",";
            result += utilities.BuildJsonString("Contratos cerrados", _context.Contratos.Where(x => x.ConfirmacionContratos.IsAccepted && x.ConfirmacionContratos.IsPaid && x.ConfirmacionContratos.IsIdUploaded && x.ConfirmacionContratos.IsRegistered).Count()) + ",";
            result += utilities.BuildJsonString("Contratos abonados", _context.Contratos.Where(x => x.Pagos.Count() >= 1 && x.ConfirmacionContratos.IsPaid == false).Count()) + ",";
            result += utilities.BuildJsonString("Contratos Noviembre 2018", _context.Contratos.Where(x => x.ConfirmacionContratos.FechaRegistro.Month == 11).Count()) + ",";
            result += utilities.BuildJsonString("Contratos Autofinanciera", _context.Contratos.Where(x => x.id_compania == Constants.GuuidAuto).Count()) + ",";
            result += utilities.BuildJsonString("Contratos Electroplan", _context.Contratos.Where(x => x.id_compania == Constants.GuuidElectro).Count());
            result += "],";


            // Agencias
            result += "\"Agencias\":[";
            var listaAgencias = _context.Contratos.GroupBy(x => x.ConfirmacionContratos.DescripcionAgencia);
            int count = listaAgencias.Count();
            int countKey = 1;
            foreach (var item in listaAgencias)
            {
                result += utilities.BuildJsonString("Contratos en " + item.Key, _context.Contratos.Where(x => x.ConfirmacionContratos.DescripcionAgencia == item.Key).Count());
                if (countKey < count)
                {
                    result += ",";
                    countKey++;
                }
            }
            result += "],";

            // Marcas
            result += "\"Marcas\":[";
            var listaMarcas = _context.Contratos.GroupBy(x => x.marca_exclusiva_bien);
            count = listaMarcas.Count();
            countKey = 1;
            foreach (var item in listaMarcas)
            {
                result += utilities.BuildJsonString("Contratos en " + item.Key, _context.Contratos.Where(x => x.marca_exclusiva_bien == item.Key).Count());
                if (countKey < count)
                {
                    result += ",";
                    countKey++;
                }
            }
            result += "]";
            return result + "}";
        }

        /// <summary>
        /// Reporte estadístico de los prospectos abarcando gran cantidad de métricas
        /// </summary>
        /// <returns>json de parejas, titulo valor.</returns>
        [HttpGet("GetReporteProspectos")]
        [Route("api/Freyja/GetReporteProspectos")]
        public async Task<ActionResult<string>> GetReporteProspectos()
        {
            Utilities utilities = new Utilities(_context, _userManager);
            string result = "{";

            // generales
            result += "\"Generales\":[";
            result += utilities.BuildJsonString("Prospectos", _context.Prospectos.Count()) + ",";
            result += utilities.BuildJsonString("Prospectos confirmados", _context.Prospectos.Where(x => x.ConfirmacionProspecto.IsConfirmed == true).Count()) + ",";
            result += utilities.BuildJsonString("Prospectos con contrato", _context.Prospectos.Where(x => x.Contratos.Count > 0).Count()) + ",";
            result += utilities.BuildJsonString("Prospectos registrados en noviembre 2018", _context.Prospectos.Where(x => x.ConfirmacionProspecto.FechaCreacion.Month == 11).Count()) + ",";
            result += utilities.BuildJsonString("Prospectos registrados antes de noviembre 2018", _context.Prospectos.Where(x => x.ConfirmacionProspecto.FechaCreacion.Month < 11 && x.ConfirmacionProspecto.FechaCreacion.Year <= 2018).Count()) + ",";
            result += utilities.BuildJsonString("Prospectos en Autofinanciera", _context.Prospectos.Where(x => x.IdCompania == Constants.GuuidAuto).Count()) + ",";
            result += utilities.BuildJsonString("Prospectos en Electroplan", _context.Prospectos.Where(x => x.IdCompania == Constants.GuuidElectro).Count());
            result += "],";

            // Por Marcas
            result += "\"Marcas\":[";
            var listaMarcas = _context.Prospectos.GroupBy(x => x.Marca_exclusiva_bien);
            int count = listaMarcas.Count();
            int countKey = 1;
            foreach (var item in listaMarcas)
            {
                result += utilities.BuildJsonString("Prospectos en " + item.Key, _context.Prospectos.Where(x => x.Marca_exclusiva_bien == item.Key).Count());                
                if(countKey < count)
                {
                    result += ",";
                    countKey++;
                }
            }
            
            result += "],";

            // Por agencias
            result += "\"Agencias\":[";
            var listaAgencias = _context.Prospectos.GroupBy(x => x.ConfirmacionProspecto.DescripcionAgencia);
            count = listaAgencias.Count();
            countKey = 1;
            foreach (var item in listaAgencias)
            {
                result += utilities.BuildJsonString("Prospectos en " + item.Key, _context.Prospectos.Where(x => x.ConfirmacionProspecto.DescripcionAgencia == item.Key).Count());                
                if (countKey < count)
                {
                    result += ",";
                    countKey++;
                }
            }
            result += "]";           
            

            return result + "}";
        }

        #endregion

        #region UnitTesting
        
        /*[HttpGet("CheckPagosJson/{id}")]
        [Route("api/Freyja/CheckPagosJson")]
        public async Task<ActionResult<string>> CheckPagosJson(int id)
        {
            return PagosToJson(id);
        }*/
        
        #endregion

    }
}