using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace ContratoDigital.Models
{
    public class ContratoDigitalModel
    {
        // Datos Suscriptor
        public int numero_de_contrato { get; set; }
        public string nombre_razon_social_suscriptor { get; set; }
        public string tipo_documento_identidad_suscriptor { get; set; }
        public int documento_identidad_suscriptor { get; set; }
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
        public decimal ingresos_mensuales_suscriptor { get; set; }
        public decimal egresos_mensuales_suscriptor { get; set; }
        public decimal otros_ingresos_suscriptor { get; set; }
        public string dirección_empleo_suscriptor { get; set; }
        public string departamento_empleo_suscriptor { get; set; }
        public string ciudad_empleo_suscriptor { get; set; }
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
        public string ciudad_suscriptor_conjunto { get; set; }
        public string telefono_suscriptor_conjunto { get; set; }
        public string celular_suscriptor_conjunto { get; set; }
        public string empresa_empleadora_suscriptor_conjunto { get; set; }
        public string cargo_suscriptor_conjunto { get; set; }
        public decimal ingresos_mensuales_suscriptor_conjunto { get; set; }
        public decimal egresos_mensuales_suscriptor_conjunto { get; set; }
        public decimal otros_ingresos_suscriptor_conjunto { get; set; }
        public string direccion_empleo_suscriptor_conjunto { get; set; }
        public string departamento_empleo_suscriptor_conjunto { get; set; }
        public string ciudad_empleo_suscriptor_conjunto { get; set; }
        public string telefono_empleo_suscriptor_conjunto { get; set; }
        public string celular_empleo_suscriptor_conjunto { get; set; }
        public string profesion_suscriptor_conjunto { get; set; }
        public string correspondencia_suscriptor_conjunto { get; set; }
        public string email_suscriptor_conjunto { get; set; }
        
        // Datos del bien
        public string tipo_de_bien { get; set; }
        public string marca_exclusiva_bien { get; set; }
        public string detalles_bien { get; set; }
        public Decimal valor_bien { get; set; }
        public string cuota_bien { get; set; }
        public string codigo_bien { get; set; }
        public string plazo_bien { get; set; }
        public decimal porcentaje_cuota_ingreso { get; set; }
        public decimal cuota_ingreso { get; set; }
        public decimal porcentaje_iva_cuota_ingreso { get; set; }
        public decimal iva_cuota_ingreso { get; set; }
        public decimal total_cuota_ingreso { get; set; }
        public decimal primera_cuota_neta { get; set; }
        public decimal porcentaje_administracion { get; set; }
        public decimal administracion { get; set; }
        public decimal porcentaje_iva_administracion { get; set; }
        public decimal iva_administracion { get; set; }
        public decimal total_cuota_bruta { get; set; }
        public decimal valor_primero_pago { get; set; }
        public string agencia { get; set; }
        public string consecionario { get; set; }
        public string gerente { get; set; }
        public string asesor_comercial { get; set; }
        public string codigo_uso_interno { get; set; }
        public DateTime fecha_suscripcion_contrato { get; set; }
        public string distribuido_por_marca { get; set; }


    }
}

