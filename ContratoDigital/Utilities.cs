using System;
using System.Collections.Generic;
using System.Globalization;
using System.IO;
using System.Linq;
using System.Reflection;
using System.Threading.Tasks;
using ContratoDigital.Areas.Identity.Data;
using ContratoDigital.Models;
using iText.Barcodes;
using iText.Forms;
using iText.Forms.Fields;
using iText.Kernel.Colors;
using iText.Kernel.Pdf;
using iText.Layout.Element;
using MailKit.Net.Smtp;
using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Identity;
using MimeKit;
using MimeKit.Text;

namespace ContratoDigital
{
    /// <summary>
    /// Métodos utilitarios iterativos. 
    /// </summary>
    static public class Utilities
    {       
        
        /// <summary>
        /// Asigna todos los valores de la clase contrato a un PDF.
        /// </summary>
        /// <param name="fields">Lista de campos del archivo PDF como tal</param>
        /// <param name="contrato">Modelo de datos de todas la personas.</param>
        static public void FillPdf(IDictionary<String, PdfFormField> fields, Contrato contrato)
        {
            PdfFormField toSet;

            // Número de contrato
            fields.TryGetValue("numero_de_contrato", out toSet);
            toSet.SetValue(contrato.numero_de_contrato.ToString().ToUpper());

            // Nombre razón social suscriptor
            fields.TryGetValue("nombre_razon_social_suscriptor", out toSet);
            toSet.SetValue((contrato.primer_nombre + " " + contrato.segundo_nombre + " " + contrato.primer_apellido + " " + contrato.segundo_apellido).ToUpper());

            // Tipo de documento de identidad
            fields.TryGetValue("tipo_documento_identidad_suscriptor", out toSet);
            switch(contrato.tipo_documento_identidad_suscriptor)
            {
                case "1":
                    toSet.SetValue("CC");
                    break;
                case "2":
                    toSet.SetValue("CE");
                    break;
                case "3":
                    toSet.SetValue("NIT");
                    break;
            }
            

            // Número de documento de identidad
            fields.TryGetValue("documento_identidad_suscriptor", out toSet);
            toSet.SetValue(contrato.documento_identidad_suscriptor.ToString().ToUpper());

            // Procedencia documento de identidad
            fields.TryGetValue("procedencia_documento_identidad_suscriptor", out toSet);
            toSet.SetValue(contrato.procedencia_documento_identidad_suscriptor.ToUpper());

            if(contrato.documento_identidad_representante_legal>0)
            {            
                // Nombre representante Legal
                fields.TryGetValue("nombre_razon_social_representante_legal", out toSet);
                toSet.SetValue(contrato.nombre_razon_social_representante_legal.ToUpper());

                // Tipo de documento identidad
                fields.TryGetValue("tipo_documento_representante_legal", out toSet);
                toSet.SetValue(contrato.tipo_documento_representante_legal.ToUpper());

                // Documento identidad del representante legal
                fields.TryGetValue("documento_identidad_representante_legal", out toSet);
                toSet.SetValue(contrato.documento_identidad_representante_legal.ToString().ToUpper());

                // Procedencia documento de identidad representate legal
                fields.TryGetValue("procedencia_documento_identidad_representante_legal", out toSet);
                toSet.SetValue(contrato.procedencia_documento_identidad_representante_legal.ToUpper());
            }

            // Fecha nacimiento suscriptor
            fields.TryGetValue("ano_nacimiento_suscriptor", out toSet);
            toSet.SetValue(String.Format("{0:yyyy}", contrato.fecha_nacimiento_suscriptor).ToUpper());
            fields.TryGetValue("mes_nacimiento_suscriptor", out toSet);
            toSet.SetValue(String.Format("{0:MM}", contrato.fecha_nacimiento_suscriptor).ToUpper());
            fields.TryGetValue("dia_nacimiento_suscriptor", out toSet);
            toSet.SetValue(String.Format("{0:dd}", contrato.fecha_nacimiento_suscriptor).ToUpper());

            // Lugar de nacimiento suscriptor
            fields.TryGetValue("lugar_nacimiento_suscriptor", out toSet);
            toSet.SetValue(contrato.lugar_nacimiento_suscriptor.ToUpper());

            // Sexo suscriptor
            fields.TryGetValue("sexo_suscriptor", out toSet);
            toSet.SetValue(contrato.sexo_suscriptor);

            // Estado Civil Suscriptor
            fields.TryGetValue("estado_civil_suscriptor", out toSet);
            toSet.SetValue(contrato.estado_civil_suscriptor);

            // Dirección de domicilio suscriptor
            fields.TryGetValue("direccion_domicilio_suscriptor", out toSet);
            toSet.SetValue(contrato.direccion_domicilio_suscriptor.ToUpper());

            // Departamento de suscriptor 
            fields.TryGetValue("departamento_suscriptor", out toSet);
            toSet.SetValue(contrato.departamento_suscriptor.ToUpper());

            // Ciudad suscriptor
            fields.TryGetValue("ciudad_suscriptor", out toSet);
            toSet.SetValue(contrato.ciudad_suscriptor.ToUpper());

            // Teléfono suscritpro
            fields.TryGetValue("telefono_suscriptor", out toSet);
            toSet.SetValue(contrato.telefono_suscriptor.ToUpper());

            // Celular Suscriptor
            fields.TryGetValue("celular_suscriptor", out toSet);
            toSet.SetValue(contrato.celular_suscriptor.ToUpper());

            // Empresa Empleadora suscriptor
            fields.TryGetValue("empresa_empleadora_suscriptor", out toSet);
            toSet.SetValue(contrato.empresa_empleadora_suscriptor.ToUpper());

            // Cargo Suscriptor
            fields.TryGetValue("cargo_suscriptor", out toSet);
            toSet.SetValue(contrato.cargo_suscriptor.ToUpper());

            // Ingresos mensuales suscriptor
            fields.TryGetValue("ingresos_mensuales_suscriptor", out toSet);
            toSet.SetValue(String.Format("{0:0,0.00}", contrato.ingresos_mensuales_suscriptor).ToUpper());

            // Egresos mensuales suscriptor
            fields.TryGetValue("egresos_mensuales_suscriptor", out toSet);
            toSet.SetValue(String.Format("{0:0,0.00}", contrato.egresos_mensuales_suscriptor).ToUpper());

            // Otros ingresos mensuales suscriptor
            fields.TryGetValue("otros_ingresos_suscriptor", out toSet);
            toSet.SetValue(String.Format("{0:0,0.00}", contrato.otros_ingresos_suscriptor).ToUpper());


            // Dirección oficina laboral suscriptor
            fields.TryGetValue("direccion_empleo_suscriptor", out toSet);
            toSet.SetValue(contrato.direccion_empleo_suscriptor.ToUpper());

            // Departamento laboral suscriptor
            fields.TryGetValue("departamento_empleo_suscriptor", out toSet);
            toSet.SetValue(contrato.departamento_empleo_suscriptor.ToUpper());

            // ciudad laboral suscriptor
            fields.TryGetValue("ciudad_empleo_suscriptor", out toSet);
            toSet.SetValue(contrato.ciudad_empleo_suscriptor.ToUpper());

            //Teléfono Laboral Suscriptor
            fields.TryGetValue("telefono_empleo_suscriptor", out toSet);
            toSet.SetValue(contrato.telefono_empleo_suscriptor.ToUpper());

            // Celular Laboral Suscriptor
            fields.TryGetValue("celular_empleo_suscriptor", out toSet);
            toSet.SetValue(contrato.celular_empleo_suscriptor.ToUpper());

            // Profesión o Actividad Económica
            fields.TryGetValue("profesion_suscriptor", out toSet);
            toSet.SetValue(contrato.profesion_suscriptor.ToUpper());

            // Envío correspondencia
            fields.TryGetValue("envio_correspondencia_suscriptor", out toSet);
            //contrato.envio_correspondencia_suscriptor == "email" ?  :;
            toSet.SetValue(contrato.envio_correspondencia_suscriptor == "email" ? "email" :contrato.envio_correspondencia_suscriptor);

            // Email
            fields.TryGetValue("email_suscriptor", out toSet);
            if(contrato.envio_correspondencia_suscriptor == "email")
            {
                toSet.SetValue(contrato.email_suscriptor.ToUpper() + " [CORRESPONDENCIA SERÁ ENVIADA AL CORREO ELECTRÓNICO]");
            }
            else
            {
                toSet.SetValue(contrato.email_suscriptor.ToUpper());
            }
            

            if(contrato.documento_identidad_suscriptor_conjunto>0)
            {
                // Suscriptor Conjunto
                // Nombre suscriptor conjunto
                fields.TryGetValue("nombre_suscriptor_conjunto", out toSet);
                toSet.SetValue(contrato.nombre_suscriptor_conjunto.ToUpper());

                // Tipo de documento de identidad
                fields.TryGetValue("tipo_identidad_suscriptor_conjunto", out toSet);
                switch (contrato.tipo_identidad_suscriptor_conjunto)
                {
                    case "1":
                        toSet.SetValue("CC");
                        break;
                    case "2":
                        toSet.SetValue("CE");
                        break;
                    case "3":
                        toSet.SetValue("NIT");
                        break;
                }
                //toSet.SetValue(contrato.tipo_identidad_suscriptor_conjunto);

                // Número de documento identidad
                fields.TryGetValue("documento_identidad_suscriptor_conjunto", out toSet);
                toSet.SetValue(contrato.documento_identidad_suscriptor_conjunto.ToString().ToUpper());

                // Procedencia de documento de identidad
                fields.TryGetValue("procedencia_documento_identidad_suscriptor_conjunto", out toSet);
                toSet.SetValue(contrato.procedencia_documento_identidad_suscriptor.ToUpper());

                if(contrato.documento_identidad_representante_legal_suscriptor_conjunto>0)
                {
                    // Nombre representante legal de suscriptor conjunto
                    fields.TryGetValue("representante_legal_suscriptor_conjunto", out toSet);
                    toSet.SetValue(contrato.representante_legal_suscriptor_conjunto.ToUpper());

                    // Tipo de documento representante legal suscritpr conjunto 
                    fields.TryGetValue("tipo_identidad_representante_legal_suscriptor_conjunto", out toSet);                    
                    switch (contrato.tipo_identidad_representante_legal_suscriptor_conjunto)
                    {
                        case "1":
                            toSet.SetValue("CC");
                            break;
                        case "2":
                            toSet.SetValue("CE");
                            break;
                        case "3":
                            toSet.SetValue("NIT");
                            break;
                    }

                    // documento de identidad representante legal
                    fields.TryGetValue("documento_identidad_representante_legal_suscriptor_conjunto", out toSet);
                    toSet.SetValue(contrato.documento_identidad_representante_legal_suscriptor_conjunto.ToString().ToUpper());

                    // Procedencia del documento de identidad representante legal
                    fields.TryGetValue("procedencia_identificacion_representante_legal_suscriptor_conjunto", out toSet);
                    toSet.SetValue(contrato.procedencia_identificacion_representante_legal_suscriptor_conjunto.ToUpper());

                }

                // fecha suscriptor conjunto
                fields.TryGetValue("ano_nacimiento_suscriptor_conjunto", out toSet);
                toSet.SetValue(String.Format("{0:yyyy}", contrato.fecha_nacimiento_suscriptor_conjunto).ToUpper());
                fields.TryGetValue("mes_nacimiento_suscriptor_conjunto", out toSet);
                toSet.SetValue(String.Format("{0:MM}", contrato.fecha_nacimiento_suscriptor_conjunto).ToUpper());
                fields.TryGetValue("dia_nacimiento_suscriptor_conjunto", out toSet);
                toSet.SetValue(String.Format("{0:dd}", contrato.fecha_nacimiento_suscriptor_conjunto).ToUpper());

                // lugar nacimiento suscriptor conjunto
                fields.TryGetValue("lugar_nacimiento_suscriptor_conjunto", out toSet);
                toSet.SetValue(contrato.lugar_nacimiento_suscriptor_conjunto.ToUpper());

                // Sexo Suscriptor conjunto
                fields.TryGetValue("sexo_suscriptor_conjunto", out toSet);
                toSet.SetValue(contrato.sexo_suscriptor_conjunto);

                // Estado civil
                fields.TryGetValue("estado_civil_suscriptor_conjunto", out toSet);
                toSet.SetValue(contrato.estado_civil_suscriptor_conjunto);

                // Dirección domicilio suscriptor conjunto
                fields.TryGetValue("dirección_suscriptor_conjunto", out toSet);
                toSet.SetValue(contrato.direccion_suscriptor_conjunto.ToUpper());

                // departamento suscriptor conjunto
                fields.TryGetValue("departamento_suscriptor_conjunto", out toSet);
                toSet.SetValue(contrato.departamento_suscriptor_conjunto.ToUpper());

                // ciudad suscriptor conjuntos
                fields.TryGetValue("ciudad_suscriptor_conjunto", out toSet);
                toSet.SetValue(contrato.ciudad_suscriptor_conjunto.ToUpper());

                // Telefono suscriptor conjunto
                fields.TryGetValue("telefono_suscriptor_conjunto", out toSet);
                toSet.SetValue(contrato.telefono_suscriptor_conjunto.ToUpper());

                // Celular suscriptor conjunto
                fields.TryGetValue("celular_suscriptor_conjunto", out toSet);
                toSet.SetValue(contrato.celular_suscriptor_conjunto.ToUpper());

                // Empresa laboral del Suscriptor conjunto
                fields.TryGetValue("empresa_empleadora_suscriptor_conjunto", out toSet);
                toSet.SetValue(contrato.empresa_empleadora_suscriptor_conjunto.ToUpper());

                // Cargo laboral suscriptor conjunto
                fields.TryGetValue("cargo_suscriptor_conjunto", out toSet);
                toSet.SetValue(contrato.cargo_suscriptor_conjunto.ToUpper());

                // ingresos Mensuales
                fields.TryGetValue("ingresos_mensuales_suscriptor_conjunto", out toSet);
                toSet.SetValue(String.Format("{0:0,0.00}", contrato.ingresos_mensuales_suscriptor_conjunto).ToUpper());

                // Egresos Mensuales
                fields.TryGetValue("egresos_mensuales_suscriptor_conjunto", out toSet);
                toSet.SetValue(String.Format("{0:0,0.00}", contrato.egresos_mensuales_suscriptor_conjunto).ToUpper());

                // Otros ingresos
                fields.TryGetValue("otros_ingresos_suscriptor_conjunto", out toSet);
                toSet.SetValue(String.Format("{0:0,0.00}", contrato.otros_ingresos_suscriptor_conjunto).ToUpper());

                // Dirección oficina laboral suscriptor conjunto
                fields.TryGetValue("direccion_empleo_suscriptor_conjunto", out toSet);
                toSet.SetValue(contrato.direccion_empleo_suscriptor_conjunto.ToUpper());

                //Departamento suscriptor conjunto
                fields.TryGetValue("departamento_empleo_suscriptor_conjunto", out toSet);
                toSet.SetValue(contrato.departamento_empleo_suscriptor_conjunto.ToUpper());

                // CIudad empleo suscriptor conjunto
                fields.TryGetValue("ciudad_empleo_suscriptor_conjunto", out toSet);
                toSet.SetValue(contrato.ciudad_empleo_suscriptor_conjunto.ToUpper());

                // Teléfono empleo Suscriptor Conjunto            
                fields.TryGetValue("telefono_empleo_suscriptor_conjunto", out toSet);
                toSet.SetValue(contrato.telefono_empleo_suscriptor_conjunto.ToUpper());

                // Celular empleo Suscriptor conjunto
                fields.TryGetValue("celular_empleo_suscriptor_conjunto", out toSet);
                toSet.SetValue(contrato.celular_empleo_suscriptor.ToUpper());

                // Profesion o actividad económica y suscriptor conjunto
                fields.TryGetValue("profesion_suscriptor_conjunto", out toSet);
                toSet.SetValue(contrato.profesion_suscriptor_conjunto.ToUpper());

                // Envio Correspondencia suscriptor conjunto 
                fields.TryGetValue("correspondencia_suscriptor_conjunto", out toSet);
                toSet.SetValue(contrato.correspondencia_suscriptor_conjunto == "email" ? "email" : contrato.envio_correspondencia_suscriptor);
                //toSet.SetValue(contrato.envio_correspondencia_suscriptor.ToUpper());

                // Email Suscriptor Conjunto
                fields.TryGetValue("email_suscriptor_conjunto", out toSet);                
                if (contrato.correspondencia_suscriptor_conjunto == "email")
                {
                    toSet.SetValue(contrato.email_suscriptor_conjunto.ToUpper() + " [CORRESPONDENCIA SERÁ ENVIADA AL CORREO ELECTRÓNICO]");
                }
                else
                {
                    toSet.SetValue(contrato.email_suscriptor_conjunto.ToUpper());
                }


            }

            // Tipo de bien
            fields.TryGetValue("tipo_de_bien", out toSet);
            //toSet.SetValue(contrato.tipo_de_bien);
            if(contrato.id_tipo_de_bien == 1)
            {
                toSet.SetValue("motocicleta");
            }
            else
            {
                toSet.SetValue("vehiculo");
            }

            // marca exclusiva bien
            fields.TryGetValue("marca_exclusiva_bien", out toSet);
            toSet.SetValue(contrato.marca_exclusiva_bien.ToUpper());

            // Detalles bien
            fields.TryGetValue("detalles_bien", out toSet);
            toSet.SetValue(contrato.descripcion_bien.ToUpper());

            // Valor del bien
            fields.TryGetValue("valor_bien", out toSet);
            toSet.SetValue(String.Format("{0:0,0.00}", contrato.valor_bien));

            // Cuota del bien
            fields.TryGetValue("cuota_bien", out toSet);
            toSet.SetValue(contrato.cuota_bien.ToLower());

            // codigo bien
            fields.TryGetValue("codigo_bien", out toSet);
            toSet.SetValue(contrato.codigo_bien.ToUpper());

            // Plazo
            fields.TryGetValue("plazo", out toSet);
            if(contrato.plazo_bien.Equals("40"))
            {
                toSet.SetValue("40");
            }
            else if(contrato.plazo_bien.Equals("60"))
            {
                toSet.SetValue("60");
            }
            else if(contrato.plazo_bien.Equals("72"))
            {
                if(contrato.valor_bien < 25000000)
                {
                    toSet.SetValue("72");
                }
                else
                {
                    toSet.SetValue("53-72");
                }
            }
            else if(contrato.plazo_bien.Equals("78"))
            {
                if(contrato.valor_bien< 33000000)
                {
                    toSet.SetValue("78");
                }
                else if(contrato.valor_bien>33000000 && contrato.valor_bien<45000000)
                {
                    toSet.SetValue("25-78");
                }
                else
                {
                    toSet.SetValue("34-78");
                }
            }
            else
            {
                toSet.SetValue("25-90");
            }

            

            // cuota ingreso
            fields.TryGetValue("cuota_ingreso", out toSet);
            toSet.SetValue(String.Format("{0:0,0.00}", contrato.cuota_ingreso));

            // Administración
            fields.TryGetValue("administracion", out toSet);
            toSet.SetValue(String.Format("{0:0,0.00}", contrato.administracion));

            // IVA Cuota Ingreso
            fields.TryGetValue("iva_cuota_ingreso", out toSet);
            toSet.SetValue(String.Format("{0:0,0.00}", contrato.iva_cuota_ingreso));

            // IVA Administración
            fields.TryGetValue("iva_administracion", out toSet);
            toSet.SetValue(String.Format("{0:0,0.00}", contrato.iva_administracion));

            // Total Cuota ingreso
            fields.TryGetValue("total_cuota_ingreso", out toSet);
            toSet.SetValue(String.Format("{0:0,0.00}", contrato.total_cuota_ingreso));

            // Total Cuota Bruta
            fields.TryGetValue("total_cuota_bruta", out toSet);
            toSet.SetValue(String.Format("{0:0,0.00}", contrato.total_cuota_bruta));

            // Primera cuota neta
            fields.TryGetValue("primera_cuota_neta", out toSet);
            toSet.SetValue(String.Format("{0:0,0.00}", contrato.primera_cuota_neta));

            // Valor primer pago
            fields.TryGetValue("valor_primer_pago", out toSet);
            toSet.SetValue(String.Format("{0:0,0.00}", contrato.valor_primer_pago));

            // Porcentaje inscripcion
            fields.TryGetValue("porcentaje_cuota_ingreso", out toSet);
            toSet.SetValue(String.Format("{0:0.00}", contrato.porcentaje_cuota_ingreso));
            
            // Porcentaje IVA Cuota ingreso
            fields.TryGetValue("porcentaje_iva_cuota_ingreso", out toSet);
            toSet.SetValue(String.Format("{0:0.00}", contrato.porcentaje_iva));
            
            // Porcentaje administracion
            fields.TryGetValue("porcentaje_administracion", out toSet);
            toSet.SetValue(String.Format("{0:0.00}", contrato.porcentaje_administracion));
            
            // Porcentaje IVA administracion
            fields.TryGetValue("porcentaje_iva_administracion", out toSet);
            toSet.SetValue(String.Format("{0:0.00}", contrato.porcentaje_iva));


            //Fecha suscripción contrato
            fields.TryGetValue("dia_suscripcion_contrato", out toSet);
            toSet.SetValue(String.Format("{0:dd}", contrato.fecha_suscripcion_contrato));

            fields.TryGetValue("mes_suscripcion_contrato", out toSet);
            toSet.SetValue(String.Format("{0:MM}", contrato.fecha_suscripcion_contrato));

            fields.TryGetValue("ano_suscripcion_contrato", out toSet);
            toSet.SetValue(String.Format("{0:yyyy}", contrato.fecha_suscripcion_contrato));

            // Agencia
            fields.TryGetValue("agencia", out toSet);
            toSet.SetValue("Agencia Digital");

            // gerente
            fields.TryGetValue("gerente", out toSet);
            toSet.SetValue("Juan Pablo Alviar");

            // Asesor Comercial            
            fields.TryGetValue("asesor_comercial", out toSet);
            toSet.SetValue(contrato.asesor_comercial);
        }

