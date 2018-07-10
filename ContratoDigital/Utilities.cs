﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

using ContratoDigital.Models;
using iText.Barcodes;
using iText.Forms;
using iText.Forms.Fields;
using iText.Kernel.Colors;
using iText.Kernel.Pdf;
using iText.Layout.Element;
using MailKit.Net.Smtp;
using Microsoft.AspNetCore.Http;
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
            toSet.SetValue(contrato.tipo_documento_identidad_suscriptor.ToUpper());

            // Número de documento de identidad
            fields.TryGetValue("documento_identidad_suscriptor", out toSet);
            toSet.SetValue(contrato.documento_identidad_suscriptor.ToString().ToUpper());

            // Procedencia documento de identidad
            fields.TryGetValue("procedencia_documento_identidad_suscriptor", out toSet);
            toSet.SetValue(contrato.procedencia_documento_identidad_suscriptor.ToUpper());

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
            toSet.SetValue(contrato.sexo_suscriptor.ToUpper());

            // Estado Civil Suscriptor
            fields.TryGetValue("estado_civil_suscriptor", out toSet);
            toSet.SetValue(contrato.estado_civil_suscriptor.ToUpper());

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
            toSet.SetValue(String.Format("{0:0.00}", contrato.ingresos_mensuales_suscriptor).ToUpper());

            // Egresos mensuales suscriptor
            fields.TryGetValue("egresos_mensuales_suscriptor", out toSet);
            toSet.SetValue(String.Format("{0:0.00}", contrato.egresos_mensuales_suscriptor).ToUpper());

            // Otros ingresos mensuales suscriptor
            fields.TryGetValue("otros_ingresos_suscriptor", out toSet);
            toSet.SetValue(String.Format("{0:0.00}", contrato.otros_ingresos_suscriptor).ToUpper());


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
            toSet.SetValue(contrato.envio_correspondencia_suscriptor.ToUpper());

            // Email
            fields.TryGetValue("email_suscriptor", out toSet);
            toSet.SetValue(contrato.email_suscriptor.ToUpper());

            // Suscriptor Conjunto
            // Nombre suscriptor conjunto
            fields.TryGetValue("nombre_suscriptor_conjunto", out toSet);
            toSet.SetValue(contrato.nombre_suscriptor_conjunto.ToUpper());

            // Tipo de documento de identidad
            fields.TryGetValue("tipo_identidad_suscriptor_conjunto", out toSet);
            toSet.SetValue(contrato.tipo_identidad_suscriptor_conjunto.ToUpper());

            // Número de documento identidad
            fields.TryGetValue("documento_identidad_suscriptor_conjunto", out toSet);
            toSet.SetValue(contrato.documento_identidad_suscriptor_conjunto.ToString().ToUpper());

            // Procedencia de documento de identidad
            fields.TryGetValue("procedencia_documento_identidad_suscriptor_conjunto", out toSet);
            toSet.SetValue(contrato.procedencia_documento_identidad_suscriptor.ToUpper());

            // Nombre representante legal de suscriptor conjunto
            fields.TryGetValue("representante_legal_suscriptor_conjunto", out toSet);
            toSet.SetValue(contrato.representante_legal_suscriptor_conjunto.ToUpper());

            // Tipo de documento representante legal suscritpr conjunto 
            fields.TryGetValue("tipo_identidad_representante_legal_suscriptor_conjunto", out toSet);
            toSet.SetValue(contrato.tipo_identidad_representante_legal_suscriptor_conjunto.ToUpper());

            // documento de identidad representante legal
            fields.TryGetValue("documento_identidad_representante_legal_suscriptor_conjunto", out toSet);
            toSet.SetValue(contrato.documento_identidad_representante_legal_suscriptor_conjunto.ToString().ToUpper());

            // Procedencia del documento de identidad representante legal
            fields.TryGetValue("procedencia_identificacion_representante_legal_suscriptor_conjunto", out toSet);
            toSet.SetValue(contrato.procedencia_identificacion_representante_legal_suscriptor_conjunto.ToUpper());

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
            toSet.SetValue(contrato.sexo_suscriptor_conjunto.ToUpper());

            // Estado civil
            fields.TryGetValue("estado_civil_suscriptor_conjunto", out toSet);
            toSet.SetValue(contrato.estado_civil_suscriptor_conjunto.ToUpper());

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
            toSet.SetValue(String.Format("{0:0.00}", contrato.ingresos_mensuales_suscriptor_conjunto).ToUpper());

            // Egresos Mensuales
            fields.TryGetValue("egresos_mensuales_suscriptor_conjunto", out toSet);
            toSet.SetValue(String.Format("{0:0.00}", contrato.egresos_mensuales_suscriptor_conjunto).ToUpper());

            // Otros ingresos
            fields.TryGetValue("otros_ingresos_suscriptor_conjunto", out toSet);
            toSet.SetValue(String.Format("{0:0.00}", contrato.otros_ingresos_suscriptor_conjunto).ToUpper());

            // Dirección oficina laboral suscriptor conjunto
            fields.TryGetValue("direccion_empleo_suscriptor_conjunto", out toSet);
            toSet.SetValue(String.Format("{0:0.00}", contrato.direccion_empleo_suscriptor_conjunto).ToUpper());

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
            toSet.SetValue(contrato.envio_correspondencia_suscriptor.ToUpper());

            // Email Suscriptor Conjunto
            fields.TryGetValue("email_suscriptor_conjunto", out toSet);
            toSet.SetValue(contrato.email_suscriptor_conjunto.ToUpper());

            // Tipo de bien
            fields.TryGetValue("tipo_de_bien", out toSet);
            toSet.SetValue(contrato.tipo_de_bien.ToUpper());

            // marca exclusiva bien
            fields.TryGetValue("marca_exclusiva_bien", out toSet);
            toSet.SetValue(contrato.marca_exclusiva_bien.ToUpper());

            // Detalles bien
            fields.TryGetValue("detalles_bien", out toSet);
            toSet.SetValue(contrato.detalles_bien.ToUpper());

            // Detalles bien
            fields.TryGetValue("valor_bien", out toSet);
            toSet.SetValue(String.Format("{0:0,0.00}", contrato.valor_bien));

            // codigo bien
            fields.TryGetValue("codigo_bien", out toSet);
            toSet.SetValue(contrato.codigo_bien.ToUpper());

            // cuota ingreso
            fields.TryGetValue("cuota_ingreso", out toSet);
            toSet.SetValue(String.Format("{0:0.00}", contrato.cuota_ingreso));

            // Administración
            fields.TryGetValue("administracion", out toSet);
            toSet.SetValue(String.Format("{0:0.00}", contrato.administracion));

            // IVA Cuota Ingreso
            fields.TryGetValue("iva_cuota_ingreso", out toSet);
            toSet.SetValue(String.Format("{0:0.00}", contrato.iva_cuota_ingreso));

            // IVA Administración
            fields.TryGetValue("iva_administracion", out toSet);
            toSet.SetValue(String.Format("{0:0.00}", contrato.iva_administracion));

            // Total Cuota ingreso
            fields.TryGetValue("total_cuota_ingreso", out toSet);
            toSet.SetValue(String.Format("{0:00}", contrato.total_cuota_ingreso));

            // Total Cuota Bruta
            fields.TryGetValue("total_cuota_bruta", out toSet);
            toSet.SetValue(String.Format("{0:0.00}", contrato.total_cuota_bruta));

            // Primera cuota neta
            fields.TryGetValue("primera_cuota_neta", out toSet);
            toSet.SetValue(String.Format("{0:0.00}", contrato.primera_cuota_neta));

            // Valor primer pago
            fields.TryGetValue("valor_primer_pago", out toSet);
            toSet.SetValue(String.Format("{0:0.00}", contrato.valor_primer_pago));

            //


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
            contrato.primer_nombre = form["primer_nombre"];
            contrato.segundo_nombre = form["segundo_nombre"];
            contrato.primer_apellido = form["primer_apellido"];
            contrato.segundo_apellido = form["segundo_apellido"];
            contrato.tipo_documento_identidad_suscriptor = form["tipo_identificacion_suscriptor"];

            int.TryParse(s: form["documento_identidad_suscriptor"], result: out int documento_identidad_suscriptor);
            contrato.documento_identidad_suscriptor = documento_identidad_suscriptor;

            contrato.procedencia_documento_identidad_suscriptor = form["procedencia_documento_identidad_suscriptor"];

            // Representante legal del suscriptor
            contrato.nombre_razon_social_representante_legal = form["nombre_razon_social_representante_legal"];
            contrato.tipo_documento_representante_legal = form["tipo_documento_representante_legal"];

            int.TryParse(s: form["documento_identidad_representante_legal"], result: out int documento_identidad_representante_legal);
            contrato.documento_identidad_representante_legal = documento_identidad_representante_legal;

            contrato.procedencia_documento_identidad_representante_legal = form["procedencia_documento_identidad_representante_legal"];

            // Datos del suscriptor
            DateTime fecha_nacimiento_suscriptor = DateTime.Today;
            DateTime.TryParseExact(form["fecha_nacimiento_suscriptor"], "dd-MM-yyyy", null, System.Globalization.DateTimeStyles.None, out fecha_nacimiento_suscriptor);
            contrato.fecha_nacimiento_suscriptor = fecha_nacimiento_suscriptor;


            contrato.lugar_nacimiento_suscriptor = form["lugar_nacimiento_suscriptor"];
            contrato.sexo_suscriptor = form["sexo_suscriptor"];
            contrato.estado_civil_suscriptor = form["estado_civil_suscriptor"];
            contrato.direccion_domicilio_suscriptor = form["direccion_domicilio_suscriptor"];
            contrato.pais_suscriptor = form["pais_suscriptor"];
            contrato.departamento_suscriptor = form["departamento_suscriptor"];
            contrato.ciudad_suscriptor = form["ciudad_suscriptor"];
            contrato.telefono_suscriptor = form["telefono_suscriptor"];
            contrato.celular_suscriptor = form["celular_suscriptor"];
            contrato.empresa_empleadora_suscriptor = form["empresa_empleadora_suscriptor"];
            contrato.cargo_suscriptor = form["cargo_suscriptor"];

            Double.TryParse(s: form["ingresos_mensuales_suscriptor"], result: out double ingresos_mensuales_suscriptor);
            contrato.ingresos_mensuales_suscriptor = ingresos_mensuales_suscriptor;

            Double.TryParse(s: form["egresos_mensuales_suscriptor"], result: out double egresos_mensuales_suscriptor);
            contrato.egresos_mensuales_suscriptor = egresos_mensuales_suscriptor;

            Double.TryParse(s: form["otros_ingresos_suscriptor"], result: out Double otros_ingresos_suscriptor);
            contrato.otros_ingresos_suscriptor = otros_ingresos_suscriptor;

            contrato.direccion_empleo_suscriptor = form["direccion_empleo_suscriptor"];
            contrato.departamento_empleo_suscriptor = form["departamento_empleo_suscriptor"];
            contrato.ciudad_empleo_suscriptor = form["ciudad_empleo_suscriptor"];
            contrato.telefono_empleo_suscriptor = form["telefono_empleo_suscriptor"];
            contrato.celular_empleo_suscriptor = form["celular_empleo_suscriptor"];
            contrato.profesion_suscriptor = form["profesion_suscriptor"];
            contrato.envio_correspondencia_suscriptor = form["envio_correspondencia_suscriptor"];
            contrato.email_suscriptor = form["email_suscriptor"];

            // Suscriptor conjunto
            contrato.nombre_suscriptor_conjunto = form["nombre_suscriptor_conjunto"];
            contrato.tipo_identidad_suscriptor_conjunto = form["tipo_identidad_suscriptor_conjunto"];

            int.TryParse(s: form["documento_identidad_suscriptor_conjunto"], result: out int documento_identidad_suscriptor_conjunto);
            contrato.documento_identidad_suscriptor_conjunto = documento_identidad_suscriptor_conjunto;

            contrato.procedencia_documento_identidad_suscriptor_conjunto = form["procedencia_documento_identidad_suscriptor_conjunto"];

            // Representante legal Suscriptor conjunto
            contrato.representante_legal_suscriptor_conjunto = form["representante_legal_suscriptor_conjunto"];
            contrato.tipo_identidad_representante_legal_suscriptor_conjunto = form["tipo_identidad_representante_legal_suscriptor_conjunto"];

            int.TryParse(s: form["documento_identidad_representante_legal_suscriptor_conjunto"], result: out int documento_identidad_representante_legal_suscriptor_conjunto);
            contrato.documento_identidad_representante_legal_suscriptor_conjunto = documento_identidad_representante_legal_suscriptor_conjunto;

            contrato.procedencia_identificacion_representante_legal_suscriptor_conjunto = form["procedencia_identificacion_representante_legal_suscriptor_conjunto"];


            // Datos del suscriptor conjunto

            DateTime fecha_nacimiento_suscriptor_conjunto = DateTime.Now;
            DateTime.TryParseExact(form["fecha_nacimiento_suscriptor_conjunto"], "dd-MM-yyyy", null, System.Globalization.DateTimeStyles.None, out fecha_nacimiento_suscriptor_conjunto);
            contrato.fecha_nacimiento_suscriptor_conjunto = fecha_nacimiento_suscriptor_conjunto;

            contrato.lugar_nacimiento_suscriptor_conjunto = form["fecha_nacimiento_suscriptor_conjunto"];
            contrato.sexo_suscriptor_conjunto = form["sexo_suscriptor_conjunto"];
            contrato.estado_civil_suscriptor_conjunto = form["estado_civil_suscriptor_conjunto"];
            contrato.direccion_suscriptor_conjunto = form["dirección_suscriptor_conjunto"];
            contrato.departamento_suscriptor_conjunto = form["departamento_suscriptor_conjunto"];
            contrato.ciudad_suscriptor_conjunto = form["ciudad_suscriptor_conjunto"];
            contrato.telefono_suscriptor_conjunto = form["telefono_suscriptor_conjunto"];
            contrato.celular_suscriptor_conjunto = form["celular_suscriptor_conjunto"];
            contrato.empresa_empleadora_suscriptor_conjunto = form["empresa_empleadora_suscriptor_conjunto"];
            contrato.cargo_suscriptor_conjunto = form["cargo_suscriptor_conjunto"];

            Double.TryParse(s: form["ingresos_mensuales_suscriptor_conjunto"], result: out double ingresos_mensuales_suscriptor_conjunto);
            contrato.ingresos_mensuales_suscriptor_conjunto = ingresos_mensuales_suscriptor_conjunto;

            Double.TryParse(s: form["egresos_mensuales_suscriptor_conjunto"], result: out double egresos_mensuales_suscriptor_conjunto);
            contrato.egresos_mensuales_suscriptor_conjunto = egresos_mensuales_suscriptor_conjunto;

            Double.TryParse(s: form["otros_ingresos_suscriptor_conjunto"], result: out double otros_ingresos_suscriptor_conjunto);
            contrato.otros_ingresos_suscriptor_conjunto = otros_ingresos_suscriptor_conjunto;

            contrato.direccion_empleo_suscriptor_conjunto = form["direccion_empleo_suscriptor_conjunto"];
            contrato.departamento_empleo_suscriptor_conjunto = form["departamento_empleo_suscriptor_conjunto"];
            contrato.ciudad_empleo_suscriptor_conjunto = form["ciudad_empleo_suscriptor_conjunto"];
            contrato.telefono_empleo_suscriptor_conjunto = form["telefono_empleo_suscriptor_conjunto"];
            contrato.celular_empleo_suscriptor_conjunto = form["celular_empleo_suscriptor_conjunto"];
            contrato.profesion_suscriptor_conjunto = form["profesion_suscriptor_conjunto"];
            contrato.correspondencia_suscriptor_conjunto = form["correspondencia_suscriptor_conjunto"];
            contrato.email_suscriptor_conjunto = form["email_suscriptor_conjunto"];

            //Datos del bien
            contrato.tipo_de_bien = form["tipo_de_bien"];
            contrato.marca_exclusiva_bien = form["marca_exclusiva_bien"];
            contrato.detalles_bien = form["detalles_bien"];
            contrato.codigo_bien = form["codigo_bien"];

            Double.TryParse(s: form["valor_bien"], result: out double valor_bien);
            contrato.valor_bien = valor_bien;

            contrato.cuota_bien = form["cuota_bien"];
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
        /// Transforma el formulario HTML de contrato en una clase modelo.
        /// </summary>
        /// <param name="form">Los datos del formulario HTML capturados</param>
        /// <returns>una entidad de personas con todos los datos del contrato PDF</returns>
        static public Contrato UpdateContrato(IFormCollection form, Contrato contrato)
        {            
            // Suscriptor
            contrato.numero_de_contrato = int.Parse(form["numero_de_contrato"]);
            contrato.primer_nombre = form["primer_nombre"];
            contrato.segundo_nombre = form["segundo_nombre"];
            contrato.primer_apellido = form["primer_apellido"];
            contrato.segundo_apellido = form["segundo_apellido"];
            contrato.tipo_documento_identidad_suscriptor = form["tipo_identificacion_suscriptor"];

            int.TryParse(s: form["documento_identidad_suscriptor"], result: out int documento_identidad_suscriptor);
            contrato.documento_identidad_suscriptor = documento_identidad_suscriptor;

            contrato.procedencia_documento_identidad_suscriptor = form["procedencia_documento_identidad_suscriptor"];

            // Representante legal del suscriptor
            contrato.nombre_razon_social_representante_legal = form["nombre_razon_social_representante_legal"];
            contrato.tipo_documento_representante_legal = form["tipo_documento_representante_legal"];

            int.TryParse(s: form["documento_identidad_representante_legal"], result: out int documento_identidad_representante_legal);
            contrato.documento_identidad_representante_legal = documento_identidad_representante_legal;

            contrato.procedencia_documento_identidad_representante_legal = form["procedencia_documento_identidad_representante_legal"];

            // Datos del suscriptor
            DateTime fecha_nacimiento_suscriptor = DateTime.Today;
            DateTime.TryParseExact(form["fecha_nacimiento_suscriptor"], "dd-MM-yyyy", null, System.Globalization.DateTimeStyles.None, out fecha_nacimiento_suscriptor);
            contrato.fecha_nacimiento_suscriptor = fecha_nacimiento_suscriptor;


            contrato.lugar_nacimiento_suscriptor = form["lugar_nacimiento_suscriptor"];
            contrato.sexo_suscriptor = form["sexo_suscriptor"];
            contrato.estado_civil_suscriptor = form["estado_civil_suscriptor"];
            contrato.direccion_domicilio_suscriptor = form["direccion_domicilio_suscriptor"];
            contrato.pais_suscriptor = form["pais_suscriptor"];
            contrato.departamento_suscriptor = form["departamento_suscriptor"];
            contrato.ciudad_suscriptor = form["ciudad_suscriptor"];
            contrato.telefono_suscriptor = form["telefono_suscriptor"];
            contrato.celular_suscriptor = form["celular_suscriptor"];
            contrato.empresa_empleadora_suscriptor = form["empresa_empleadora_suscriptor"];
            contrato.cargo_suscriptor = form["cargo_suscriptor"];

            Double.TryParse(s: form["ingresos_mensuales_suscriptor"], result: out double ingresos_mensuales_suscriptor);
            contrato.ingresos_mensuales_suscriptor = ingresos_mensuales_suscriptor;

            Double.TryParse(s: form["egresos_mensuales_suscriptor"], result: out double egresos_mensuales_suscriptor);
            contrato.egresos_mensuales_suscriptor = egresos_mensuales_suscriptor;

            Double.TryParse(s: form["otros_ingresos_suscriptor"], result: out Double otros_ingresos_suscriptor);
            contrato.otros_ingresos_suscriptor = otros_ingresos_suscriptor;

            contrato.direccion_empleo_suscriptor = form["direccion_empleo_suscriptor"];
            contrato.departamento_empleo_suscriptor = form["departamento_empleo_suscriptor"];
            contrato.ciudad_empleo_suscriptor = form["ciudad_empleo_suscriptor"];
            contrato.telefono_empleo_suscriptor = form["telefono_empleo_suscriptor"];
            contrato.celular_empleo_suscriptor = form["celular_empleo_suscriptor"];
            contrato.profesion_suscriptor = form["profesion_suscriptor"];
            contrato.envio_correspondencia_suscriptor = form["envio_correspondencia_suscriptor"];
            contrato.email_suscriptor = form["email_suscriptor"];

            // Suscriptor conjunto
            contrato.nombre_suscriptor_conjunto = form["nombre_suscriptor_conjunto"];
            contrato.tipo_identidad_suscriptor_conjunto = form["tipo_identidad_suscriptor_conjunto"];

            int.TryParse(s: form["documento_identidad_suscriptor_conjunto"], result: out int documento_identidad_suscriptor_conjunto);
            contrato.documento_identidad_suscriptor_conjunto = documento_identidad_suscriptor_conjunto;

            contrato.procedencia_documento_identidad_suscriptor_conjunto = form["procedencia_documento_identidad_suscriptor_conjunto"];

            // Representante legal Suscriptor conjunto
            contrato.representante_legal_suscriptor_conjunto = form["representante_legal_suscriptor_conjunto"];
            contrato.tipo_identidad_representante_legal_suscriptor_conjunto = form["tipo_identidad_representante_legal_suscriptor_conjunto"];

            int.TryParse(s: form["documento_identidad_representante_legal_suscriptor_conjunto"], result: out int documento_identidad_representante_legal_suscriptor_conjunto);
            contrato.documento_identidad_representante_legal_suscriptor_conjunto = documento_identidad_representante_legal_suscriptor_conjunto;

            contrato.procedencia_identificacion_representante_legal_suscriptor_conjunto = form["procedencia_identificacion_representante_legal_suscriptor_conjunto"];


            // Datos del suscriptor conjunto

            DateTime fecha_nacimiento_suscriptor_conjunto = DateTime.Now;
            DateTime.TryParseExact(form["fecha_nacimiento_suscriptor_conjunto"], "dd-MM-yyyy", null, System.Globalization.DateTimeStyles.None, out fecha_nacimiento_suscriptor_conjunto);
            contrato.fecha_nacimiento_suscriptor_conjunto = fecha_nacimiento_suscriptor_conjunto;

            contrato.lugar_nacimiento_suscriptor_conjunto = form["fecha_nacimiento_suscriptor_conjunto"];
            contrato.sexo_suscriptor_conjunto = form["sexo_suscriptor_conjunto"];
            contrato.estado_civil_suscriptor_conjunto = form["estado_civil_suscriptor_conjunto"];
            contrato.direccion_suscriptor_conjunto = form["dirección_suscriptor_conjunto"];
            contrato.departamento_suscriptor_conjunto = form["departamento_suscriptor_conjunto"];
            contrato.ciudad_suscriptor_conjunto = form["ciudad_suscriptor_conjunto"];
            contrato.telefono_suscriptor_conjunto = form["telefono_suscriptor_conjunto"];
            contrato.celular_suscriptor_conjunto = form["celular_suscriptor_conjunto"];
            contrato.empresa_empleadora_suscriptor_conjunto = form["empresa_empleadora_suscriptor_conjunto"];
            contrato.cargo_suscriptor_conjunto = form["cargo_suscriptor_conjunto"];

            Double.TryParse(s: form["ingresos_mensuales_suscriptor_conjunto"], result: out double ingresos_mensuales_suscriptor_conjunto);
            contrato.ingresos_mensuales_suscriptor_conjunto = ingresos_mensuales_suscriptor_conjunto;

            Double.TryParse(s: form["egresos_mensuales_suscriptor_conjunto"], result: out double egresos_mensuales_suscriptor_conjunto);
            contrato.egresos_mensuales_suscriptor_conjunto = egresos_mensuales_suscriptor_conjunto;

            Double.TryParse(s: form["otros_ingresos_suscriptor_conjunto"], result: out double otros_ingresos_suscriptor_conjunto);
            contrato.otros_ingresos_suscriptor_conjunto = otros_ingresos_suscriptor_conjunto;

            contrato.direccion_empleo_suscriptor_conjunto = form["direccion_empleo_suscriptor_conjunto"];
            contrato.departamento_empleo_suscriptor_conjunto = form["departamento_empleo_suscriptor_conjunto"];
            contrato.ciudad_empleo_suscriptor_conjunto = form["ciudad_empleo_suscriptor_conjunto"];
            contrato.telefono_empleo_suscriptor_conjunto = form["telefono_empleo_suscriptor_conjunto"];
            contrato.celular_empleo_suscriptor_conjunto = form["celular_empleo_suscriptor_conjunto"];
            contrato.profesion_suscriptor_conjunto = form["profesion_suscriptor_conjunto"];
            contrato.correspondencia_suscriptor_conjunto = form["correspondencia_suscriptor_conjunto"];
            contrato.email_suscriptor_conjunto = form["email_suscriptor_conjunto"];

            //Datos del bien
            contrato.tipo_de_bien = form["tipo_de_bien"];
            contrato.marca_exclusiva_bien = form["marca_exclusiva_bien"];
            contrato.detalles_bien = form["detalles_bien"];
            contrato.codigo_bien = form["codigo_bien"];

            Double.TryParse(s: form["valor_bien"], result: out double valor_bien);
            contrato.valor_bien = valor_bien;

            contrato.cuota_bien = form["cuota_bien"];
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
            prospecto.PrimerNombre = form["PrimerNombre"];
            prospecto.SegundoNombre = form["SegundoNombre"];
            prospecto.PrimerApellido = form["PrimerApellido"];
            prospecto.SegundoApellido = form["SegundoApellido"];

            int.TryParse(s: form["TipoDocumentoIdentidad"], result: out int tipoDocumentoIdentidad);
            prospecto.TipoDocumentoIdentidad = tipoDocumentoIdentidad;

            int.TryParse(s: form["NumeroDocumento"], result: out int documentoIdentidad);
            prospecto.NumeroDocumento = documentoIdentidad;

            prospecto.Telefono = form["Telefono"];
            prospecto.Celular = form["Celular"];
            prospecto.Email = form["Email"];
            // TODO: Change this for its actual value.
            prospecto.Referencia = 1030;
            prospecto.DescripcionDelBien = form["DescripcionDelBien"];

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
            prospecto.PrimerNombre = form["PrimerNombre"];
            prospecto.SegundoNombre = form["SegundoNombre"];
            prospecto.PrimerApellido = form["PrimerApellido"];
            prospecto.SegundoApellido = form["SegundoApellido"];

            int.TryParse(s: form["TipoDocumentoIdentidad"], result: out int tipoDocumentoIdentidad);
            prospecto.TipoDocumentoIdentidad = tipoDocumentoIdentidad;

            int.TryParse(s: form["NumeroDocumento"], result: out int documentoIdentidad);
            prospecto.NumeroDocumento = documentoIdentidad;

            prospecto.Telefono = form["Telefono"];
            prospecto.Celular = form["Celular"];
            prospecto.Email = form["Email"];
            // TODO: Change this for its actual value.
            prospecto.Referencia = 1030;
            prospecto.DescripcionDelBien = form["DescripcionDelBien"];

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
    }

}
