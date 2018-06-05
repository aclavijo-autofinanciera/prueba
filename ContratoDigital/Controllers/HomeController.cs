using System;
using System.Collections.Generic;
using System.Diagnostics;
using System.IO;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Hosting;
using Microsoft.AspNetCore.Mvc;
using ContratoDigital.Models;
using Microsoft.AspNetCore.Http;

using iText.Forms;
using iText.Forms.Fields;
using iText.Kernel.Pdf;

namespace ContratoDigital.Controllers
{
    public class HomeController : Controller
    {
        private readonly IHostingEnvironment _hostingEnvironment;
        public HomeController(IHostingEnvironment hostingEnvironment)
        {
            _hostingEnvironment = hostingEnvironment;
        }

        public IActionResult Index()
        {
            return View();
        }
        public IActionResult ContratoDigital()
        {
            return View();
        }

        [HttpPost]
        public IActionResult ContratoDigital(IFormCollection form)
        {
            MemoryStream stream = new MemoryStream();

            string src = _hostingEnvironment.WebRootPath + "/pdf/electroplan_yamaha_motomas_contrato_v1.1_20180601.pdf";            
            PdfWriter pdfwriter = new PdfWriter(stream);
            PdfDocument pdf = new PdfDocument(new PdfReader(src), pdfwriter);
            pdfwriter.SetCloseStream(false);
            
            PdfAcroForm pdfForm = PdfAcroForm.GetAcroForm(pdf, true);
            IDictionary<String, PdfFormField> fields = pdfForm.GetFormFields();            

            ContratoDigitalModel persona =  FillPersona(form);
            FillPdf(fields, persona);

            pdfForm.FlattenFields();
            pdf.Close();
            stream.Flush();
            stream.Position = 0;
            return File(stream, "application/pdf", "AlgunaCosa.pdf");



            //string contrato = form["numero_contrato"];
            //return View();
        }

        public IActionResult About()
        {
            ViewData["Message"] = "Your application description page.";

            return View();
        }

        public IActionResult Contact()
        {
            ViewData["Message"] = "Your contact page.";

            return View();
        }

        public IActionResult Error()
        {
            return View(new ErrorViewModel { RequestId = Activity.Current?.Id ?? HttpContext.TraceIdentifier });
        }