        /// <summary>
        /// Asigna todos los valores de la clase prospecto a un PDF
        /// </summary>
        /// <param name="fields">Lista de cmapos del archivo PDF como tal</param>
        /// <param name="prospecto">Modelo de datos del prospecto</param>
        static public void FillPdf(IDictionary<String, PdfFormField> fields, Prospecto prospecto)
        {
            PdfFormField toSet;

            fields.TryGetValue("Nombre", out toSet);
            toSet.SetValue((prospecto.PrimerNombre + " " + prospecto.SegundoNombre + " " + prospecto.PrimerApellido + " " + prospecto.SegundoApellido).ToUpper());

            //fields.TryGetValue("Documento", out toSet);
            //toSet.SetValue(prospecto.NumeroDocumento.ToString());

            fields.TryGetValue("Telefono", out toSet);
            toSet.SetValue(prospecto.Telefono.ToString());

            fields.TryGetValue("Celular", out toSet);
            toSet.SetValue(prospecto.Celular.ToString());

            fields.TryGetValue("Email", out toSet);
            toSet.SetValue(prospecto.Email.ToUpper());

            /*fields.TryGetValue("Marca", out toSet);
            toSet.SetValue(prospecto.Marca_exclusiva_bien.ToUpper());

            fields.TryGetValue("Cuota", out toSet);
            toSet.SetValue(prospecto.CuotaDeIngreso.ToString().ToUpper());*/

            fields.TryGetValue("Detalle", out toSet);
            toSet.SetValue(prospecto.Detalles_bien.ToUpper());

            fields.TryGetValue("ValorBien", out toSet);
            toSet.SetValue(String.Format("$ {0:0,0.00}", prospecto.ValorDelBien));

           /* fields.TryGetValue("PorcentajeInscripcion", out toSet);
            toSet.SetValue(prospecto.PorcentajeInscripcion.ToString().ToUpper());

            fields.TryGetValue("PorcentajeAdministracion", out toSet);
            toSet.SetValue(prospecto.PorcentajeAdministracion.ToString().ToUpper());

            fields.TryGetValue("IVA", out toSet);
            toSet.SetValue(prospecto.PorcentajeIva.ToString().ToUpper());

            fields.TryGetValue("Plazo", out toSet);
            toSet.SetValue(prospecto.Plazo.ToString().ToUpper());

            fields.TryGetValue("TipoBien", out toSet);
            toSet.SetValue(prospecto.Tipo_de_Bien.ToUpper());*/

            fields.TryGetValue("CuotaIngreso", out toSet);
            toSet.SetValue(String.Format("$ {0:0,0.00}", prospecto.CuotaDeIngreso));
            
            fields.TryGetValue("IvaIngreso", out toSet);
            toSet.SetValue(String.Format("$ {0:0,0.00}", prospecto.IvaCuotaIngreso));

            fields.TryGetValue("TotalCuotaIngreso", out toSet);
            toSet.SetValue(String.Format("$ {0:0,0.00}", prospecto.TotalCuotaIngreso));

            fields.TryGetValue("PrimeraCuotaNeta", out toSet);
            toSet.SetValue(String.Format("$ {0:0,0.00}", prospecto.PrimeraCuotaNeta));

            fields.TryGetValue("Administracion", out toSet);
            toSet.SetValue(String.Format("$ {0:0,0.00}", prospecto.Administracion));

            fields.TryGetValue("IvaAdministracion", out toSet);
            toSet.SetValue(String.Format("$ {0:0,0.00}", prospecto.IvaAdministracion));

            fields.TryGetValue("TotalCuotaBruta", out toSet);
            toSet.SetValue(String.Format("$ {0:0,0.00}", prospecto.TotalCuotaBruta));

            fields.TryGetValue("PrimerPago", out toSet);
            toSet.SetValue(String.Format("$ {0:0,0.00}", prospecto.ValorTotalPrimerPago));
        }

