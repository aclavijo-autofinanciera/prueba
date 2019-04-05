using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace Freyja
{
    public class Utilities
    {
    }

    static public class Constants
    {
        /// <summary>
        /// Número identificador del convenio de Autofinanciera
        /// </summary>
        public const string ConvenioAuto = "7709998007680";
        /// <summary>
        /// Número identificador del convenio de Electroplan
        /// </summary>
        public const string ConvenioElectro = "7709998007673";
        /// <summary>
        /// Identificador único de compañía Autofinanciera
        /// </summary>
        public const string GuuidAuto = "26e0e553-8bb9-41b2-869a-1fddaf06e900";
        /// <summary>
        /// Identificador único de Compañía Electroplan
        /// </summary>
        public const string GuuidElectro = "6831062e-c994-4686-a989-1964b1200cbc";
        /// <summary>
        /// Identificador único de Usuario en el Siicon
        /// </summary>
        public const string GuuidUsuarioSiicon = "85250b4a-e393-4b0a-b787-51edb8172118";


        public const string ContratoPDF = "ContratoDigital";
        public const string ReciboPagoPDF = "ReciboDePago";
        public const string CotizacionPDF = "Cotizacion";

        public const string ContratoAuto = "contrato/2018-09-14-autofinanciera_v.2.0.pdf";
        public const string ContratoAutoKoreana = "contrato/2018-09-14-autokoreana_v-2.0.pdf";
        public const string ContratoColWager = "contrato/2018-09-14-colwager_v-2.0.pdf";
        public const string ContratoElectro = "contrato/2018-09-14-electroplan_v-2.0.pdf";
        public const string ContratoKia = "contrato/2018-09-14-kiaplan_v-2.0.pdf";
        public const string ContratoMotoMas = "contrato/2018-09-14-motomas_v-2.0.pdf";

        public const string CotizacionAuto = "cotizacion/2018-09-14-Cotizacion_auto_v-2.0.pdf";
        public const string CotizacionElectro = "cotizacion/2018-09-14-Cotizacion_electro_v-2.0.pdf";

        public const string ReciboAuto = "recibo/2019-01-11-recibo_auto_v-3.1.pdf";
        public const string ReciboElectro = "recibo/2019-01-11-recibo_electro_v-3.1.pdf";



        public enum Estados
        {
            TipoPersona = 1,
            TipoIdentificacion = 2,
            Departamento = 3,
            Ciudad = 4,
            Sexo = 5,
            EstadoCivil = 6
        }

        public enum EstadosProspectos
        {
            PorConfirmarCorreo = 51,
            Confirmado = 52,
            Presupuestado = 53,
            Completado = 54,
            PorContactar = 55,
            Contactar = 56,
            NoContactable = 57,
            NoAceptado = 58,
            NoProcesado = 59
        }

        public enum EstadosContratos
        {
            PorAceptarCondiciones = 60,
            PorFacturar = 61,
            PorPagar = 62,
            Pagada = 63,
            Cerrado = 64,
            PagadoParcialmente = 65,
            Anulado = 66,
            Suspendido = 67
        }
    }

}
