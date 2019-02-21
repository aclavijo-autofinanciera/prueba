using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Threading.Tasks;

namespace ContratoDigital.Models
{
    public class Contrato
    {
        // Datos Suscriptor
        [Key]
        public int IdContrato { get; set; }
        public int IdProspecto { get; set; }
        public int numero_de_contrato { get; set; }
        public string primer_nombre { get; set; }
        public string segundo_nombre { get; set; }
        public string primer_apellido { get; set; }
        public string segundo_apellido { get; set; }
        public string tipo_documento_identidad_suscriptor { get; set; }
        public int documento_identidad_suscriptor { get; set; }
        public string anverso_documento { get; set; }
        public string reverso_documento { get; set; }
        public string procedencia_documento_identidad_suscriptor { get; set; }
        public string nombre_razon_social_representante_legal { get; set; }
        public string tipo_documento_representante_legal { get; set; }
        public string procedencia_documento_identidad_representante_legal { get; set; }
        public int documento_identidad_representante_legal { get; set; }
        public DateTime fecha_nacimiento_suscriptor { get; set; }
        public string lugar_nacimiento_suscriptor { get; set; }
        public string sexo_suscriptor { get; set; }
        public string estado_civil_suscriptor { get; set; }
        public string direccion_domicilio_suscriptor { get; set; }
        public string pais_suscriptor { get; set; }
        public string departamento_suscriptor { get; set; }
        public string ciudad_suscriptor { get; set; }
        public string telefono_suscriptor { get; set; }
        public string celular_suscriptor { get; set; }
        public string empresa_empleadora_suscriptor { get; set; }
        public string cargo_suscriptor { get; set; }
        public double ingresos_mensuales_suscriptor { get; set; }
        public double egresos_mensuales_suscriptor { get; set; }
        public double otros_ingresos_suscriptor { get; set; }
        public string direccion_empleo_suscriptor { get; set; }
        public string departamento_empleo_suscriptor { get; set; }
        public string ciudad_empleo_suscriptor { get; set; }
        public string pais_empleo_suscriptor { get; set; }
        public string telefono_empleo_suscriptor { get; set; }
        public string celular_empleo_suscriptor { get; set; }
        public string profesion_suscriptor { get; set; }
        public string envio_correspondencia_suscriptor { get; set; }
        public string email_suscriptor { get; set; }
        

        // Datos Suscriptor conjunto
        public string nombre_suscriptor_conjunto { get; set; }
        public string tipo_identidad_suscriptor_conjunto { get; set; }
        public int documento_identidad_suscriptor_conjunto { get; set; }
        public string procedencia_documento_identidad_suscriptor_conjunto { get; set; }
        public string representante_legal_suscriptor_conjunto { get; set; }
        public string tipo_identidad_representante_legal_suscriptor_conjunto { get; set; }
        public int documento_identidad_representante_legal_suscriptor_conjunto { get; set; }
        public string procedencia_identificacion_representante_legal_suscriptor_conjunto { get; set; }
        public DateTime fecha_nacimiento_suscriptor_conjunto { get; set; }
        public string lugar_nacimiento_suscriptor_conjunto { get; set; }
        public string sexo_suscriptor_conjunto { get; set; }
        public string estado_civil_suscriptor_conjunto { get; set; }
        public string direccion_suscriptor_conjunto { get; set; }
        public string departamento_suscriptor_conjunto { get; set; }
        public string pais_suscriptor_conjunto { get; set; }
        public string ciudad_suscriptor_conjunto { get; set; }
        public string telefono_suscriptor_conjunto { get; set; }
        public string celular_suscriptor_conjunto { get; set; }
        public string empresa_empleadora_suscriptor_conjunto { get; set; }
        public string cargo_suscriptor_conjunto { get; set; }
        public double ingresos_mensuales_suscriptor_conjunto { get; set; }
        public double egresos_mensuales_suscriptor_conjunto { get; set; }
        public double otros_ingresos_suscriptor_conjunto { get; set; }
        public string direccion_empleo_suscriptor_conjunto { get; set; }
        public string departamento_empleo_suscriptor_conjunto { get; set; }
        public string ciudad_empleo_suscriptor_conjunto { get; set; }        
        public string pais_empleo_suscriptor_conjunto { get; set; }        
        public string telefono_empleo_suscriptor_conjunto { get; set; }
        public string celular_empleo_suscriptor_conjunto { get; set; }
        public string profesion_suscriptor_conjunto { get; set; }
        public string correspondencia_suscriptor_conjunto { get; set; }
        public string email_suscriptor_conjunto { get; set; }
        
        // Datos del bien
        public string id_compania { get; set; }
        public string compania { get; set; }
        public string tipo_de_bien { get; set; }
        public int id_tipo_de_bien { get; set; }
        public int id_fecha_medio { get; set; }
        public int id_tipo_bien_parametro { get; set; }
        public string marca_exclusiva_bien { get; set; }
        public int id_marca { get; set; }
        public string detalles_bien { get; set; }
        public string descripcion_bien { get; set; }
        public double valor_bien { get; set; }
        public string cuota_bien { get; set; }
        public string codigo_bien { get; set; }
        public string plazo_bien { get; set; }
        public double porcentaje_cuota_ingreso { get; set; }
        public double porcentaje_administracion { get; set; }
        public double porcentaje_iva { get; set; }
        public int tipo_calculo { get; set; }
        public string descripcion_tipo_calculo { get; set; }

        public double cuota_ingreso { get; set; }        
        public double iva_cuota_ingreso { get; set; }
        public double total_cuota_ingreso { get; set; }
        public double primera_cuota_neta { get; set; }        
        public double administracion { get; set; }        
        public double iva_administracion { get; set; }
        public double total_cuota_bruta { get; set; }
        public double valor_primer_pago { get; set; }
        public string agencia { get; set; }
        public string consecionario { get; set; }
        public string gerente { get; set; }
        public string asesor_comercial { get; set; }
        public string codigo_uso_interno { get; set; }
        public DateTime fecha_suscripcion_contrato { get; set; }
        public string distribuido_por_marca { get; set; }

        public virtual Prospecto Prospecto { get; set; }
        public virtual ConfirmacionContrato ConfirmacionContratos { get; set; }
        public virtual DocumentoIdentidad DocumentoIdentidad { get; set; }
        public virtual List<RecibosPago> RecibosPago { get; set; }
        public virtual List<Pagos> Pagos { get; set; }
        public virtual List<PagoManual> PagosManuales { get; set; }
    }
}