        /// <summary>
        /// Transforma el formulario HTML de contrato en una clase modelo.
        /// </summary>
        /// <param name="form">Los datos del formulario HTML capturados</param>
        /// <returns>una entidad de personas con todos los datos del contrato PDF</returns>
        static public Contrato FillContrato(IFormCollection form)
        {
            Contrato contrato = new Contrato();
            // Suscriptor
            contrato.IdProspecto = int.Parse(form["IdProspecto"]);
            contrato.numero_de_contrato = int.Parse(form["numero_de_contrato"]);
            contrato.primer_nombre = form["primer_nombre"].ToString().ToUpper();
            contrato.segundo_nombre = form["segundo_nombre"].ToString().ToUpper();
            contrato.primer_apellido = form["primer_apellido"].ToString().ToUpper();
            contrato.segundo_apellido = form["segundo_apellido"].ToString().ToUpper();
            contrato.tipo_documento_identidad_suscriptor = form["tipo_identificacion_suscriptor"];

            int.TryParse(s: form["documento_identidad_suscriptor"], result: out int documento_identidad_suscriptor);
            contrato.documento_identidad_suscriptor = documento_identidad_suscriptor;

            contrato.procedencia_documento_identidad_suscriptor = form["procedencia_documento_identidad_suscriptor"].ToString().ToUpper();

            // Representante legal del suscriptor
            contrato.nombre_razon_social_representante_legal = form["nombre_razon_social_representante_legal"].ToString().ToUpper();
            contrato.tipo_documento_representante_legal = form["tipo_documento_representante_legal"];

            int.TryParse(s: form["documento_identidad_representante_legal"], result: out int documento_identidad_representante_legal);
            contrato.documento_identidad_representante_legal = documento_identidad_representante_legal;

            contrato.procedencia_documento_identidad_representante_legal = form["procedencia_documento_identidad_representante_legal"].ToString().ToUpper();

            // Datos del suscriptor
            DateTime fecha_nacimiento_suscriptor = DateTime.Today;
            DateTime.TryParseExact(form["fecha_nacimiento_suscriptor"], "dd-MM-yyyy", null, System.Globalization.DateTimeStyles.None, out fecha_nacimiento_suscriptor);
            contrato.fecha_nacimiento_suscriptor = fecha_nacimiento_suscriptor;


            contrato.lugar_nacimiento_suscriptor = form["lugar_nacimiento_suscriptor"].ToString().ToUpper();
            contrato.sexo_suscriptor = form["sexo_suscriptor"];
            contrato.estado_civil_suscriptor = form["estado_civil_suscriptor"];
            contrato.direccion_domicilio_suscriptor = form["direccion_domicilio_suscriptor"].ToString().ToUpper();
            contrato.pais_suscriptor = form["pais_suscriptor"].ToString().ToUpper();
            contrato.departamento_suscriptor = form["departamento_suscriptor"];
            contrato.ciudad_suscriptor = form["ciudad_suscriptor"].ToString().ToUpper();
            contrato.telefono_suscriptor = form["telefono_suscriptor"];
            contrato.celular_suscriptor = form["celular_suscriptor"];
            contrato.empresa_empleadora_suscriptor = form["empresa_empleadora_suscriptor"].ToString().ToUpper();
            contrato.cargo_suscriptor = form["cargo_suscriptor"].ToString().ToUpper();

            Double.TryParse(s: form["ingresos_mensuales_suscriptor"], result: out double ingresos_mensuales_suscriptor);
            contrato.ingresos_mensuales_suscriptor = ingresos_mensuales_suscriptor;

            Double.TryParse(s: form["egresos_mensuales_suscriptor"], result: out double egresos_mensuales_suscriptor);
            contrato.egresos_mensuales_suscriptor = egresos_mensuales_suscriptor;

            Double.TryParse(s: form["otros_ingresos_suscriptor"], result: out double otros_ingresos_suscriptor);
            contrato.otros_ingresos_suscriptor = otros_ingresos_suscriptor;

            contrato.direccion_empleo_suscriptor = form["direccion_empleo_suscriptor"].ToString().ToUpper();
            contrato.departamento_empleo_suscriptor = form["departamento_empleo_suscriptor"];
            contrato.ciudad_empleo_suscriptor = form["ciudad_empleo_suscriptor"].ToString().ToUpper();
            contrato.telefono_empleo_suscriptor = form["telefono_empleo_suscriptor"];
            contrato.celular_empleo_suscriptor = form["celular_empleo_suscriptor"];
            contrato.profesion_suscriptor = form["profesion_suscriptor"].ToString().ToUpper();
            contrato.envio_correspondencia_suscriptor = form["envio_correspondencia_suscriptor"];
            contrato.email_suscriptor = form["email_suscriptor"].ToString().ToUpper();

            // Suscriptor conjunto
            contrato.nombre_suscriptor_conjunto = form["nombre_suscriptor_conjunto"].ToString().ToUpper();
            contrato.tipo_identidad_suscriptor_conjunto = form["tipo_identidad_suscriptor_conjunto"];

            int.TryParse(s: form["documento_identidad_suscriptor_conjunto"], result: out int documento_identidad_suscriptor_conjunto);
            contrato.documento_identidad_suscriptor_conjunto = documento_identidad_suscriptor_conjunto;

            contrato.procedencia_documento_identidad_suscriptor_conjunto = form["procedencia_documento_identidad_suscriptor_conjunto"].ToString().ToUpper();

            // Representante legal Suscriptor conjunto
            contrato.representante_legal_suscriptor_conjunto = form["representante_legal_suscriptor_conjunto"].ToString().ToUpper();
            contrato.tipo_identidad_representante_legal_suscriptor_conjunto = form["tipo_identidad_representante_legal_suscriptor_conjunto"];

            int.TryParse(s: form["documento_identidad_representante_legal_suscriptor_conjunto"], result: out int documento_identidad_representante_legal_suscriptor_conjunto);
            contrato.documento_identidad_representante_legal_suscriptor_conjunto = documento_identidad_representante_legal_suscriptor_conjunto;

            contrato.procedencia_identificacion_representante_legal_suscriptor_conjunto = form["procedencia_identificacion_representante_legal_suscriptor_conjunto"].ToString().ToUpper();


            // Datos del suscriptor conjunto

            DateTime fecha_nacimiento_suscriptor_conjunto = DateTime.Now;
            DateTime.TryParseExact(form["fecha_nacimiento_suscriptor_conjunto"], "dd-MM-yyyy", null, System.Globalization.DateTimeStyles.None, out fecha_nacimiento_suscriptor_conjunto);
            contrato.fecha_nacimiento_suscriptor_conjunto = fecha_nacimiento_suscriptor_conjunto;

            contrato.lugar_nacimiento_suscriptor_conjunto = form["lugar_nacimiento_suscriptor_conjunto"].ToString().ToUpper();
            contrato.sexo_suscriptor_conjunto = form["sexo_suscriptor_conjunto"];
            contrato.estado_civil_suscriptor_conjunto = form["estado_civil_suscriptor_conjunto"];
            contrato.direccion_suscriptor_conjunto = form["dirección_suscriptor_conjunto"].ToString().ToUpper();
            contrato.departamento_suscriptor_conjunto = form["departamento_suscriptor_conjunto"];
            contrato.ciudad_suscriptor_conjunto = form["ciudad_suscriptor_conjunto"].ToString().ToUpper();
            contrato.telefono_suscriptor_conjunto = form["telefono_suscriptor_conjunto"];
            contrato.celular_suscriptor_conjunto = form["celular_suscriptor_conjunto"];
            contrato.empresa_empleadora_suscriptor_conjunto = form["empresa_empleadora_suscriptor_conjunto"].ToString().ToUpper();
            contrato.cargo_suscriptor_conjunto = form["cargo_suscriptor_conjunto"].ToString().ToUpper();

            Double.TryParse(s: form["ingresos_mensuales_suscriptor_conjunto"], result: out double ingresos_mensuales_suscriptor_conjunto);
            contrato.ingresos_mensuales_suscriptor_conjunto = ingresos_mensuales_suscriptor_conjunto;

            Double.TryParse(s: form["egresos_mensuales_suscriptor_conjunto"], result: out double egresos_mensuales_suscriptor_conjunto);
            contrato.egresos_mensuales_suscriptor_conjunto = egresos_mensuales_suscriptor_conjunto;

            Double.TryParse(s: form["otros_ingresos_suscriptor_conjunto"], result: out double otros_ingresos_suscriptor_conjunto);
            contrato.otros_ingresos_suscriptor_conjunto = otros_ingresos_suscriptor_conjunto;

            contrato.direccion_empleo_suscriptor_conjunto = form["direccion_empleo_suscriptor_conjunto"].ToString().ToUpper();
            contrato.departamento_empleo_suscriptor_conjunto = form["departamento_empleo_suscriptor_conjunto"];
            contrato.ciudad_empleo_suscriptor_conjunto = form["ciudad_empleo_suscriptor_conjunto"].ToString().ToUpper();
            contrato.telefono_empleo_suscriptor_conjunto = form["telefono_empleo_suscriptor_conjunto"];
            contrato.celular_empleo_suscriptor_conjunto = form["celular_empleo_suscriptor_conjunto"];
            contrato.profesion_suscriptor_conjunto = form["profesion_suscriptor_conjunto"].ToString().ToUpper();
            contrato.correspondencia_suscriptor_conjunto = form["correspondencia_suscriptor_conjunto"];
            contrato.email_suscriptor_conjunto = form["email_suscriptor_conjunto"].ToString().ToUpper();

            //Datos del bien

            contrato.id_compania = form["idcompania"];
            contrato.compania = form["compania"];
            int.TryParse(s:form["tipodeBien"],result: out int id_tipo_bien);
            contrato.id_tipo_de_bien = id_tipo_bien;
            contrato.tipo_de_bien = form["descripcionTipoBien"];
            int.TryParse(s: form["marca"], result: out int id_marca);
            contrato.id_marca = id_marca;
            contrato.marca_exclusiva_bien = form["descripcionMarca"].ToString().ToUpper();
            contrato.detalles_bien = form["planDeAhorro"].ToString().ToUpper();
            contrato.descripcion_bien = form["detalles_bien"].ToString().ToUpper();
            contrato.codigo_bien = form["codigo_bien"].ToString().ToUpper();

            Double.TryParse(s:form["porcentajeAdministracion"], result: out double porcentajeAdministracion);
            contrato.porcentaje_administracion = porcentajeAdministracion;

            Double.TryParse(s:form["porcentajeInscripcion"], result: out double porcentajeInscripcion);
            contrato.porcentaje_cuota_ingreso = porcentajeInscripcion;

            Double.TryParse(s:form["porcentajeIva"], result: out double porcentajeIva);
            contrato.porcentaje_iva = porcentajeIva;

            Double.TryParse(s: form["valor_bien"], result: out double valor_bien);
            contrato.valor_bien = valor_bien;

            //contrato.cuota_bien = contrato.detalles_bien.Contains("CUOTA FIJA") ? "FIJA" : "VARIABLE";
            if(contrato.marca_exclusiva_bien.Contains("BAJAJ") || 
                contrato.marca_exclusiva_bien.Contains("KAWASAKI") ||
                contrato.marca_exclusiva_bien.Contains("KTM") || 
                contrato.marca_exclusiva_bien.Contains("KYMCO")  || 
                contrato.marca_exclusiva_bien.Contains("YAMAHA"))
            {
                contrato.cuota_bien = "VARIABLE";
            }
            else
            {
                contrato.cuota_bien = "FIJA";
            }

            contrato.plazo_bien = form["plazo_bien"].ToString().ToUpper();

            // pago Inicial

            Double.TryParse(s: form["cuota_ingreso"], result: out double cuota_ingreso);
            contrato.cuota_ingreso = cuota_ingreso;

            Double.TryParse(s: form["administracion"], result: out double administracion);
            contrato.administracion = administracion;

            Double.TryParse(s: form["iva_cuota_ingreso"], result: out double iva_cuota_ingreso);
            contrato.iva_cuota_ingreso = iva_cuota_ingreso;

            Double.TryParse(s: form["iva_administracion"], result: out double iva_administracion);
            contrato.iva_administracion = iva_administracion;

            Double.TryParse(s: form["total_cuota_ingreso"], result: out double total_cuota_ingreso);
            contrato.total_cuota_ingreso = total_cuota_ingreso;

            Double.TryParse(s: form["total_cuota_bruta"], result: out double total_cuota_bruta);
            contrato.total_cuota_bruta = total_cuota_bruta;

            Double.TryParse(s: form["primera_cuota_neta"], result: out double primera_cuota_neta);
            contrato.primera_cuota_neta = primera_cuota_neta;

            Double.TryParse(s: form["valor_primer_pago"], result: out double valor_primer_pago);
            contrato.valor_primer_pago = valor_primer_pago;

            contrato.fecha_suscripcion_contrato = DateTime.Now;

            return contrato;
        }