        /// <summary>
        /// Asigna todos los valores del formulario HTML a un PDF.
        /// </summary>
        /// <param name="fields">Lista de campos del archivo PDF como tal</param>
        /// <param name="persona">Modelo de datos de todas la personas.</param>
        public void FillPdf(IDictionary<String, PdfFormField> fields, ContratoDigitalModel persona)
        {
            PdfFormField toSet;

            // Número de contrato
            fields.TryGetValue("numero_de_contrato", out toSet);
            toSet.SetValue(persona.numero_de_contrato.ToString().ToUpper());

            // Nombre razón social suscriptor
            fields.TryGetValue("nombre_razon_social_suscriptor", out toSet);
            toSet.SetValue(persona.nombre_razon_social_suscriptor.ToUpper());

            // Tipo de documento de identidad
            fields.TryGetValue("tipo_documento_identidad_suscriptor", out toSet);
            toSet.SetValue(persona.tipo_documento_identidad_suscriptor.ToUpper());

            // Número de documento de identidad
            fields.TryGetValue("documento_identidad_suscriptor", out toSet);
            toSet.SetValue(persona.documento_identidad_suscriptor.ToString().ToUpper());

            // Procedencia documento de identidad
            fields.TryGetValue("procedencia_documento_identidad_suscriptor", out toSet);
            toSet.SetValue(persona.procedencia_documento_identidad_suscriptor.ToUpper());

            // Nombre representante Legal
            fields.TryGetValue("nombre_razon_social_representante_legal", out toSet);
            toSet.SetValue(persona.nombre_razon_social_representante_legal.ToUpper());

            // Tipo de documento identidad
            fields.TryGetValue("tipo_documento_representante_legal", out toSet);
            toSet.SetValue(persona.tipo_documento_representante_legal.ToUpper());

            // Documento identidad del representante legal
            fields.TryGetValue("documento_identidad_representante_legal", out toSet);
            toSet.SetValue(persona.documento_identidad_representante_legal.ToString().ToUpper());

            // Procedencia documento de identidad representate legal
            fields.TryGetValue("procedencia_documento_identidad_representante_legal", out toSet);
            toSet.SetValue(persona.procedencia_documento_identidad_representante_legal.ToUpper());

            // Fecha nacimiento suscriptor
            fields.TryGetValue("ano_nacimiento_suscriptor", out toSet);
            toSet.SetValue(String.Format("{0:yyyy}", persona.fecha_nacimiento_suscriptor).ToUpper());
            fields.TryGetValue("mes_nacimiento_suscriptor", out toSet);
            toSet.SetValue(String.Format("{0:MM}", persona.fecha_nacimiento_suscriptor).ToUpper());
            fields.TryGetValue("dia_nacimiento_suscriptor", out toSet);
            toSet.SetValue(String.Format("{0:dd}", persona.fecha_nacimiento_suscriptor).ToUpper());

            // Lugar de nacimiento suscriptor
            fields.TryGetValue("lugar_nacimiento_suscriptor", out toSet);
            toSet.SetValue(persona.lugar_nacimiento_suscriptor.ToUpper());

            // Sexo suscriptor
            fields.TryGetValue("sexo_suscriptor", out toSet);
            toSet.SetValue(persona.sexo_suscriptor.ToUpper());

            // Estado Civil Suscriptor
            fields.TryGetValue("estado_civil_suscriptor", out toSet);
            toSet.SetValue(persona.estado_civil_suscriptor.ToUpper());

            // Dirección de domicilio suscriptor
            fields.TryGetValue("direccion_domicilio_suscriptor", out toSet);
            toSet.SetValue(persona.direccion_domicilio_suscriptor.ToUpper());

            // Departamento de suscriptor 
            fields.TryGetValue("departamento_suscriptor", out toSet);
            toSet.SetValue(persona.departamento_suscriptor.ToUpper());

            // Ciudad suscriptor
            fields.TryGetValue("ciudad_suscriptor", out toSet);
            toSet.SetValue(persona.ciudad_suscriptor.ToUpper());

            // Teléfono suscritpro
            fields.TryGetValue("telefono_suscriptor", out toSet);
            toSet.SetValue(persona.telefono_suscriptor.ToUpper());

            // Celular Suscriptor
            fields.TryGetValue("celular_suscriptor", out toSet);
            toSet.SetValue(persona.celular_suscriptor.ToUpper());

            // Empresa Empleadora suscriptor
            fields.TryGetValue("empresa_empleadora_suscriptor", out toSet);
            toSet.SetValue(persona.empresa_empleadora_suscriptor.ToUpper());
            
            // Cargo Suscriptor
            fields.TryGetValue("cargo_suscriptor", out toSet);
            toSet.SetValue(persona.cargo_suscriptor.ToUpper());

            // Ingresos mensuales suscriptor
            fields.TryGetValue("ingresos_mensuales_suscriptor", out toSet);
            toSet.SetValue(String.Format("{0:0.00}", persona.ingresos_mensuales_suscriptor).ToUpper());

            // Egresos mensuales suscriptor
            fields.TryGetValue("egresos_mensuales_suscriptor", out toSet);
            toSet.SetValue(String.Format("{0:0.00}", persona.egresos_mensuales_suscriptor).ToUpper());

            // Otros ingresos mensuales suscriptor
            fields.TryGetValue("otros_ingresos_suscriptor", out toSet);
            toSet.SetValue(String.Format("{0:0.00}", persona.otros_ingresos_suscriptor).ToUpper());


            // Dirección oficina laboral suscriptor
            fields.TryGetValue("direccion_empleo_suscriptor", out toSet);
            toSet.SetValue(persona.dirección_empleo_suscriptor.ToUpper());

            // Departamento laboral suscriptor
            fields.TryGetValue("departamento_empleo_suscriptor", out toSet);
            toSet.SetValue(persona.departamento_empleo_suscriptor.ToUpper());

            // ciudad laboral suscriptor
            fields.TryGetValue("ciudad_empleo_suscriptor", out toSet);
            toSet.SetValue(persona.ciudad_empleo_suscriptor.ToUpper());

            //Teléfono Laboral Suscriptor
            fields.TryGetValue("telefono_empleo_suscriptor", out toSet);
            toSet.SetValue(persona.telefono_empleo_suscriptor.ToUpper());

            // Celular Laboral Suscriptor
            fields.TryGetValue("celular_empleo_suscriptor", out toSet);
            toSet.SetValue(persona.celular_empleo_suscriptor.ToUpper());

            // Profesión o Actividad Económica
            fields.TryGetValue("profesion_suscriptor", out toSet);
            toSet.SetValue(persona.profesion_suscriptor.ToUpper());

            // Envío correspondencia
            fields.TryGetValue("envio_correspondencia_suscriptor", out toSet);
            toSet.SetValue(persona.envio_correspondencia_suscriptor.ToUpper());

            // Email
            fields.TryGetValue("email_suscriptor", out toSet);
            toSet.SetValue(persona.email_suscriptor.ToUpper());

            // Suscriptor Conjunto
            // Nombre suscriptor conjunto
            fields.TryGetValue("nombre_suscriptor_conjunto", out toSet);
            toSet.SetValue(persona.nombre_suscriptor_conjunto.ToUpper());

            // Tipo de documento de identidad
            fields.TryGetValue("tipo_identidad_suscriptor_conjunto", out toSet);
            toSet.SetValue(persona.tipo_identidad_suscriptor_conjunto.ToUpper());

            // Número de documento identidad
            fields.TryGetValue("documento_identidad_suscriptor_conjunto", out toSet);
            toSet.SetValue(persona.documento_identidad_suscriptor_conjunto.ToString().ToUpper());

            // Procedencia de documento de identidad
            fields.TryGetValue("procedencia_documento_identidad_suscriptor_conjunto", out toSet);
            toSet.SetValue(persona.procedencia_documento_identidad_suscriptor.ToUpper());

            // Nombre representante legal de suscriptor conjunto
            fields.TryGetValue("representante_legal_suscriptor_conjunto", out toSet);
            toSet.SetValue(persona.representante_legal_suscriptor_conjunto.ToUpper());           

            // Tipo de documento representante legal suscritpr conjunto 
            fields.TryGetValue("tipo_identidad_representante_legal_suscriptor_conjunto", out toSet);
            toSet.SetValue(persona.tipo_identidad_representante_legal_suscriptor_conjunto.ToUpper());

            // documento de identidad representante legal
            fields.TryGetValue("documento_identidad_representante_legal_suscriptor_conjunto", out toSet);
            toSet.SetValue(persona.documento_identidad_representante_legal_suscriptor_conjunto.ToString().ToUpper());

            // Procedencia del documento de identidad representante legal
            fields.TryGetValue("procedencia_identificacion_representante_legal_suscriptor_conjunto", out toSet);
            toSet.SetValue(persona.procedencia_identificacion_representante_legal_suscriptor_conjunto.ToUpper());

            // fecha suscriptor conjunto
            fields.TryGetValue("ano_nacimiento_suscriptor_conjunto", out toSet);
            toSet.SetValue(String.Format("{0:yyyy}", persona.fecha_nacimiento_suscriptor_conjunto).ToUpper());
            fields.TryGetValue("mes_nacimiento_suscriptor_conjunto", out toSet);
            toSet.SetValue(String.Format("{0:MM}", persona.fecha_nacimiento_suscriptor_conjunto).ToUpper());
            fields.TryGetValue("dia_nacimiento_suscriptor_conjunto", out toSet);
            toSet.SetValue(String.Format("{0:dd}", persona.fecha_nacimiento_suscriptor_conjunto).ToUpper());

            // lugar nacimiento suscriptor conjunto
            fields.TryGetValue("lugar_nacimiento_suscriptor_conjunto", out toSet);
            toSet.SetValue(persona.lugar_nacimiento_suscriptor_conjunto.ToUpper());

            // Sexo Suscriptor conjunto
            fields.TryGetValue("sexo_suscriptor_conjunto", out toSet);
            toSet.SetValue(persona.sexo_suscriptor_conjunto.ToUpper());

            // Estado civil
            fields.TryGetValue("estado_civil_suscriptor_conjunto", out toSet);
            toSet.SetValue(persona.estado_civil_suscriptor_conjunto.ToUpper());

            // Dirección domicilio suscriptor conjunto
            fields.TryGetValue("dirección_suscriptor_conjunto", out toSet);
            toSet.SetValue(persona.direccion_suscriptor_conjunto.ToUpper());

            // departamento suscriptor conjunto
            fields.TryGetValue("departamento_suscriptor_conjunto", out toSet);
            toSet.SetValue(persona.departamento_suscriptor_conjunto.ToUpper());

            // ciudad suscriptor conjuntos
            fields.TryGetValue("ciudad_suscriptor_conjunto", out toSet);
            toSet.SetValue(persona.ciudad_suscriptor_conjunto.ToUpper());

            // Telefono suscriptor conjunto
            fields.TryGetValue("telefono_suscriptor_conjunto", out toSet);
            toSet.SetValue(persona.telefono_suscriptor_conjunto.ToUpper());

            // Celular suscriptor conjunto
            fields.TryGetValue("celular_suscriptor_conjunto", out toSet);
            toSet.SetValue(persona.celular_suscriptor_conjunto.ToUpper());

            // Empresa laboral del Suscriptor conjunto
            fields.TryGetValue("empresa_empleadora_suscriptor_conjunto", out toSet);
            toSet.SetValue(persona.empresa_empleadora_suscriptor_conjunto.ToUpper());

            // Cargo laboral suscriptor conjunto
            fields.TryGetValue("cargo_suscriptor_conjunto", out toSet);
            toSet.SetValue(persona.cargo_suscriptor_conjunto.ToUpper());

            // ingresos Mensuales
            fields.TryGetValue("ingresos_mensuales_suscriptor_conjunto", out toSet);
            toSet.SetValue(String.Format("{0:0.00}", persona.ingresos_mensuales_suscriptor_conjunto).ToUpper());

            // Egresos Mensuales
            fields.TryGetValue("egresos_mensuales_suscriptor_conjunto", out toSet);
            toSet.SetValue(String.Format("{0:0.00}", persona.egresos_mensuales_suscriptor_conjunto).ToUpper());

            // Otros ingresos
            fields.TryGetValue("otros_ingresos_suscriptor_conjunto", out toSet);
            toSet.SetValue(String.Format("{0:0.00}", persona.otros_ingresos_suscriptor_conjunto).ToUpper());

            // Dirección oficina laboral suscriptor conjunto
            fields.TryGetValue("direccion_empleo_suscriptor_conjunto", out toSet);
            toSet.SetValue(String.Format("{0:0.00}", persona.direccion_empleo_suscriptor_conjunto).ToUpper());

            //Departamento suscriptor conjunto
            fields.TryGetValue("departamento_empleo_suscriptor_conjunto", out toSet);
            toSet.SetValue(persona.departamento_empleo_suscriptor_conjunto.ToUpper());

            // CIudad empleo suscriptor conjunto
            fields.TryGetValue("ciudad_empleo_suscriptor_conjunto", out toSet);
            toSet.SetValue(persona.ciudad_empleo_suscriptor_conjunto.ToUpper());

            // Teléfono empleo Suscriptor Conjunto            
            fields.TryGetValue("telefono_empleo_suscriptor_conjunto", out toSet);
            toSet.SetValue(persona.telefono_empleo_suscriptor_conjunto.ToUpper());

            // Celular empleo Suscriptor conjunto
            fields.TryGetValue("celular_empleo_suscriptor_conjunto", out toSet);
            toSet.SetValue(persona.celular_empleo_suscriptor.ToUpper());

            // Profesion o actividad económica y suscriptor conjunto
            fields.TryGetValue("profesion_suscriptor_conjunto", out toSet);
            toSet.SetValue(persona.profesion_suscriptor_conjunto.ToUpper());

            // Envio Correspondencia suscriptor conjunto 
            fields.TryGetValue("correspondencia_suscriptor_conjunto", out toSet);
            toSet.SetValue(persona.envio_correspondencia_suscriptor.ToUpper());

            // Email Suscriptor Conjunto
            fields.TryGetValue("email_suscriptor_conjunto", out toSet);
            toSet.SetValue(persona.email_suscriptor_conjunto.ToUpper());

            // Tipo de bien
            fields.TryGetValue("tipo_de_bien", out toSet);
            toSet.SetValue(persona.tipo_de_bien.ToUpper());

            // marca exclusiva bien
            fields.TryGetValue("marca_exclusiva_bien", out toSet);
            toSet.SetValue(persona.marca_exclusiva_bien.ToUpper());

            // Detalles bien
            fields.TryGetValue("detalles_bien", out toSet);
            toSet.SetValue(persona.detalles_bien.ToUpper());

            // codigo bien
            fields.TryGetValue("codigo_bien", out toSet);
            toSet.SetValue(persona.codigo_bien.ToUpper());

            // cuota ingreso
            fields.TryGetValue("cuota_ingreso", out toSet);
            toSet.SetValue(String.Format("{0:0.00}", persona.cuota_ingreso));

            // Administración
            fields.TryGetValue("administracion", out toSet);
            toSet.SetValue(String.Format("{0:0.00}", persona.administracion));

            // IVA Cuota Ingreso
            fields.TryGetValue("iva_cuota_ingreso", out toSet);
            toSet.SetValue(String.Format("{0:0.00}", persona.iva_cuota_ingreso));

            // IVA Administración
            fields.TryGetValue("iva_administracion", out toSet);
            toSet.SetValue(String.Format("{0:0.00}", persona.iva_administracion));

            // Total Cuota ingreso
            fields.TryGetValue("total_cuota_ingreso", out toSet);
            toSet.SetValue(String.Format("{0:00}", persona.total_cuota_ingreso));

            // Total Cuota Bruta
            fields.TryGetValue("total_cuota_bruta", out toSet);
            toSet.SetValue(String.Format("{0:0.00}", persona.total_cuota_bruta));

            // Primera cuota neta
            fields.TryGetValue("primera_cuota_neta", out toSet);
            toSet.SetValue(String.Format("{0:0.00}", persona.primera_cuota_neta));

            // Valor primer pago
            fields.TryGetValue("valor_primer_pago", out toSet);
            toSet.SetValue(String.Format("{0:0.00}", persona.valor_primero_pago));

            //


        }

