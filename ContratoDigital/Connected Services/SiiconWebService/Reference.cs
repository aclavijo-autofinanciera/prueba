﻿//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated by a tool.
//
//     Changes to this file may cause incorrect behavior and will be lost if
//     the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace SiiconWebService
{
    
    
    [System.CodeDom.Compiler.GeneratedCodeAttribute("Microsoft.Tools.ServiceModel.Svcutil", "2.0.1-preview-30422-0661")]
    [System.ServiceModel.ServiceContractAttribute(ConfigurationName="SiiconWebService.IService")]
    public interface IService
    {
        
        [System.ServiceModel.OperationContractAttribute(Action="http://tempuri.org/IService/ConsultarFacturasCliente", ReplyAction="http://tempuri.org/IService/ConsultarFacturasClienteResponse")]
        System.Threading.Tasks.Task<string> ConsultarFacturasClienteAsync(string IdentificacionCliente);
        
        [System.ServiceModel.OperationContractAttribute(Action="http://tempuri.org/IService/ConsultarFacturaReferencia", ReplyAction="http://tempuri.org/IService/ConsultarFacturaReferenciaResponse")]
        System.Threading.Tasks.Task<string> ConsultarFacturaReferenciaAsync(string referenciaFactura);
        
        [System.ServiceModel.OperationContractAttribute(Action="http://tempuri.org/IService/SelecccionarCompañias", ReplyAction="http://tempuri.org/IService/SelecccionarCompañiasResponse")]
        System.Threading.Tasks.Task<string> SelecccionarCompañiasAsync();
        
        [System.ServiceModel.OperationContractAttribute(Action="http://tempuri.org/IService/SelecccionarAgencias", ReplyAction="http://tempuri.org/IService/SelecccionarAgenciasResponse")]
        System.Threading.Tasks.Task<string> SelecccionarAgenciasAsync();
        
        [System.ServiceModel.OperationContractAttribute(Action="http://tempuri.org/IService/SelecccionarMarcas", ReplyAction="http://tempuri.org/IService/SelecccionarMarcasResponse")]
        System.Threading.Tasks.Task<string> SelecccionarMarcasAsync();
        
        [System.ServiceModel.OperationContractAttribute(Action="http://tempuri.org/IService/SelecccionarMarcasTipoBien", ReplyAction="http://tempuri.org/IService/SelecccionarMarcasTipoBienResponse")]
        System.Threading.Tasks.Task<string> SelecccionarMarcasTipoBienAsync(string CompañiaId, int TipoBienId);
        
        [System.ServiceModel.OperationContractAttribute(Action="http://tempuri.org/IService/SelecccionarAsesor", ReplyAction="http://tempuri.org/IService/SelecccionarAsesorResponse")]
        System.Threading.Tasks.Task<string> SelecccionarAsesorAsync(long Cedula);
        
        [System.ServiceModel.OperationContractAttribute(Action="http://tempuri.org/IService/SelecccionarAsesorCodigo", ReplyAction="http://tempuri.org/IService/SelecccionarAsesorCodigoResponse")]
        System.Threading.Tasks.Task<string> SelecccionarAsesorCodigoAsync(int Codigo);
        
        [System.ServiceModel.OperationContractAttribute(Action="http://tempuri.org/IService/SeleccionarAsesoresAgencia", ReplyAction="http://tempuri.org/IService/SeleccionarAsesoresAgenciaResponse")]
        System.Threading.Tasks.Task<string> SeleccionarAsesoresAgenciaAsync(string CompañiaId, int CodAgencia);
        
        [System.ServiceModel.OperationContractAttribute(Action="http://tempuri.org/IService/SeleccionarAsesoresGerente", ReplyAction="http://tempuri.org/IService/SeleccionarAsesoresGerenteResponse")]
        System.Threading.Tasks.Task<string> SeleccionarAsesoresGerenteAsync(string TerceroId, string CompañiaId, int CodAgencia);
        
        [System.ServiceModel.OperationContractAttribute(Action="http://tempuri.org/IService/SelecccionarTercero", ReplyAction="http://tempuri.org/IService/SelecccionarTerceroResponse")]
        System.Threading.Tasks.Task<string> SelecccionarTerceroAsync(string Cedula);
        
        [System.ServiceModel.OperationContractAttribute(Action="http://tempuri.org/IService/SelecccionarTerceroAgencias", ReplyAction="http://tempuri.org/IService/SelecccionarTerceroAgenciasResponse")]
        System.Threading.Tasks.Task<string> SelecccionarTerceroAgenciasAsync(string TerceroId, string CompañiaId);
        
        [System.ServiceModel.OperationContractAttribute(Action="http://tempuri.org/IService/SelecccionarTiposBienesCompañia", ReplyAction="http://tempuri.org/IService/SelecccionarTiposBienesCompañiaResponse")]
        System.Threading.Tasks.Task<string> SelecccionarTiposBienesCompañiaAsync(string CompañiaId);
        
        [System.ServiceModel.OperationContractAttribute(Action="http://tempuri.org/IService/SelecccionarTiposBienesCompañiaAgencia", ReplyAction="http://tempuri.org/IService/SelecccionarTiposBienesCompañiaAgenciaResponse")]
        System.Threading.Tasks.Task<string> SelecccionarTiposBienesCompañiaAgenciaAsync(string CompañiaId, int CodAgencia);
        
        [System.ServiceModel.OperationContractAttribute(Action="http://tempuri.org/IService/SelecccionarTiposBienesCompañiaAgencia2", ReplyAction="http://tempuri.org/IService/SelecccionarTiposBienesCompañiaAgencia2Response")]
        System.Threading.Tasks.Task<string> SelecccionarTiposBienesCompañiaAgencia2Async(string CompañiaId, int CodAgencia, string TipoReajuste);
        
        [System.ServiceModel.OperationContractAttribute(Action="http://tempuri.org/IService/SelecccionarPorcAdministracionCompañia", ReplyAction="http://tempuri.org/IService/SelecccionarPorcAdministracionCompañiaResponse")]
        System.Threading.Tasks.Task<string> SelecccionarPorcAdministracionCompañiaAsync(string CompañiaId);
        
        [System.ServiceModel.OperationContractAttribute(Action="http://tempuri.org/IService/SelecccionarPorcInscripcionCompañia", ReplyAction="http://tempuri.org/IService/SelecccionarPorcInscripcionCompañiaResponse")]
        System.Threading.Tasks.Task<string> SelecccionarPorcInscripcionCompañiaAsync(string CompañiaId);
        
        [System.ServiceModel.OperationContractAttribute(Action="http://tempuri.org/IService/SelecccionarBienesCompañia", ReplyAction="http://tempuri.org/IService/SelecccionarBienesCompañiaResponse")]
        System.Threading.Tasks.Task<string> SelecccionarBienesCompañiaAsync(string CompañiaId, int TipoBienId, int MarcaId);
        
        [System.ServiceModel.OperationContractAttribute(Action="http://tempuri.org/IService/SeleccionarBienParametros", ReplyAction="http://tempuri.org/IService/SeleccionarBienParametrosResponse")]
        System.Threading.Tasks.Task<string> SeleccionarBienParametrosAsync(string CompañiaId, int TipoBienId, long ValorBien, int TipoBienParametroId);
        
        [System.ServiceModel.OperationContractAttribute(Action="http://tempuri.org/IService/GenerarReferenciaPago", ReplyAction="http://tempuri.org/IService/GenerarReferenciaPagoResponse")]
        System.Threading.Tasks.Task<string> GenerarReferenciaPagoAsync(string CompañiaId, string NumeroDocumento, long ValorPagar, int ContratoTiendaId, string TerceroId);
        
        [System.ServiceModel.OperationContractAttribute(Action="http://tempuri.org/IService/GenerarReferenciaPagoVarios", ReplyAction="http://tempuri.org/IService/GenerarReferenciaPagoVariosResponse")]
        System.Threading.Tasks.Task<string> GenerarReferenciaPagoVariosAsync(string CompañiaId, string NumeroDocumento, long ValorPagar, int ContratoTiendaId, int TipoReferenciaPagoId, string FechaLimite, string TerceroId);
        
        [System.ServiceModel.OperationContractAttribute(Action="http://tempuri.org/IService/SelecccionarTiposMedios", ReplyAction="http://tempuri.org/IService/SelecccionarTiposMediosResponse")]
        System.Threading.Tasks.Task<string> SelecccionarTiposMediosAsync();
        
        [System.ServiceModel.OperationContractAttribute(Action="http://tempuri.org/IService/SelecccionarTiposMedios2", ReplyAction="http://tempuri.org/IService/SelecccionarTiposMedios2Response")]
        System.Threading.Tasks.Task<string> SelecccionarTiposMedios2Async(string CompañiaId, int CodAgencia);
        
        [System.ServiceModel.OperationContractAttribute(Action="http://tempuri.org/IService/SelecccionarMediosAgencia", ReplyAction="http://tempuri.org/IService/SelecccionarMediosAgenciaResponse")]
        System.Threading.Tasks.Task<string> SelecccionarMediosAgenciaAsync(string CompañiaId, int TipoMedioId, int CodAgencia);
        
        [System.ServiceModel.OperationContractAttribute(Action="http://tempuri.org/IService/CrearPersonaNatural", ReplyAction="http://tempuri.org/IService/CrearPersonaNaturalResponse")]
        System.Threading.Tasks.Task<string> CrearPersonaNaturalAsync(
                    string PrimerNombre, 
                    string SegundoNombre, 
                    string PrimerApellido, 
                    string SegundoApellido, 
                    int TipoDocumentoIdentidadId, 
                    string NumeroDocumento, 
                    string CiudadExpedicionId, 
                    string FechaNacimiento, 
                    string CiudadNacimientoId, 
                    int SexoId, 
                    int EstadoCivilId, 
                    string Email, 
                    string DireccionNotifiacion, 
                    string BarrioNotifiacion, 
                    string TelefonoNotifiacion, 
                    string CelularNotificacion, 
                    string DepartamentoNotificacionId, 
                    string CiudadNotificacionId, 
                    string EmpresaLabora, 
                    string CargoLabora, 
                    string DireccionLabora, 
                    string BarrioLabora, 
                    string TelefonoLabora, 
                    string CelularOficina, 
                    string DepartamentoLaboraId, 
                    string CiudadLaboraId, 
                    int IngresoMensual, 
                    int EgresoMensual, 
                    string Profesion, 
                    string TerceroId);
        
        [System.ServiceModel.OperationContractAttribute(Action="http://tempuri.org/IService/CrearCierreComercial", ReplyAction="http://tempuri.org/IService/CrearCierreComercialResponse")]
        System.Threading.Tasks.Task<string> CrearCierreComercialAsync(
                    string PrimerNombre, 
                    string SegundoNombre, 
                    string PrimerApellido, 
                    string SegundoApellido, 
                    int TipoDocumentoIdentidadId, 
                    string NumeroDocumento, 
                    int Contrato, 
                    int CodTipoBien, 
                    int TipoMedioId, 
                    int MedioId, 
                    int CodAgencia, 
                    int CodAsesor, 
                    string FechaAdhesion, 
                    float ValorBien, 
                    float ValorTotalPagar, 
                    int CodConcesionario, 
                    int CodMarca, 
                    string FechaCierre, 
                    string CompañiaId, 
                    string TerceroId);
        
        [System.ServiceModel.OperationContractAttribute(Action="http://tempuri.org/IService/CrearContrato", ReplyAction="http://tempuri.org/IService/CrearContratoResponse")]
        System.Threading.Tasks.Task<string> CrearContratoAsync(
                    int Contrato, 
                    int Persona1Id, 
                    int Persona2Id, 
                    string FechaAdhesion, 
                    int CodAgencia, 
                    int CodAsesor, 
                    int CodConvenio, 
                    int CodConcesionario, 
                    int TipoMedioId, 
                    int MedioId, 
                    int MedioFechaId, 
                    int CodTipoBien, 
                    int BienId, 
                    float ValorBien, 
                    int CodMarca, 
                    int TipoBienParametroId, 
                    float PorcentajeInscripcion, 
                    float PorcentajeAdministracion, 
                    int DescuentoId, 
                    float PorcentajeDescuento, 
                    float MontoInscripcion, 
                    float MontoInscripcionIVA, 
                    int Plazo, 
                    float MontoAdministracion, 
                    float MontoAdministracionIVA, 
                    float CuotaNeta, 
                    string SuscriptorReferente, 
                    int TipoVentaId, 
                    string FechaCierre, 
                    string CompañiaId, 
                    string TerceroId, 
                    string ContratoPagos);
        
        [System.ServiceModel.OperationContractAttribute(Action="http://tempuri.org/IService/SeleccionarTiposPagos", ReplyAction="http://tempuri.org/IService/SeleccionarTiposPagosResponse")]
        System.Threading.Tasks.Task<string> SeleccionarTiposPagosAsync();
        
        [System.ServiceModel.OperationContractAttribute(Action="http://tempuri.org/IService/SeleccionarCuentasBancariasCompañia", ReplyAction="http://tempuri.org/IService/SeleccionarCuentasBancariasCompañiaResponse")]
        System.Threading.Tasks.Task<string> SeleccionarCuentasBancariasCompañiaAsync(string CompañiaId);
        
        [System.ServiceModel.OperationContractAttribute(Action="http://tempuri.org/IService/SeleccionarConcesionarioCompañia", ReplyAction="http://tempuri.org/IService/SeleccionarConcesionarioCompañiaResponse")]
        System.Threading.Tasks.Task<string> SeleccionarConcesionarioCompañiaAsync(string CompañiaId);
        
        [System.ServiceModel.OperationContractAttribute(Action="http://tempuri.org/IService/SeleccionarCierreComercialCompañia", ReplyAction="http://tempuri.org/IService/SeleccionarCierreComercialCompañiaResponse")]
        System.Threading.Tasks.Task<string> SeleccionarCierreComercialCompañiaAsync(string CompañiaId);
        
        [System.ServiceModel.OperationContractAttribute(Action="http://tempuri.org/IService/CrearContratoPago", ReplyAction="http://tempuri.org/IService/CrearContratoPagoResponse")]
        System.Threading.Tasks.Task<string> CrearContratoPagoAsync(int TipoPagoId, System.DateTime FechaPago, int CodCuentaBancaria, long MontoPago, string Referencia, string Numero, int CodConcesionario, int ContratoId, int Contrato, string TerceroCreadorId, string CompañiaId);
        
        [System.ServiceModel.OperationContractAttribute(Action="http://tempuri.org/IService/RegistrarPagoTuCompra", ReplyAction="http://tempuri.org/IService/RegistrarPagoTuCompraResponse")]
        System.Threading.Tasks.Task<string> RegistrarPagoTuCompraAsync(
                    string CodigoFactura, 
                    string ValorFactura, 
                    string TransaccionAprobada, 
                    string CodigoAutorizacion, 
                    string FirmaTuCompra, 
                    string NumeroTransaccion, 
                    string MetodoPago, 
                    string NombreMetodo, 
                    string Banco, 
                    string ValorBase, 
                    string ValorIva, 
                    string ValorReteiva, 
                    string ValorReteica, 
                    string ValorRetefuente, 
                    string Descripcion, 
                    string Descripcion2, 
                    string Detalle, 
                    string FechaPago, 
                    string NumeroTarjeta, 
                    string NumeroCuotas, 
                    string CorreoComprador, 
                    string NombreComprador, 
                    string ApellidoComprador, 
                    string DocumentoComprador, 
                    string TelefonoComprador, 
                    string DireccionComprador, 
                    string IPComprador, 
                    string CiudadComprador, 
                    string PaisComprador, 
                    string EstadoPago, 
                    string RazonRechazo, 
                    string TipoTarjeta, 
                    string CategoriaTarjeta, 
                    string PaisEmisor, 
                    string TelefonoBancoEmisor, 
                    string ValorComisionBancaria, 
                    string ValorDepositoBanco, 
                    string BancoRecaudador, 
                    string HoraPago, 
                    string Caja, 
                    string FormaPago, 
                    string Oficina, 
                    string CuentaBanco, 
                    string Jornada, 
                    string TipoRegistro, 
                    string Operador, 
                    string TipoTransaccion, 
                    string DescripcionTipoTransaccion, 
                    string FechaSaldoAplicado, 
                    string CodBancoRecaudador, 
                    string CelularTerminalTuCompra, 
                    string CelularNroConvenio, 
                    string Celular, 
                    string TerminalTuCompra, 
                    string NroConvenio, 
                    string SerialUnicoTransaccion, 
                    string ValidarorCorresponsalATH, 
                    string CompañiaId);
        
        [System.ServiceModel.OperationContractAttribute(Action="http://tempuri.org/IService/ActualizarValorTotalPagadoCierreComercial", ReplyAction="http://tempuri.org/IService/ActualizarValorTotalPagadoCierreComercialResponse")]
        System.Threading.Tasks.Task<string> ActualizarValorTotalPagadoCierreComercialAsync(int Contrato, float ValorTotalPagado, string TerceroCreadorId, string CompañiaId);
        
        [System.ServiceModel.OperationContractAttribute(Action="http://tempuri.org/IService/SeleccionarDescuentosTiposBienesPlazos", ReplyAction="http://tempuri.org/IService/SeleccionarDescuentosTiposBienesPlazosResponse")]
        System.Threading.Tasks.Task<string> SeleccionarDescuentosTiposBienesPlazosAsync(string CompañiaId, int TipoBienId, int Plazo);
    }
    
    [System.CodeDom.Compiler.GeneratedCodeAttribute("Microsoft.Tools.ServiceModel.Svcutil", "2.0.1-preview-30422-0661")]
    public interface IServiceChannel : SiiconWebService.IService, System.ServiceModel.IClientChannel
    {
    }
    
    [System.Diagnostics.DebuggerStepThroughAttribute()]
    [System.CodeDom.Compiler.GeneratedCodeAttribute("Microsoft.Tools.ServiceModel.Svcutil", "2.0.1-preview-30422-0661")]
    public partial class ServiceClient : System.ServiceModel.ClientBase<SiiconWebService.IService>, SiiconWebService.IService
    {
        
        /// <summary>
        /// Implement this partial method to configure the service endpoint.
        /// </summary>
        /// <param name="serviceEndpoint">The endpoint to configure</param>
        /// <param name="clientCredentials">The client credentials</param>
        static partial void ConfigureEndpoint(System.ServiceModel.Description.ServiceEndpoint serviceEndpoint, System.ServiceModel.Description.ClientCredentials clientCredentials);
        
        public ServiceClient() : 
                base(ServiceClient.GetDefaultBinding(), ServiceClient.GetDefaultEndpointAddress())
        {
            this.Endpoint.Name = EndpointConfiguration.BasicHttpBinding_IService.ToString();
            ConfigureEndpoint(this.Endpoint, this.ClientCredentials);
        }
        
        public ServiceClient(EndpointConfiguration endpointConfiguration) : 
                base(ServiceClient.GetBindingForEndpoint(endpointConfiguration), ServiceClient.GetEndpointAddress(endpointConfiguration))
        {
            this.Endpoint.Name = endpointConfiguration.ToString();
            ConfigureEndpoint(this.Endpoint, this.ClientCredentials);
        }
        
        public ServiceClient(EndpointConfiguration endpointConfiguration, string remoteAddress) : 
                base(ServiceClient.GetBindingForEndpoint(endpointConfiguration), new System.ServiceModel.EndpointAddress(remoteAddress))
        {
            this.Endpoint.Name = endpointConfiguration.ToString();
            ConfigureEndpoint(this.Endpoint, this.ClientCredentials);
        }
        
        public ServiceClient(EndpointConfiguration endpointConfiguration, System.ServiceModel.EndpointAddress remoteAddress) : 
                base(ServiceClient.GetBindingForEndpoint(endpointConfiguration), remoteAddress)
        {
            this.Endpoint.Name = endpointConfiguration.ToString();
            ConfigureEndpoint(this.Endpoint, this.ClientCredentials);
        }
        
        public ServiceClient(System.ServiceModel.Channels.Binding binding, System.ServiceModel.EndpointAddress remoteAddress) : 
                base(binding, remoteAddress)
        {
        }
        
        public System.Threading.Tasks.Task<string> ConsultarFacturasClienteAsync(string IdentificacionCliente)
        {
            return base.Channel.ConsultarFacturasClienteAsync(IdentificacionCliente);
        }
        
        public System.Threading.Tasks.Task<string> ConsultarFacturaReferenciaAsync(string referenciaFactura)
        {
            return base.Channel.ConsultarFacturaReferenciaAsync(referenciaFactura);
        }
        
        public System.Threading.Tasks.Task<string> SelecccionarCompañiasAsync()
        {
            return base.Channel.SelecccionarCompañiasAsync();
        }
        
        public System.Threading.Tasks.Task<string> SelecccionarAgenciasAsync()
        {
            return base.Channel.SelecccionarAgenciasAsync();
        }
        
        public System.Threading.Tasks.Task<string> SelecccionarMarcasAsync()
        {
            return base.Channel.SelecccionarMarcasAsync();
        }
        
        public System.Threading.Tasks.Task<string> SelecccionarMarcasTipoBienAsync(string CompañiaId, int TipoBienId)
        {
            return base.Channel.SelecccionarMarcasTipoBienAsync(CompañiaId, TipoBienId);
        }
        
        public System.Threading.Tasks.Task<string> SelecccionarAsesorAsync(long Cedula)
        {
            return base.Channel.SelecccionarAsesorAsync(Cedula);
        }
        
        public System.Threading.Tasks.Task<string> SelecccionarAsesorCodigoAsync(int Codigo)
        {
            return base.Channel.SelecccionarAsesorCodigoAsync(Codigo);
        }
        
        public System.Threading.Tasks.Task<string> SeleccionarAsesoresAgenciaAsync(string CompañiaId, int CodAgencia)
        {
            return base.Channel.SeleccionarAsesoresAgenciaAsync(CompañiaId, CodAgencia);
        }
        
        public System.Threading.Tasks.Task<string> SeleccionarAsesoresGerenteAsync(string TerceroId, string CompañiaId, int CodAgencia)
        {
            return base.Channel.SeleccionarAsesoresGerenteAsync(TerceroId, CompañiaId, CodAgencia);
        }
        
        public System.Threading.Tasks.Task<string> SelecccionarTerceroAsync(string Cedula)
        {
            return base.Channel.SelecccionarTerceroAsync(Cedula);
        }
        
        public System.Threading.Tasks.Task<string> SelecccionarTerceroAgenciasAsync(string TerceroId, string CompañiaId)
        {
            return base.Channel.SelecccionarTerceroAgenciasAsync(TerceroId, CompañiaId);
        }
        
        public System.Threading.Tasks.Task<string> SelecccionarTiposBienesCompañiaAsync(string CompañiaId)
        {
            return base.Channel.SelecccionarTiposBienesCompañiaAsync(CompañiaId);
        }
        
        public System.Threading.Tasks.Task<string> SelecccionarTiposBienesCompañiaAgenciaAsync(string CompañiaId, int CodAgencia)
        {
            return base.Channel.SelecccionarTiposBienesCompañiaAgenciaAsync(CompañiaId, CodAgencia);
        }
        
        public System.Threading.Tasks.Task<string> SelecccionarTiposBienesCompañiaAgencia2Async(string CompañiaId, int CodAgencia, string TipoReajuste)
        {
            return base.Channel.SelecccionarTiposBienesCompañiaAgencia2Async(CompañiaId, CodAgencia, TipoReajuste);
        }
        
        public System.Threading.Tasks.Task<string> SelecccionarPorcAdministracionCompañiaAsync(string CompañiaId)
        {
            return base.Channel.SelecccionarPorcAdministracionCompañiaAsync(CompañiaId);
        }
        
        public System.Threading.Tasks.Task<string> SelecccionarPorcInscripcionCompañiaAsync(string CompañiaId)
        {
            return base.Channel.SelecccionarPorcInscripcionCompañiaAsync(CompañiaId);
        }
        
        public System.Threading.Tasks.Task<string> SelecccionarBienesCompañiaAsync(string CompañiaId, int TipoBienId, int MarcaId)
        {
            return base.Channel.SelecccionarBienesCompañiaAsync(CompañiaId, TipoBienId, MarcaId);
        }
        
        public System.Threading.Tasks.Task<string> SeleccionarBienParametrosAsync(string CompañiaId, int TipoBienId, long ValorBien, int TipoBienParametroId)
        {
            return base.Channel.SeleccionarBienParametrosAsync(CompañiaId, TipoBienId, ValorBien, TipoBienParametroId);
        }
        
        public System.Threading.Tasks.Task<string> GenerarReferenciaPagoAsync(string CompañiaId, string NumeroDocumento, long ValorPagar, int ContratoTiendaId, string TerceroId)
        {
            return base.Channel.GenerarReferenciaPagoAsync(CompañiaId, NumeroDocumento, ValorPagar, ContratoTiendaId, TerceroId);
        }
        
        public System.Threading.Tasks.Task<string> GenerarReferenciaPagoVariosAsync(string CompañiaId, string NumeroDocumento, long ValorPagar, int ContratoTiendaId, int TipoReferenciaPagoId, string FechaLimite, string TerceroId)
        {
            return base.Channel.GenerarReferenciaPagoVariosAsync(CompañiaId, NumeroDocumento, ValorPagar, ContratoTiendaId, TipoReferenciaPagoId, FechaLimite, TerceroId);
        }
        
        public System.Threading.Tasks.Task<string> SelecccionarTiposMediosAsync()
        {
            return base.Channel.SelecccionarTiposMediosAsync();
        }
        
        public System.Threading.Tasks.Task<string> SelecccionarTiposMedios2Async(string CompañiaId, int CodAgencia)
        {
            return base.Channel.SelecccionarTiposMedios2Async(CompañiaId, CodAgencia);
        }
        
        public System.Threading.Tasks.Task<string> SelecccionarMediosAgenciaAsync(string CompañiaId, int TipoMedioId, int CodAgencia)
        {
            return base.Channel.SelecccionarMediosAgenciaAsync(CompañiaId, TipoMedioId, CodAgencia);
        }
        
        public System.Threading.Tasks.Task<string> CrearPersonaNaturalAsync(
                    string PrimerNombre, 
                    string SegundoNombre, 
                    string PrimerApellido, 
                    string SegundoApellido, 
                    int TipoDocumentoIdentidadId, 
                    string NumeroDocumento, 
                    string CiudadExpedicionId, 
                    string FechaNacimiento, 
                    string CiudadNacimientoId, 
                    int SexoId, 
                    int EstadoCivilId, 
                    string Email, 
                    string DireccionNotifiacion, 
                    string BarrioNotifiacion, 
                    string TelefonoNotifiacion, 
                    string CelularNotificacion, 
                    string DepartamentoNotificacionId, 
                    string CiudadNotificacionId, 
                    string EmpresaLabora, 
                    string CargoLabora, 
                    string DireccionLabora, 
                    string BarrioLabora, 
                    string TelefonoLabora, 
                    string CelularOficina, 
                    string DepartamentoLaboraId, 
                    string CiudadLaboraId, 
                    int IngresoMensual, 
                    int EgresoMensual, 
                    string Profesion, 
                    string TerceroId)
        {
            return base.Channel.CrearPersonaNaturalAsync(PrimerNombre, SegundoNombre, PrimerApellido, SegundoApellido, TipoDocumentoIdentidadId, NumeroDocumento, CiudadExpedicionId, FechaNacimiento, CiudadNacimientoId, SexoId, EstadoCivilId, Email, DireccionNotifiacion, BarrioNotifiacion, TelefonoNotifiacion, CelularNotificacion, DepartamentoNotificacionId, CiudadNotificacionId, EmpresaLabora, CargoLabora, DireccionLabora, BarrioLabora, TelefonoLabora, CelularOficina, DepartamentoLaboraId, CiudadLaboraId, IngresoMensual, EgresoMensual, Profesion, TerceroId);
        }
        
        public System.Threading.Tasks.Task<string> CrearCierreComercialAsync(
                    string PrimerNombre, 
                    string SegundoNombre, 
                    string PrimerApellido, 
                    string SegundoApellido, 
                    int TipoDocumentoIdentidadId, 
                    string NumeroDocumento, 
                    int Contrato, 
                    int CodTipoBien, 
                    int TipoMedioId, 
                    int MedioId, 
                    int CodAgencia, 
                    int CodAsesor, 
                    string FechaAdhesion, 
                    float ValorBien, 
                    float ValorTotalPagar, 
                    int CodConcesionario, 
                    int CodMarca, 
                    string FechaCierre, 
                    string CompañiaId, 
                    string TerceroId)
        {
            return base.Channel.CrearCierreComercialAsync(PrimerNombre, SegundoNombre, PrimerApellido, SegundoApellido, TipoDocumentoIdentidadId, NumeroDocumento, Contrato, CodTipoBien, TipoMedioId, MedioId, CodAgencia, CodAsesor, FechaAdhesion, ValorBien, ValorTotalPagar, CodConcesionario, CodMarca, FechaCierre, CompañiaId, TerceroId);
        }
        
        public System.Threading.Tasks.Task<string> CrearContratoAsync(
                    int Contrato, 
                    int Persona1Id, 
                    int Persona2Id, 
                    string FechaAdhesion, 
                    int CodAgencia, 
                    int CodAsesor, 
                    int CodConvenio, 
                    int CodConcesionario, 
                    int TipoMedioId, 
                    int MedioId, 
                    int MedioFechaId, 
                    int CodTipoBien, 
                    int BienId, 
                    float ValorBien, 
                    int CodMarca, 
                    int TipoBienParametroId, 
                    float PorcentajeInscripcion, 
                    float PorcentajeAdministracion, 
                    int DescuentoId, 
                    float PorcentajeDescuento, 
                    float MontoInscripcion, 
                    float MontoInscripcionIVA, 
                    int Plazo, 
                    float MontoAdministracion, 
                    float MontoAdministracionIVA, 
                    float CuotaNeta, 
                    string SuscriptorReferente, 
                    int TipoVentaId, 
                    string FechaCierre, 
                    string CompañiaId, 
                    string TerceroId, 
                    string ContratoPagos)
        {
            return base.Channel.CrearContratoAsync(Contrato, Persona1Id, Persona2Id, FechaAdhesion, CodAgencia, CodAsesor, CodConvenio, CodConcesionario, TipoMedioId, MedioId, MedioFechaId, CodTipoBien, BienId, ValorBien, CodMarca, TipoBienParametroId, PorcentajeInscripcion, PorcentajeAdministracion, DescuentoId, PorcentajeDescuento, MontoInscripcion, MontoInscripcionIVA, Plazo, MontoAdministracion, MontoAdministracionIVA, CuotaNeta, SuscriptorReferente, TipoVentaId, FechaCierre, CompañiaId, TerceroId, ContratoPagos);
        }
        
        public System.Threading.Tasks.Task<string> SeleccionarTiposPagosAsync()
        {
            return base.Channel.SeleccionarTiposPagosAsync();
        }
        
        public System.Threading.Tasks.Task<string> SeleccionarCuentasBancariasCompañiaAsync(string CompañiaId)
        {
            return base.Channel.SeleccionarCuentasBancariasCompañiaAsync(CompañiaId);
        }
        
        public System.Threading.Tasks.Task<string> SeleccionarConcesionarioCompañiaAsync(string CompañiaId)
        {
            return base.Channel.SeleccionarConcesionarioCompañiaAsync(CompañiaId);
        }
        
        public System.Threading.Tasks.Task<string> SeleccionarCierreComercialCompañiaAsync(string CompañiaId)
        {
            return base.Channel.SeleccionarCierreComercialCompañiaAsync(CompañiaId);
        }
        
        public System.Threading.Tasks.Task<string> CrearContratoPagoAsync(int TipoPagoId, System.DateTime FechaPago, int CodCuentaBancaria, long MontoPago, string Referencia, string Numero, int CodConcesionario, int ContratoId, int Contrato, string TerceroCreadorId, string CompañiaId)
        {
            return base.Channel.CrearContratoPagoAsync(TipoPagoId, FechaPago, CodCuentaBancaria, MontoPago, Referencia, Numero, CodConcesionario, ContratoId, Contrato, TerceroCreadorId, CompañiaId);
        }
        
        public System.Threading.Tasks.Task<string> RegistrarPagoTuCompraAsync(
                    string CodigoFactura, 
                    string ValorFactura, 
                    string TransaccionAprobada, 
                    string CodigoAutorizacion, 
                    string FirmaTuCompra, 
                    string NumeroTransaccion, 
                    string MetodoPago, 
                    string NombreMetodo, 
                    string Banco, 
                    string ValorBase, 
                    string ValorIva, 
                    string ValorReteiva, 
                    string ValorReteica, 
                    string ValorRetefuente, 
                    string Descripcion, 
                    string Descripcion2, 
                    string Detalle, 
                    string FechaPago, 
                    string NumeroTarjeta, 
                    string NumeroCuotas, 
                    string CorreoComprador, 
                    string NombreComprador, 
                    string ApellidoComprador, 
                    string DocumentoComprador, 
                    string TelefonoComprador, 
                    string DireccionComprador, 
                    string IPComprador, 
                    string CiudadComprador, 
                    string PaisComprador, 
                    string EstadoPago, 
                    string RazonRechazo, 
                    string TipoTarjeta, 
                    string CategoriaTarjeta, 
                    string PaisEmisor, 
                    string TelefonoBancoEmisor, 
                    string ValorComisionBancaria, 
                    string ValorDepositoBanco, 
                    string BancoRecaudador, 
                    string HoraPago, 
                    string Caja, 
                    string FormaPago, 
                    string Oficina, 
                    string CuentaBanco, 
                    string Jornada, 
                    string TipoRegistro, 
                    string Operador, 
                    string TipoTransaccion, 
                    string DescripcionTipoTransaccion, 
                    string FechaSaldoAplicado, 
                    string CodBancoRecaudador, 
                    string CelularTerminalTuCompra, 
                    string CelularNroConvenio, 
                    string Celular, 
                    string TerminalTuCompra, 
                    string NroConvenio, 
                    string SerialUnicoTransaccion, 
                    string ValidarorCorresponsalATH, 
                    string CompañiaId)
        {
            return base.Channel.RegistrarPagoTuCompraAsync(CodigoFactura, ValorFactura, TransaccionAprobada, CodigoAutorizacion, FirmaTuCompra, NumeroTransaccion, MetodoPago, NombreMetodo, Banco, ValorBase, ValorIva, ValorReteiva, ValorReteica, ValorRetefuente, Descripcion, Descripcion2, Detalle, FechaPago, NumeroTarjeta, NumeroCuotas, CorreoComprador, NombreComprador, ApellidoComprador, DocumentoComprador, TelefonoComprador, DireccionComprador, IPComprador, CiudadComprador, PaisComprador, EstadoPago, RazonRechazo, TipoTarjeta, CategoriaTarjeta, PaisEmisor, TelefonoBancoEmisor, ValorComisionBancaria, ValorDepositoBanco, BancoRecaudador, HoraPago, Caja, FormaPago, Oficina, CuentaBanco, Jornada, TipoRegistro, Operador, TipoTransaccion, DescripcionTipoTransaccion, FechaSaldoAplicado, CodBancoRecaudador, CelularTerminalTuCompra, CelularNroConvenio, Celular, TerminalTuCompra, NroConvenio, SerialUnicoTransaccion, ValidarorCorresponsalATH, CompañiaId);
        }
        
        public System.Threading.Tasks.Task<string> ActualizarValorTotalPagadoCierreComercialAsync(int Contrato, float ValorTotalPagado, string TerceroCreadorId, string CompañiaId)
        {
            return base.Channel.ActualizarValorTotalPagadoCierreComercialAsync(Contrato, ValorTotalPagado, TerceroCreadorId, CompañiaId);
        }
        
        public System.Threading.Tasks.Task<string> SeleccionarDescuentosTiposBienesPlazosAsync(string CompañiaId, int TipoBienId, int Plazo)
        {
            return base.Channel.SeleccionarDescuentosTiposBienesPlazosAsync(CompañiaId, TipoBienId, Plazo);
        }
        
        public virtual System.Threading.Tasks.Task OpenAsync()
        {
            return System.Threading.Tasks.Task.Factory.FromAsync(((System.ServiceModel.ICommunicationObject)(this)).BeginOpen(null, null), new System.Action<System.IAsyncResult>(((System.ServiceModel.ICommunicationObject)(this)).EndOpen));
        }
        
        public virtual System.Threading.Tasks.Task CloseAsync()
        {
            return System.Threading.Tasks.Task.Factory.FromAsync(((System.ServiceModel.ICommunicationObject)(this)).BeginClose(null, null), new System.Action<System.IAsyncResult>(((System.ServiceModel.ICommunicationObject)(this)).EndClose));
        }
        
        private static System.ServiceModel.Channels.Binding GetBindingForEndpoint(EndpointConfiguration endpointConfiguration)
        {
            if ((endpointConfiguration == EndpointConfiguration.BasicHttpBinding_IService))
            {
                System.ServiceModel.BasicHttpBinding result = new System.ServiceModel.BasicHttpBinding();
                result.MaxBufferSize = int.MaxValue;
                result.ReaderQuotas = System.Xml.XmlDictionaryReaderQuotas.Max;
                result.MaxReceivedMessageSize = int.MaxValue;
                result.AllowCookies = true;
                return result;
            }
            throw new System.InvalidOperationException(string.Format("Could not find endpoint with name \'{0}\'.", endpointConfiguration));
        }
        
        private static System.ServiceModel.EndpointAddress GetEndpointAddress(EndpointConfiguration endpointConfiguration)
        {
            if ((endpointConfiguration == EndpointConfiguration.BasicHttpBinding_IService))
            {
                return new System.ServiceModel.EndpointAddress("http://wstienda.autofinanciera.com.co/Service.svc");
            }
            throw new System.InvalidOperationException(string.Format("Could not find endpoint with name \'{0}\'.", endpointConfiguration));
        }
        
        private static System.ServiceModel.Channels.Binding GetDefaultBinding()
        {
            return ServiceClient.GetBindingForEndpoint(EndpointConfiguration.BasicHttpBinding_IService);
        }
        
        private static System.ServiceModel.EndpointAddress GetDefaultEndpointAddress()
        {
            return ServiceClient.GetEndpointAddress(EndpointConfiguration.BasicHttpBinding_IService);
        }
        
        public enum EndpointConfiguration
        {
            
            BasicHttpBinding_IService,
        }
    }
}