        /// <summary>
        /// Transforma el formulario HTML de contrato en una clase modelo.
        /// </summary>
        /// <param name="form">Los datos del formulario HTML capturados</param>
        /// <returns>una entidad de personas con todos los datos del contrato PDF</returns>
        static public Contrato UpdateContrato(IFormCollection form, Contrato contrato)
        {            
            // Suscriptor
            contrato.numero_de_contrato = int.Parse(form["numero_de_contrato"]);
            contrato.primer_nombre = form["primer_nombre"].ToString().ToUpper();
            contrato.segundo_nombre = form["segundo_nombre"].ToString().ToUpper();
            contrato.primer_apellido = form["primer_apellido"].ToString().ToUpper();
            contrato.segundo_apellido = form["segundo_apellido"].ToString().ToUpper();
            contrato.tipo_documento_identidad_suscriptor = form["tipo_identificacion_suscriptor"];

            int.TryParse(s: form["documento_identidad_suscriptor"], result: out int documento_identidad_suscriptor);
            contrato.documento_identidad_suscriptor = documento_identidad_suscriptor;

            contrato.procedencia_documento_identidad_suscriptor = form["procedencia_documento_identidad_suscriptor"].ToString().ToUpper();

            // Representante legal del suscriptor
            contrato.nombre_razon_social_representante_legal = form["nombre_razon_social_representante_legal"].ToString().ToUpper();
            contrato.tipo_documento_representante_legal = form["tipo_documento_representante_legal"];

            int.TryParse(s: form["documento_identidad_representante_legal"], result: out int documento_identidad_representante_legal);
            contrato.documento_identidad_representante_legal = documento_identidad_representante_legal;

            contrato.procedencia_documento_identidad_representante_legal = form["procedencia_documento_identidad_representante_legal"].ToString().ToUpper();

            // Datos del suscriptor
            DateTime fecha_nacimiento_suscriptor = DateTime.Today;
            DateTime.TryParseExact(form["fecha_nacimiento_suscriptor"], "dd-MM-yyyy", null, System.Globalization.DateTimeStyles.None, out fecha_nacimiento_suscriptor);
            contrato.fecha_nacimiento_suscriptor = fecha_nacimiento_suscriptor;


            contrato.lugar_nacimiento_suscriptor = form["lugar_nacimiento_suscriptor"].ToString().ToUpper();
            contrato.sexo_suscriptor = form["sexo_suscriptor"];
            contrato.estado_civil_suscriptor = form["estado_civil_suscriptor"];
            contrato.direccion_domicilio_suscriptor = form["direccion_domicilio_suscriptor"].ToString().ToUpper();
            contrato.pais_suscriptor = form["pais_suscriptor"].ToString().ToUpper();
            contrato.departamento_suscriptor = form["departamento_suscriptor"];
            contrato.ciudad_suscriptor = form["ciudad_suscriptor"].ToString().ToUpper();
            contrato.telefono_suscriptor = form["telefono_suscriptor"];
            contrato.celular_suscriptor = form["celular_suscriptor"];
            contrato.empresa_empleadora_suscriptor = form["empresa_empleadora_suscriptor"].ToString().ToUpper();
            contrato.cargo_suscriptor = form["cargo_suscriptor"].ToString().ToUpper();

            Double.TryParse(s: form["ingresos_mensuales_suscriptor"], result: out double ingresos_mensuales_suscriptor);
            contrato.ingresos_mensuales_suscriptor = ingresos_mensuales_suscriptor;

            Double.TryParse(s: form["egresos_mensuales_suscriptor"], result: out double egresos_mensuales_suscriptor);
            contrato.egresos_mensuales_suscriptor = egresos_mensuales_suscriptor;

            Double.TryParse(s: form["otros_ingresos_suscriptor"], result: out double otros_ingresos_suscriptor);
            contrato.otros_ingresos_suscriptor = otros_ingresos_suscriptor;

            contrato.direccion_empleo_suscriptor = form["direccion_empleo_suscriptor"].ToString().ToUpper();
            contrato.departamento_empleo_suscriptor = form["departamento_empleo_suscriptor"];
            contrato.ciudad_empleo_suscriptor = form["ciudad_empleo_suscriptor"].ToString().ToUpper();
            contrato.telefono_empleo_suscriptor = form["telefono_empleo_suscriptor"];
            contrato.celular_empleo_suscriptor = form["celular_empleo_suscriptor"];
            contrato.profesion_suscriptor = form["profesion_suscriptor"].ToString().ToUpper();
            contrato.envio_correspondencia_suscriptor = form["envio_correspondencia_suscriptor"];
            contrato.email_suscriptor = form["email_suscriptor"].ToString().ToUpper();

            // Suscriptor conjunto
            contrato.nombre_suscriptor_conjunto = form["nombre_suscriptor_conjunto"].ToString().ToUpper();
            contrato.tipo_identidad_suscriptor_conjunto = form["tipo_identidad_suscriptor_conjunto"];

            int.TryParse(s: form["documento_identidad_suscriptor_conjunto"], result: out int documento_identidad_suscriptor_conjunto);
            contrato.documento_identidad_suscriptor_conjunto = documento_identidad_suscriptor_conjunto;

            contrato.procedencia_documento_identidad_suscriptor_conjunto = form["procedencia_documento_identidad_suscriptor_conjunto"].ToString().ToUpper();

            // Representante legal Suscriptor conjunto
            contrato.representante_legal_suscriptor_conjunto = form["representante_legal_suscriptor_conjunto"].ToString().ToUpper();
            contrato.tipo_identidad_representante_legal_suscriptor_conjunto = form["tipo_identidad_representante_legal_suscriptor_conjunto"];

            int.TryParse(s: form["documento_identidad_representante_legal_suscriptor_conjunto"], result: out int documento_identidad_representante_legal_suscriptor_conjunto);
            contrato.documento_identidad_representante_legal_suscriptor_conjunto = documento_identidad_representante_legal_suscriptor_conjunto;

            contrato.procedencia_identificacion_representante_legal_suscriptor_conjunto = form["procedencia_identificacion_representante_legal_suscriptor_conjunto"].ToString().ToUpper();


            // Datos del suscriptor conjunto

            DateTime fecha_nacimiento_suscriptor_conjunto = DateTime.Now;
            DateTime.TryParseExact(form["fecha_nacimiento_suscriptor_conjunto"], "dd-MM-yyyy", null, System.Globalization.DateTimeStyles.None, out fecha_nacimiento_suscriptor_conjunto);
            contrato.fecha_nacimiento_suscriptor_conjunto = fecha_nacimiento_suscriptor_conjunto;

            contrato.lugar_nacimiento_suscriptor_conjunto = form["lugar_nacimiento_suscriptor_conjunto"].ToString().ToUpper();
            contrato.sexo_suscriptor_conjunto = form["sexo_suscriptor_conjunto"];
            contrato.estado_civil_suscriptor_conjunto = form["estado_civil_suscriptor_conjunto"];
            contrato.direccion_suscriptor_conjunto = form["dirección_suscriptor_conjunto"].ToString().ToUpper();
            contrato.departamento_suscriptor_conjunto = form["departamento_suscriptor_conjunto"];
            contrato.ciudad_suscriptor_conjunto = form["ciudad_suscriptor_conjunto"].ToString().ToUpper();
            contrato.telefono_suscriptor_conjunto = form["telefono_suscriptor_conjunto"];
            contrato.celular_suscriptor_conjunto = form["celular_suscriptor_conjunto"];
            contrato.empresa_empleadora_suscriptor_conjunto = form["empresa_empleadora_suscriptor_conjunto"].ToString().ToUpper();
            contrato.cargo_suscriptor_conjunto = form["cargo_suscriptor_conjunto"].ToString().ToUpper();

            Double.TryParse(s: form["ingresos_mensuales_suscriptor_conjunto"], result: out double ingresos_mensuales_suscriptor_conjunto);
            contrato.ingresos_mensuales_suscriptor_conjunto = ingresos_mensuales_suscriptor_conjunto;

            Double.TryParse(s: form["egresos_mensuales_suscriptor_conjunto"], result: out double egresos_mensuales_suscriptor_conjunto);
            contrato.egresos_mensuales_suscriptor_conjunto = egresos_mensuales_suscriptor_conjunto;

            Double.TryParse(s: form["otros_ingresos_suscriptor_conjunto"], result: out double otros_ingresos_suscriptor_conjunto);
            contrato.otros_ingresos_suscriptor_conjunto = otros_ingresos_suscriptor_conjunto;

            contrato.direccion_empleo_suscriptor_conjunto = form["direccion_empleo_suscriptor_conjunto"].ToString().ToUpper();
            contrato.departamento_empleo_suscriptor_conjunto = form["departamento_empleo_suscriptor_conjunto"];
            contrato.ciudad_empleo_suscriptor_conjunto = form["ciudad_empleo_suscriptor_conjunto"].ToString().ToUpper();
            contrato.telefono_empleo_suscriptor_conjunto = form["telefono_empleo_suscriptor_conjunto"];
            contrato.celular_empleo_suscriptor_conjunto = form["celular_empleo_suscriptor_conjunto"];
            contrato.profesion_suscriptor_conjunto = form["profesion_suscriptor_conjunto"].ToString().ToUpper();
            contrato.correspondencia_suscriptor_conjunto = form["correspondencia_suscriptor_conjunto"];
            contrato.email_suscriptor_conjunto = form["email_suscriptor_conjunto"].ToString().ToUpper();

            //Datos del bien
            contrato.id_compania = form["idcompania"];
            contrato.compania = form["compania"];
            int.TryParse(s: form["tipodeBien"], result: out int id_tipo_bien);
            contrato.id_tipo_de_bien = id_tipo_bien;
            contrato.tipo_de_bien = form["descripcionTipoBien"];
            int.TryParse(s: form["marca"], result: out int id_marca);
            contrato.id_marca = id_marca;
            contrato.marca_exclusiva_bien = form["descripcionMarca"].ToString().ToUpper();
            contrato.detalles_bien = form["planDeAhorro"].ToString().ToUpper();
            contrato.descripcion_bien = form["detalles_bien"].ToString().ToUpper();
            contrato.codigo_bien = form["codigo_bien"].ToString().ToUpper();

            //contrato.cuota_bien = contrato.detalles_bien.Contains("CUOTA FIJA") ? "FIJA" : "VARIABLE";
            if (contrato.marca_exclusiva_bien.Contains("BAJAJ") ||
                contrato.marca_exclusiva_bien.Contains("KAWASAKI") ||
                contrato.marca_exclusiva_bien.Contains("KTM") ||
                contrato.marca_exclusiva_bien.Contains("KYMCO") ||
                contrato.marca_exclusiva_bien.Contains("YAMAHA"))
            {
                contrato.cuota_bien = "VARIABLE";
            }
            else
            {
                contrato.cuota_bien = "FIJA";
            }

            Double.TryParse(s: form["porcentajeAdministracion"], result: out double porcentajeAdministracion);
            contrato.porcentaje_administracion = porcentajeAdministracion;

            Double.TryParse(s: form["porcentajeInscripcion"], result: out double porcentajeInscripcion);
            contrato.porcentaje_cuota_ingreso = porcentajeInscripcion;

            Double.TryParse(s: form["porcentajeIva"], result: out double porcentajeIva);
            contrato.porcentaje_iva = porcentajeIva;

            Double.TryParse(s: form["valor_bien"], result: out double valor_bien);
            contrato.valor_bien = valor_bien;

            contrato.cuota_bien = contrato.detalles_bien.Contains("CUOTA FIJA") ? "FIJA" : "VARIABLE";
            contrato.plazo_bien = form["plazo_bien"];

            // pago Inicial

            Double.TryParse(s: form["cuota_ingreso"], result: out double cuota_ingreso);
            contrato.cuota_ingreso = cuota_ingreso;

            Double.TryParse(s: form["administracion"], result: out double administracion);
            contrato.administracion = administracion;

            Double.TryParse(s: form["iva_cuota_ingreso"], result: out double iva_cuota_ingreso);
            contrato.iva_cuota_ingreso = iva_cuota_ingreso;

            Double.TryParse(s: form["iva_administracion"], result: out double iva_administracion);
            contrato.iva_administracion = iva_administracion;

            Double.TryParse(s: form["total_cuota_ingreso"], result: out double total_cuota_ingreso);
            contrato.total_cuota_ingreso = total_cuota_ingreso;

            Double.TryParse(s: form["total_cuota_bruta"], result: out double total_cuota_bruta);
            contrato.total_cuota_bruta = total_cuota_bruta;

            Double.TryParse(s: form["primera_cuota_neta"], result: out double primera_cuota_neta);
            contrato.primera_cuota_neta = primera_cuota_neta;

            Double.TryParse(s: form["valor_primer_pago"], result: out double valor_primer_pago);
            contrato.valor_primer_pago = valor_primer_pago;

            return contrato;
        }