        /// <summary>
        /// Transforma el formulario HTML en una clase modelo.
        /// </summary>
        /// <param name="form">Los datos del formulario HTML capturados</param>
        /// <returns>una entidad de personas con todos los datos del contrato PDF</returns>
        public ContratoDigitalModel FillPersona(IFormCollection form)
        {
            ContratoDigitalModel persona = new ContratoDigitalModel();
            // Suscriptor
            persona.numero_de_contrato = int.Parse(form["numero_de_contrato"]);
            persona.nombre_razon_social_suscriptor = form["nombre_suscriptor"];
            persona.tipo_documento_identidad_suscriptor = form["tipo_identificacion_suscriptor"];

            int.TryParse(s: form["documento_identidad_suscriptor"], result: out int documento_identidad_suscriptor);
            persona.documento_identidad_suscriptor = documento_identidad_suscriptor;
                        
            persona.procedencia_documento_identidad_suscriptor = form["procedencia_documento_identidad_suscriptor"];
            
            // Representante legal del suscriptor
            persona.nombre_razon_social_representante_legal = form["nombre_razon_social_representante_legal"];
            persona.tipo_documento_representante_legal = form["tipo_documento_representante_legal"];

            int.TryParse(s: form["documento_identidad_representante_legal"], result: out int documento_identidad_representante_legal);
            persona.documento_identidad_representante_legal = documento_identidad_representante_legal;

            persona.procedencia_documento_identidad_representante_legal = form["procedencia_documento_identidad_representante_legal"];

            // Datos del suscriptor
            DateTime fecha_nacimiento_suscriptor = DateTime.Today;
            DateTime.TryParseExact(form["fecha_nacimiento_suscriptor"],"yyyy-MM-dd", null,System.Globalization.DateTimeStyles.None, out fecha_nacimiento_suscriptor);
            persona.fecha_nacimiento_suscriptor = fecha_nacimiento_suscriptor;


            persona.lugar_nacimiento_suscriptor = form["lugar_nacimiento_suscriptor"];
            persona.sexo_suscriptor = form["sexo_suscriptor"];
            persona.estado_civil_suscriptor = form["estado_civil_suscriptor"];
            persona.direccion_domicilio_suscriptor = form["direccion_domicilio_suscriptor"];
            persona.pais_suscriptor = form["pais_suscriptor"];
            persona.departamento_suscriptor = form["departamento_suscriptor"];
            persona.ciudad_suscriptor = form["ciudad_suscriptor"];
            persona.telefono_suscriptor = form["telefono_suscriptor"];
            persona.celular_suscriptor = form["celular_suscriptor"];
            persona.empresa_empleadora_suscriptor = form["empresa_empleadora_suscriptor"];
            persona.cargo_suscriptor = form["cargo_suscriptor"];

            Decimal.TryParse(s: form["ingresos_mensuales_suscriptor"], result: out Decimal ingresos_mensuales_suscriptor);
            persona.ingresos_mensuales_suscriptor = ingresos_mensuales_suscriptor;

            Decimal.TryParse(s: form["egresos_mensuales_suscriptor"], result: out Decimal egresos_mensuales_suscriptor);
            persona.egresos_mensuales_suscriptor = egresos_mensuales_suscriptor;

            Decimal.TryParse(s: form["otros_ingresos_suscriptor"], result: out Decimal otros_ingresos_suscriptor);
            persona.otros_ingresos_suscriptor = otros_ingresos_suscriptor;

            persona.dirección_empleo_suscriptor = form["direccion_empleo_suscriptor"];
            persona.departamento_empleo_suscriptor = form["departamento_empleo_suscriptor"];
            persona.ciudad_empleo_suscriptor = form["ciudad_empleo_suscriptor"];
            persona.telefono_empleo_suscriptor = form["telefono_empleo_suscriptor"];
            persona.celular_empleo_suscriptor = form["celular_empleo_suscriptor"];
            persona.profesion_suscriptor = form["profesion_suscriptor"];
            persona.envio_correspondencia_suscriptor = form["envio_correspondencia_suscriptor"];
            persona.email_suscriptor = form["email_suscriptor"];

            // Suscriptor conjunto
            persona.nombre_suscriptor_conjunto = form["nombre_suscriptor_conjunto"];
            persona.tipo_identidad_suscriptor_conjunto = form["tipo_identidad_suscriptor_conjunto"];

            int.TryParse(s: form["documento_identidad_suscriptor_conjunto"], result: out int documento_identidad_suscriptor_conjunto);
            persona.documento_identidad_suscriptor_conjunto = documento_identidad_suscriptor_conjunto;

            persona.procedencia_documento_identidad_suscriptor_conjunto = form["procedencia_documento_identidad_suscriptor_conjunto"];

            // Representante legal Suscriptor conjunto
            persona.representante_legal_suscriptor_conjunto = form["representante_legal_suscriptor_conjunto"];
            persona.tipo_identidad_representante_legal_suscriptor_conjunto = form["tipo_identidad_representante_legal_suscriptor_conjunto"];

            int.TryParse(s: form["documento_identidad_representante_legal_suscriptor_conjunto"], result: out int documento_identidad_representante_legal_suscriptor_conjunto);
            persona.documento_identidad_representante_legal_suscriptor_conjunto = documento_identidad_representante_legal_suscriptor_conjunto;
            
            persona.procedencia_identificacion_representante_legal_suscriptor_conjunto = form["procedencia_identificacion_representante_legal_suscriptor_conjunto"];


            // Datos del suscriptor conjunto

            DateTime fecha_nacimiento_suscriptor_conjunto = DateTime.Now;
            DateTime.TryParseExact(form["fecha_nacimiento_suscriptor_conjunto"], "yyyy-MM-dd", null, System.Globalization.DateTimeStyles.None, out fecha_nacimiento_suscriptor_conjunto);
            persona.fecha_nacimiento_suscriptor_conjunto = fecha_nacimiento_suscriptor_conjunto;

            persona.lugar_nacimiento_suscriptor_conjunto = form["fecha_nacimiento_suscriptor_conjunto"];
            persona.sexo_suscriptor_conjunto = form["sexo_suscriptor_conjunto"];
            persona.estado_civil_suscriptor_conjunto = form["estado_civil_suscriptor_conjunto"];
            persona.direccion_suscriptor_conjunto = form["dirección_suscriptor_conjunto"];
            persona.departamento_suscriptor_conjunto = form["departamento_suscriptor_conjunto"];
            persona.ciudad_suscriptor_conjunto = form["ciudad_suscriptor_conjunto"];
            persona.telefono_suscriptor_conjunto = form["telefono_suscriptor_conjunto"];
            persona.celular_suscriptor_conjunto = form["celular_suscriptor_conjunto"];
            persona.empresa_empleadora_suscriptor_conjunto = form["empresa_empleadora_suscriptor_conjunto"];
            persona.cargo_suscriptor_conjunto = form["cargo_suscriptor_conjunto"];

            Decimal.TryParse(s: form["ingresos_mensuales_suscriptor_conjunto"], result: out Decimal ingresos_mensuales_suscriptor_conjunto);
            persona.ingresos_mensuales_suscriptor_conjunto = ingresos_mensuales_suscriptor_conjunto;

            Decimal.TryParse(s: form["egresos_mensuales_suscriptor_conjunto"], result: out Decimal egresos_mensuales_suscriptor_conjunto);
            persona.egresos_mensuales_suscriptor_conjunto = egresos_mensuales_suscriptor_conjunto;

            Decimal.TryParse(s: form["otros_ingresos_suscriptor_conjunto"], result: out Decimal otros_ingresos_suscriptor_conjunto);
            persona.otros_ingresos_suscriptor_conjunto = otros_ingresos_suscriptor_conjunto;

            persona.direccion_empleo_suscriptor_conjunto = form["direccion_empleo_suscriptor_conjunto"];
            persona.departamento_empleo_suscriptor_conjunto = form["departamento_empleo_suscriptor_conjunto"];
            persona.ciudad_empleo_suscriptor_conjunto = form["ciudad_empleo_suscriptor_conjunto"];
            persona.telefono_empleo_suscriptor_conjunto = form["telefono_empleo_suscriptor_conjunto"];
            persona.celular_empleo_suscriptor_conjunto = form["celular_empleo_suscriptor_conjunto"];
            persona.profesion_suscriptor_conjunto = form["profesion_suscriptor_conjunto"];
            persona.correspondencia_suscriptor_conjunto = form["correspondencia_suscriptor_conjunto"];
            persona.email_suscriptor_conjunto = form["email_suscriptor_conjunto"];

            //Datos del bien
            persona.tipo_de_bien = form["tipo_de_bien"];
            persona.marca_exclusiva_bien = form["marca_exclusiva_bien"];
            persona.detalles_bien = form["detalles_bien"];
            persona.codigo_bien = form["codigo_bien"];

            Decimal.TryParse(s: form["valor_bien"], result: out Decimal valor_bien);
            persona.valor_bien = valor_bien;

            persona.cuota_bien = form["cuota_bien"];
            persona.plazo_bien = form["plazo_bien"];

            // pago Inicial

            Decimal.TryParse(s: form["cuota_ingreso"], result: out Decimal cuota_ingreso);
            persona.cuota_ingreso = cuota_ingreso;

            Decimal.TryParse(s: form["administracion"], result: out Decimal administracion);
            persona.administracion = administracion;

            Decimal.TryParse(s: form["iva_cuota_ingreso"], result: out Decimal iva_cuota_ingreso);
            persona.iva_cuota_ingreso = iva_cuota_ingreso;

            Decimal.TryParse(s: form["iva_administracion"], result: out Decimal iva_administracion);
            persona.iva_administracion = iva_administracion;

            Decimal.TryParse(s: form["total_cuota_ingreso"], result: out Decimal total_cuota_ingreso);
            persona.total_cuota_ingreso = total_cuota_ingreso;

            Decimal.TryParse(s: form["total_cuota_bruta"], result: out Decimal total_cuota_bruta);
            persona.total_cuota_bruta = total_cuota_bruta;

            Decimal.TryParse(s: form["primera_cuota_neta"], result: out Decimal primera_cuota_neta);
            persona.primera_cuota_neta = primera_cuota_neta;

            Decimal.TryParse(s: form["valor_primer_pago"], result: out Decimal valor_primer_pago);
            persona.valor_primero_pago = valor_primer_pago;

            return persona;
        }
    }
}