        /// <summary>
        /// Transforma el formulario HTML de prospectos en una clase modelo 
        /// </summary>
        /// <param name="form">Los datos del formulario HTML capturados</param>
        /// <returns>Un entidad de persnoas cona todos los datos del contrato PDF</returns>
        static public Prospecto FillProspecto(IFormCollection form)
        {
            Prospecto prospecto = new Prospecto();
            prospecto.PrimerNombre = form["PrimerNombre"].ToString().ToUpper();
            prospecto.SegundoNombre = form["SegundoNombre"].ToString().ToUpper();
            prospecto.PrimerApellido = form["PrimerApellido"].ToString().ToUpper();
            prospecto.SegundoApellido = form["SegundoApellido"].ToString().ToUpper();

            int.TryParse(s: form["TipoDocumentoIdentidad"], result: out int tipoDocumentoIdentidad);
            prospecto.TipoDocumentoIdentidad = tipoDocumentoIdentidad;

            int.TryParse(s: form["NumeroDocumento"], result: out int documentoIdentidad);
            prospecto.NumeroDocumento = documentoIdentidad;

            prospecto.Telefono = form["Telefono"];
            prospecto.Celular = form["Celular"];
            prospecto.Email = form["Email"].ToString().ToUpper();
            // TODO: Change this for its actual value.

            prospecto.IdCompania = form["idcompania"];
            prospecto.Compania = form["compania"];
            prospecto.Tipo_de_Bien = form["descripcionTipoBien"];
            int.TryParse(s: form["tipodeBien"], result: out int idTipoBien);
            prospecto.Id_Tipo_Bien = idTipoBien;

            prospecto.Marca_exclusiva_bien = form["descripcionMarca"];
            int.TryParse(s: form["marca"], result: out int marcaExclusiva);
            prospecto.Id_marca = marcaExclusiva;

            int.TryParse(s: form["planDeAhorro"], result:out int referencia);
            prospecto.Referencia = referencia;

            prospecto.DescripcionDelBien = form["DescripcionDelBien"].ToString().ToUpper();
            prospecto.Detalles_bien = form["detalle"].ToString().ToUpper();

            double.TryParse(s:form["porcentajeAdministracion"], result: out double porcentajeAdministracion);
            prospecto.PorcentajeAdministracion = porcentajeAdministracion;

            //double.TryParse(s: form["porcentajeInscripcion"], NumberStyles.Number, CultureInfo.CreateSpecificCulture("en-US"), result: out int porcentajeInscripcion);
            double.TryParse(s: form["porcentajeInscripcion"], result: out double porcentajeInscripcion);
            prospecto.PorcentajeInscripcion = porcentajeInscripcion;

            double.TryParse(s: form["porcentajeIva"], result: out double porcentajeIva);
            prospecto.PorcentajeIva = porcentajeIva;

            prospecto.Plazo = form["plazo_bien"].ToString().ToUpper();

            double.TryParse(s: form["costo_del_bien"], result: out double costodelbien);
            prospecto.ValorDelBien = costodelbien;

            double.TryParse(s: form["cuota_ingreso"], result: out double cuotaingreso);
            prospecto.CuotaDeIngreso = cuotaingreso;

            double.TryParse(s: form["administracion"], result: out double administracion);
            prospecto.Administracion = administracion;

            double.TryParse(s: form["iva_cuota_ingreso"], result: out double ivacuotaingreso);
            prospecto.IvaCuotaIngreso = ivacuotaingreso;

            double.TryParse(s: form["iva_administracion"], result: out double iva_administracion);
            prospecto.IvaAdministracion = iva_administracion;

            double.TryParse(s: form["total_cuota_ingreso"], result: out double totalcuotaingreso);
            prospecto.TotalCuotaIngreso = totalcuotaingreso;

            double.TryParse(s: form["total_cuota_bruta"], result: out double total_cuota_bruta);
            prospecto.TotalCuotaBruta = total_cuota_bruta;

            double.TryParse(s: form["primera_cuota_neta"], result: out double primera_cuota_neta);
            prospecto.PrimeraCuotaNeta = primera_cuota_neta;

            double.TryParse(s: form["valor_primer_pago"], result: out double valor_primer_pago);
            prospecto.ValorTotalPrimerPago = valor_primer_pago;

            return prospecto;
        }

        /// <summary>
        /// Transforma el formulario HTML de prospectos en una clase modelo 
        /// </summary>
        /// <param name="form">Los datos del formulario HTML capturados</param>
        /// <returns>Un entidad de persnoas cona todos los datos del contrato PDF</returns>
        static public Prospecto UpdateProspecto(IFormCollection form, Prospecto prospecto)
        {            
            prospecto.PrimerNombre = form["PrimerNombre"].ToString().ToUpper();
            prospecto.SegundoNombre = form["SegundoNombre"].ToString().ToUpper();
            prospecto.PrimerApellido = form["PrimerApellido"].ToString().ToUpper();
            prospecto.SegundoApellido = form["SegundoApellido"].ToString().ToUpper();

            int.TryParse(s: form["TipoDocumentoIdentidad"], result: out int tipoDocumentoIdentidad);
            prospecto.TipoDocumentoIdentidad = tipoDocumentoIdentidad;

            int.TryParse(s: form["NumeroDocumento"], result: out int documentoIdentidad);
            prospecto.NumeroDocumento = documentoIdentidad;

            prospecto.Telefono = form["Telefono"];
            prospecto.Celular = form["Celular"];
            prospecto.Email = form["Email"].ToString().ToUpper();
            // TODO: Change this for its actual value.
            prospecto.IdCompania = form["idcompania"];
            prospecto.Compania = form["compania"];
            prospecto.Tipo_de_Bien = form["descripcionTipoBien"];
            int.TryParse(s: form["tipodeBien"], result: out int idTipoBien);
            prospecto.Id_Tipo_Bien = idTipoBien;

            prospecto.Marca_exclusiva_bien = form["descripcionMarca"];
            int.TryParse(s: form["marca"], result: out int marcaExclusiva);
            prospecto.Id_marca = marcaExclusiva;

            int.TryParse(s: form["planDeAhorro"], result: out int referencia);
            prospecto.Referencia = referencia;

            prospecto.DescripcionDelBien = form["DescripcionDelBien"].ToString().ToUpper();
            prospecto.Detalles_bien = form["detalle"].ToString().ToUpper();

            double.TryParse(s: form["porcentajeAdministracion"], result: out double porcentajeAdministracion);
            prospecto.PorcentajeAdministracion = porcentajeAdministracion;

            double.TryParse(s: form["porcentajeInscripcion"], result: out double porcentajeInscripcion);
            prospecto.PorcentajeInscripcion = porcentajeInscripcion;

            double.TryParse(s: form["porcentajeIva"], result: out double porcentajeIva);
            prospecto.PorcentajeIva = porcentajeIva;

            prospecto.Plazo = form["plazo_bien"].ToString().ToUpper();

            double.TryParse(s: form["costo_del_bien"], result: out double costodelbien);
            prospecto.ValorDelBien = costodelbien;

            double.TryParse(s: form["cuota_ingreso"], result: out double cuotaingreso);
            prospecto.CuotaDeIngreso = cuotaingreso;

            double.TryParse(s: form["administracion"], result: out double administracion);
            prospecto.Administracion = administracion;

            double.TryParse(s: form["iva_cuota_ingreso"], result: out double ivacuotaingreso);
            prospecto.IvaCuotaIngreso = ivacuotaingreso;

            double.TryParse(s: form["iva_administracion"], result: out double iva_administracion);
            prospecto.IvaAdministracion = iva_administracion;

            double.TryParse(s: form["total_cuota_ingreso"], result: out double totalcuotaingreso);
            prospecto.TotalCuotaIngreso = totalcuotaingreso;

            double.TryParse(s: form["total_cuota_bruta"], result: out double total_cuota_bruta);
            prospecto.TotalCuotaBruta = total_cuota_bruta;

            double.TryParse(s: form["primera_cuota_neta"], result: out double primera_cuota_neta);
            prospecto.PrimeraCuotaNeta = primera_cuota_neta;

            double.TryParse(s: form["valor_primer_pago"], result: out double valor_primer_pago);
            prospecto.ValorTotalPrimerPago = valor_primer_pago;

            return prospecto;
        }


        /// <summary>
        /// Genera el código encriptado para ser leído por el banco.
        /// </summary>
        /// <param name="codeContent">El código en números a ser codificado</param>
        /// <returns>El código encriptado en formato ASCII</returns>
        static public string GenerateCode128(string codeContent)
        {
            int i = 0;
            long checksum = 0; ;
            int mini;
            int dummy;
            bool tablaB = true;

            string code128 = "";
            if (codeContent.Length > 0)
            {
                bool exitLoop = false;
                for (i = 0; i < codeContent.Length; i++)
                {
                    switch ((int)codeContent[i])
                    {
                        case int n when (n >= 32 && n <= 128):
                        case 203:
                            break;
                        default:
                            i = 0;
                            exitLoop = true;
                            break;
                    }
                    if (exitLoop) { break; }
                }
                code128 = "";
                tablaB = true;
                if (i > 0)
                {
                    i = 1;
                    while (i <= codeContent.Length)
                    {
                        if (tablaB)
                        {
                            mini = (i == 1 || i + 3 == codeContent.Length) ? 4 : 6;
                            TestNum(ref mini, ref codeContent, ref i);
                            if (mini < 0)
                            {
                                if (i == 1)
                                {
                                    code128 = "" + (char)210 + (char)207;
                                }
                                else
                                {
                                    code128 = code128 + (char)204;
                                }
                                tablaB = false;
                            }
                            else
                            {
                                if (i == 1)
                                {
                                    code128 = "" + (char)209;
                                }
                            }
                        }

                        if (!tablaB)
                        {
                            mini = 2;
                            TestNum(ref mini, ref codeContent, ref i);
                            if (mini < 0)
                            {
                                string checkChar = codeContent.Substring(i - 1, 2);
                                dummy = int.Parse(checkChar); // int.Parse(codeContent.Substring(i, 2));
                                dummy = (dummy < 95) ? dummy + 32 : dummy + 105;
                                if (i == 37 || i == 49)
                                {
                                    code128 = code128 + (char)207;
                                }
                                code128 = code128 + (char)dummy;
                                i = i + 2;
                            }
                            else
                            {
                                code128 = code128 + (char)205;
                                tablaB = true;
                            }
                        }
                        if (tablaB)
                        {
                            code128 = code128 + codeContent.Substring(i - 1, 1);
                            i = i + 1;
                        }
                    }
                }
            }

            for (i = 0; i < code128.Length; i++)
            {
                char checkChar = Convert.ToChar(code128.Substring(i, 1));
                dummy = (int)checkChar; //codeContent.Substring(i-1, 1);
                dummy = dummy < 127 ? dummy - 32 : dummy - 105;
                if (i + 1 == 1)
                {
                    checksum = dummy;
                }
                checksum = (checksum + (i) * dummy) % 103;
            }
            checksum = checksum < 95 ? checksum + 32 : checksum + 105;
            code128 = code128 + (char)checksum + (char)211;
            return code128;
        }

        /// <summary>
        /// Genera el Código encriptado por caracter para ser leído por el banco.
        /// </summary>
        /// <param name="mini"></param>
        /// <param name="codeContent">La cadena a ser transformada</param>
        /// <param name="i">Índice </param>
        static public void TestNum(ref int mini, ref string codeContent, ref int i)
        {
            mini = mini - 1;
            if (i + mini <= codeContent.Length)
            {
                while (mini >= 0)
                {
                    char checkChar = Convert.ToChar(codeContent.Substring((i - 1) + mini, 1));
                    int checkInt = (int)checkChar;
                    if ((int)checkChar < 48 || (int)checkChar > 57)
                    {
                        break;
                    }
                    mini = mini - 1;
                }
            }
            return;
        }

        /// <summary>
        /// Plantilla para armar y envíar el email. 
        /// </summary>
        /// <param name="templateName">Nombre de la plantilla</param>
        /// <returns></returns>
        static public string GetTemplate (string templateName)
        {
            using (var stream = new FileStream(templateName, FileMode.Open)) //Assembly.GetExecutingAssembly().GetManifestResourceStream(templateName))
            {
                return new StreamReader(stream).ReadToEnd();
            }
        }
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

    }

}
