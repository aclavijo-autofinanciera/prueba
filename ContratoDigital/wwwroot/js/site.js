// Write your JavaScript code.
jQuery(function ($) {

    // Formato de los montos
    /*$("#valorDelBien").text('$ ' + parseFormat($("#valorDelBien").html()));
    $("#CuotaDeIngreso").text('$ ' + parseFormat($("#CuotaDeIngreso").html()));
    $("#IvaCuotaIngreso").text('$ ' + parseFormat($("#IvaCuotaIngreso").html()));
    $("#TotalCuotaIngreso").text('$ ' + parseFormat($("#TotalCuotaIngreso").html()));
    $("#PrimeraCuotaNeta").text('$ ' + parseFormat($("#PrimeraCuotaNeta").html()));
    $("#Administracion").text('$ ' + parseFormat($("#Administracion").html()));
    $("#IvaAdministracion").text('$ ' + parseFormat($("#IvaAdministracion").html()));
    $("#TotalCuotaBruta").text('$ ' + parseFormat($("#TotalCuotaBruta").html()));
    $("#ValorTotalPrimerPago").text('$ ' + parseFormat($("#ValorTotalPrimerPago").html()));*/
    $('[data-toggle="tooltip"]').tooltip()



    // <!-- Métodos de validación -->
    $.datepicker.regional['es-es'] = {
        clearText: 'Borrar', clearStatus: '',
        closeText: 'Cerrar', closeStatus: 'Cerrar sin modificar',
        prevText: '&lt;Ant', prevStatus: 'Ver el mes anterior',
        nextText: 'Sig&gt;', nextStatus: 'Ver el mes siguiente',
        currentText: 'Actual', currentStatus: 'Ver el mes en curso',
        monthNames: ['Enero', 'Febrero', 'Marzo', 'Abril', 'Mayo', 'Junio',
            'Julio', 'Agosto', 'Septiembre', 'Octubre', 'Noviembre', 'Diciembre'],
        monthNamesShort: ['Ene', 'Feb', 'Mar', 'Abr', 'May', 'Jun',
            'Jul', 'Ago', 'Sep', 'Oct', 'Nov', 'Dec'],
        monthStatus: 'Ver otro mes', yearStatus: 'ver otro año',
        weekHeader: 'Sem', weekStatus: '',
        dayNames: ['Domingo', 'Lunes', 'Martes', 'Miércoles', 'Jueves', 'Viernes', 'Sábado'],
        dayNamesShort: ['Dom', 'Lun', 'Mar', 'Mie', 'Jue', 'Vie', 'Sab'],
        dayNamesMin: ['Do', 'Lu', 'Ma', 'Mi', 'Ju', 'Vi', 'Sa'],
        dayStatus: 'Utilizar DD como el primer día de la semana', dateStatus: 'Elegir el DD, MM, d',
        dateFormat: 'yy-mm-dd', firstDay: 0,
        initStatus: 'Elija una fecha', isRTL: false
    };
    $.datepicker.setDefaults($.datepicker.regional['es-es']);
    $.validator.addMethod("phoneColombia", function (phone_number, element) {
        phone_number = phone_number.replace(/\s+/g, "");
        return this.optional(element) || phone_number.length > 10 &&
            phone_number.match(/^(?:(?:\(?(?:00|\+)([1-4]\d\d|[1-9]\d?)\)?)?[\-\.\ \\\/]?)?((?:\(?\d{1,}\)?[\-\.\ \\\/]?){0,})(?:[\-\.\ \\\/])?$/i);
        //phone_number.match(/^(?:(?:\(?(?:00|\+)([1-4]\d\d|[1-9]\d?)\)?)?[\-\.\ \\\/]?)?((?:\(?\d{1,}\)?[\-\.\ \\\/]?){0,})(?:[\-\.\ \\\/])?$/i);
        //phone_number.match(/^(?:(?:\(?(?:00|\+)([1-4]\d\d|[1-9]\d?)\)?)?[\-\.\ \\\/]?)?((?:\(?\d{1,}\)?[\-\.\ \\\/]?){0,})(?:[\-\.\ \\\/]?(?:#|ext\.?|extension|x)[\-\.\ \\\/]?(\d+))?$/i);
    }, "Especifique un número de teléfono");
    jQuery.validator.addMethod("alphabetical", function (value, element) {
        return this.optional(element) || /^[a-zA-ZáéíóúÁÉÍÓÚüÜñÑ- ]+$/i.test(value);
    }, "Este campo debe ser alfabético"); 
    // <!-- Métodos de validación -->


    $("#fecha_nacimiento_suscriptor,#fecha_nacimiento_suscriptor_conjunto,#FechaNacimiento").datepicker({        
        changeMonth: true,
        changeYear: true,
        dateFormat: 'yy-mm-dd',
        yearRange: "c-60:c-18"
    });    
    
    $("#tipo_identificacion_suscriptor").on('change', function () {

        if ($("#tipo_identificacion_suscriptor").find(":selected").val() === "NIT") {
            $("#RepreentanteLegalSection").fadeIn("slow").removeClass("d-none");
        }
        else {
            $("#RepreentanteLegalSection").fadeOut("slow").Finish().addClass("d-none");
        }
    });

    $("#tipo_identidad_suscriptor_conjunto").on('change', function () {

        if ($("#tipo_identidad_suscriptor_conjunto").find(":selected").val() === "NIT") {
            $("#RepresentanteLegalConjuntoSection").fadeIn("slow").removeClass("d-none");
        }
        else {
            $("#RepresentanteLegalConjuntoSection").fadeOut("slow").Finish().addClass("d-none");
        }
    });

    $("#isSuscriptorConjunto").on("click", function () {
        $("#SuscriptorConjuntoSection").fadeIn("slow").removeClass("d-none");    
        $("#nombre_suscriptor_conjunto").prop("required", true);
    });

    $(".ProspectoValidation").validate({
        rules: {
            // Prospecto
            PrimerNombre: {
                required: true,
                alphabetical: true
            },
            SegundoNombre: {                
                alphabetical: true
            },
            PrimerApellido: {
                required: true,
                alphabetical: true
            },
            SegundoApellido: {                
                alphabetical: true
            },            
            TipoDocumentoIdentidad: {
                required: true,
                digits: true
            },            
            Telefono: {
                required: true,
                phoneColombia: true
            },
            Celular: {
                required: true,
                phoneColombia: true
            },
            Email: {
                required: true,
                email: true
            }
        },
        messages: {
            // Prospecto
            PrimerNombre: {
                required: "Este campo es requerido",
                alphabetical: "Este campo debe ser alfabético"
            },
            SegundoNombre: {                
                alphabetical: "Este campo debe ser alfabético"
            },
            PrimerApellido: {
                required: "Este campo es requerido",
                alphabetical: "Este campo debe ser alfabético"
            },
            SegundoApellido: {                
                alphabetical: "Este campo debe ser alfabético"
            },
            TipoDocumentoIdentidad: {
                required: "Este campo es requerido",
                digits: "Este campo debe ser numérico"
            },            
            Telefono: {
                required: "Este campo es requerido",
                phoneColombia: "Este campo debe ser un teléfono válido"
            },
            Celular: {
                required: "Este campo es requerido",
                phoneColombia: "Este campo debe ser unt teléfono válido"
            },
            Email: {
                required: "Este campo es requerido",
                email: "Este cmapo debe ser un correo válido"
            }
        }

    });

    $(".needs-validation").validate({
        rules: {
            // Suscriptor
            nombre_suscriptor: {
                required: true,
                alphabetical:true
            },
            tipo_identificacion_suscriptor: {
                required:true
            },
            documento_identidad_suscriptor: {
                required: true,
                digits:true
            },
            procedencia_documento_identidad_suscriptor: {
                    required:true
            },
            fecha_nacimiento_suscriptor: {
                required: true,
                dateISO: true
            },
            lugar_nacimiento_suscriptor: {
                required:true
            },
            sexo_suscriptor: {
                required:true
            },
            estado_civil_suscriptor: {
                required:true
            },
            direccion_domicilio_suscriptor: {
                required: true,
                maxlength:200
            },
            departamento_suscriptor:{
                required: true                
            },
            ciudad_suscriptor:{
                required:true
            },
            telefono_suscriptor: {
                required: true,
                phoneColombia: true
            },
            celular_suscriptor: {
                required: true,
                phoneColombia:true
            },
            empresa_empleadora_suscriptor: {
                    required:true
            },
            cargo_suscriptor: {
                    required:true
            },
            ingresos_mensuales_suscriptor: {
                required: true,
                number: true
            },
            egresos_mensuales_suscriptor: {
                required: true,
                number:true
            },
            otros_ingresos_suscriptor: {
                required: true,
                number:true
            },
            direccion_empleo_suscriptor: {
                required: true,
                maxlength:200
            },
            departamento_empleo_suscriptor: {
                required: true
            },
            ciudad_empleo_suscriptor: {
                required:true
            },
            telefono_empleo_suscriptor: {
                phoneColombia:true
            },
            celular_empleo_suscriptor: {
                phoneColombia:true
            },
            profesion_suscriptor: {
                    required:true
            },
            envio_correspondencia_suscriptor: {
                    required:true
            },
            email_suscriptor: {
                required: true,
                email:true                
            },
            detalles_bien: {
                required:true                    
            },
            valor_bien: {
                required: true,
                number:true
            },
            codigo_bien: {
                required:true
            },
            cuota_bien: {
                required:true
            },
            plazo_bien: {
                required:true
            },
            cuota_ingreso: {
                required: true,
                number:true
            },
            administracion: {
                required: true,
                number: true
            },
            iva_cuota_ingreso: {
                required: true,
                number: true
            },
            iva_administracion: {
                required: true,
                number: true
            },
            total_cuota_ingreso: {
                required: true,
                number: true
            },
            total_cuota_bruta: {
                required: true,
                number: true
            },
            primera_cuota_neta: {
                required: true,
                number: true
            },
            valor_primer_pago: {
                required: true,
                number: true
            }
        },
        messages: {
            // Suscriptor
            nombre_suscriptor: {
                required: "Requerido",
                alphabetical: "El nombre debe ser alfanumérico"
            },
            tipo_identificacion_suscriptor: {
                    required: "Requerido"
            },
            documento_identidad_suscriptor: {
                required: "Requerido",
                digits: "La identificación debe ser numérica"
            },
            procedencia_documento_identidad_suscriptor: {
                required: "Requerido"
            },
            fecha_nacimiento_suscriptor: {
                required: "Requerido",
                dateISO: "Debe ingresar una fecha válida"
            },
            lugar_nacimiento_suscriptor: {
                required: "Requerido"
            },
            sexo_suscriptor: {
                required: "Requerido"
            },
            estado_civil_suscriptor: {
                required: "Requerido"
            },
            direccion_domicilio_suscriptor: {
                required: "Requerido",
                maxlength: "El campo no puede ser mayor a 200 caracteres"
            },
            departamento_suscriptor:{
                required: "Requerido"
            },
            ciudad_suscriptor:{
                required: "Requerido"
            },
            telefono_suscriptor: {
                required: "Requerido",
                phoneColombia: "Debe ingresar un número de teléfono válido"
            },
            celular_suscriptor: {
                required: "Requerido",
                phoneColombia: "Debe ingresar un número de teléfono válido"
            },
            empresa_empleadora_suscriptor: {
                required: "Requerido"
            },
            cargo_suscriptor: {
                required: "Requerido"
            },
            ingresos_mensuales_suscriptor: {
                required: "Requerido",
                number: "Debe ingresar solo números"
            },
            egresos_mensuales_suscriptor: {
                required: "Requerido",
                number: "Debe ingresar solo números"
            },
            otros_ingresos_suscriptor: {
                required: "Requerido",
                number: "Debe ingresar solo números"
            },
            direccion_empleo_suscriptor: {
                required: "Requerido",
                maxlength: "El campo no puede ser mayor a 200 caracteres"
            },
            departamento_empleo_suscriptor: {
                required: "Requerido"
            },
            ciudad_empleo_suscriptor: {
                required: "Requerido"
            },
            telefono_empleo_suscriptor: {
                phoneColombia: "Debe ingresar un númerdo de teléfono válido"
            },
            celular_empleo_suscriptor: {
                phoneColombia: "Debe ingresar un númerdo de teléfono válido"
            },
            profesion_suscriptor: {
                required: "Requerido"
            },
            envio_correspondencia_suscriptor: {
                required: "Requerido"
            },
            email_suscriptor: {
                required: "Requerido",
                email:"Debe ingresar una dirección de correo válida"
            },
            detalles_bien: {
                required: "Requerido"
            },
            valor_bien: {
                required: "Requerido",
                number: "Debe ingresar un valor númerico válido"
            },
            codigo_bien: {
                required: "Requerido"
            },
            cuota_bien: {
                required: "Rrequerido"
            },
            plazo_bien: {
                required: "Requerido"
            },
            cuota_ingreso: {
                required: "Requerido",
                number: "Debe ingresar una cifra válida"
            },
            administracion: {
                required: "Requerido",
                number: "Debe ingresar una cifra válida"
            },
            iva_cuota_ingreso: {
                required: "Requerido",
                number: "Debe ingresar una cifra válida"
            },
            iva_administracion: {
                required: "Requerido",
                number: "Debe ingresar una cifra válida"
            },
            total_cuota_ingreso: {
                required: "Requerido",
                number: "Debe ingresar una cifra válida"
            },
            total_cuota_bruta: {
                required: "Requerido",
                number: "Debe ingresar una cifra válida"
            },
            primera_cuota_neta: {
                required: "Requerido",
                number: "Debe ingresar una cifra válida"
            },
            valor_primer_pago: {
                required: "Requerido",
                number: "Debe ingresar una cifra válida"
            }
            
        },
        submitHandler: function (form) {
            form.submit();
        }
    });

// Calculadora
$("#referencia").on('change', function () {
        var canmes_72 = 72;
        var canmes_60 = 60;
        var canmes_40 = 40;
        var adm_72 = 0.15;
        var adm_60 = 0.25;
        var adm_40 = 0.20;
        var porcentajeInscripcion = 0.03;
        var iva = 0.19;
        canmes = 0;
        valbien = $("#referencia").find(":selected").val(); //document.getElementById("select").value;
        //tipo_plan =  document.getElementById("nombre_plan").value;
        //tipo_plan = tipo_plan.split(':');
        //tipo_plan_adm = tipo_plan[0];
        //tipo_plan_inscrip = tipo_plan[1];


        var por_inscripcion_72 = 0.035;
        var tasafil = 0.035;
        var gasadm36 = 0.15;
        var gasadm = 0.25;
        var gasadm144 = 0.48;
        var cuotmens = 0;
        var pripag = 0;
        var costodelbien = $("#referencia").val();
        if (valbien === "" || valbien === 0) {
            valbien = 0;
            $("#costo_del_bien, #cuota_ingreso, #administracion, #iva_cuota_ingreso, #iva_administracion, #total_cuota_ingreso, #total_cuota_bruta, #primera_cuota_neta, #valor_primer_pago").val(0.00);
        }

        // Valor del costo del bien
        $("#costo_del_bien").finish().fadeTo('normal', 0).val(parseFormat(costodelbien)).finish().fadeTo('normal', 1);

        // Cuota de ingreso
        valorPorcentajeInscripcion = costodelbien * 0.045;
        $("#cuota_ingreso").finish().fadeTo('normal', 0).val(parseFormat(valorPorcentajeInscripcion)).finish().fadeTo('normal', 1);

        // Iva Inscripción
        ivaInscripcion = 0.045 * valbien * iva;
        $("#iva_cuota_ingreso").finish().fadeTo('normal', 0).val(parseFormat(ivaInscripcion)).finish().fadeTo('normal', 1);

        // Total de la inscripción
        totalInscripcion = valorPorcentajeInscripcion + ivaInscripcion;
        $("#total_cuota_ingreso").finish().fadeTo('normal', 0).val(parseFormat(totalInscripcion)).finish().fadeTo('normal', 1);

        // Primera cuota
        cuotaNeta40 = valbien / canmes_40;
        $('#primera_cuota_neta').finish().fadeTo('normal', 0).val(parseFormat(cuotaNeta40)).finish().fadeTo('normal', 1);

        // Administracion
        administracion40 = 0.2 * cuotaNeta40;
        $("#administracion").finish().fadeTo('normal', 0).val( parseFormat(administracion40)).finish().fadeTo('normal', 1);

        // IVA Administración
        ivaAdministracion40 = administracion40 * iva;
        $("#iva_administracion").finish().fadeTo('normal', 0).val(parseFormat(ivaAdministracion40)).finish().fadeTo('normal', 1);

        //Total Cuota Bruta
        totalCuotaMensual40 = cuotaNeta40 + administracion40 + ivaAdministracion40;
        $("#total_cuota_bruta").finish().fadeTo('normal', 0).val(parseFormat(totalCuotaMensual40)).finish().fadeTo('normal', 1);

        // Valor total del primer pago
        valorPrimeraInversion40 = totalInscripcion + totalCuotaMensual40;
        $("#valor_primer_pago").finish().fadeTo('normal', 0).val( parseFormat(valorPrimeraInversion40)).finish().fadeTo('normal', 1);








        
    });
    
});

// Example starter JavaScript for disabling form submissions if there are invalid fields
(function () {
    'use strict';
    window.addEventListener('load', function () {
        // Fetch all the forms we want to apply custom Bootstrap validation styles to
        var forms = document.getElementsByClassName('needs-validation');
        // Loop over them and prevent submission
        var validation = Array.prototype.filter.call(forms, function (form) {
            form.addEventListener('submit', function (event) {
                if (form.checkValidity() === false) {
                    event.preventDefault();
                    event.stopPropagation();
                }
                form.classList.add('was-validated');
            }, false);
        });
    }, false);
})();

function parseFormat(num) {
    var entero, decimal;
    var numero = "" + num + "";
    if (numero.indexOf(".") !== -1) {
        decimal = numero.substring(numero.indexOf("."), numero.indexOf(".") + 3);
    }
    else {
        decimal = ".00";
    }
    entero = "" + parseInt(numero) + "";
    var l = entero.length;
    var s = l - 3;
    while (s > 0) {
        entero = entero.substring(0, s) + "," + entero.substring(s, l + 1);
        s = s - 3;
    }
    numero = entero + decimal;
    return numero;
}

/*
 rules: {
    field_name: {
      required: true, //Makes the element required.
      minlength: 3, //Makes the element require a given minimum length
      maxlength: 4, //Makes the element require a given maximum length.
      rangelength: [2,7], // Makes the element require a given value range.

      // These are integer values
      min: 13, //Makes the element require a given minimum
      max: 25, // Makes the element require a given maximum
      range: [2,7], // Makes the element require a given value range

      // Miscellaneous
      email : true, // Makes the element require a valid email
      dateISO: true, // Makes the element require an ISO date.
      number: true, // Makes the element require a decimal number
      digits: true, // Makes the element require digits only.
    }
  }
 */
/*Masked Input
 
 window.onload = function() {
   MaskedInput({
      elm: document.getElementById('phone'), // select only by id
      format: '+375 (__) ___-__-__',
      separator: '+375 ()-'
   });

     MaskedInput({
      elm: document.getElementById('phone2'), // select only by id
      format: '+375 (__) ___-__-__',
      separator: '+375 ()-'
   });
};





// masked_input_1.4-min.js
// angelwatt.com/coding/masked_input.php
(function(a){a.MaskedInput=function(f){if(!f||!f.elm||!f.format){return null}if(!(this instanceof a.MaskedInput)){return new a.MaskedInput(f)}var o=this,d=f.elm,s=f.format,i=f.allowed||"0123456789",h=f.allowedfx||function(){return true},p=f.separator||"/:-",n=f.typeon||"_YMDhms",c=f.onbadkey||function(){},q=f.onfilled||function(){},w=f.badkeywait||0,A=f.hasOwnProperty("preserve")?!!f.preserve:true,l=true,y=false,t=s,j=(function(){if(window.addEventListener){return function(E,C,D,B){E.addEventListener(C,D,(B===undefined)?false:B)}}if(window.attachEvent){return function(D,B,C){D.attachEvent("on"+B,C)}}return function(D,B,C){D["on"+B]=C}}()),u=function(){for(var B=d.value.length-1;B>=0;B--){for(var D=0,C=n.length;D<C;D++){if(d.value[B]===n[D]){return false}}}return true},x=function(C){try{C.focus();if(C.selectionStart>=0){return C.selectionStart}if(document.selection){var B=document.selection.createRange();return -B.moveStart("character",-C.value.length)}return -1}catch(D){return -1}},b=function(C,E){try{if(C.selectionStart){C.focus();C.setSelectionRange(E,E)}else{if(C.createTextRange){var B=C.createTextRange();B.move("character",E);B.select()}}}catch(D){return false}return true},m=function(D){D=D||window.event;var C="",E=D.which,B=D.type;if(E===undefined||E===null){E=D.keyCode}if(E===undefined||E===null){return""}switch(E){case 8:C="bksp";break;case 46:C=(B==="keydown")?"del":".";break;case 16:C="shift";break;case 0:case 9:case 13:C="etc";break;case 37:case 38:case 39:case 40:C=(!D.shiftKey&&(D.charCode!==39&&D.charCode!==undefined))?"etc":String.fromCharCode(E);break;default:C=String.fromCharCode(E);break}return C},v=function(B,C){if(B.preventDefault){B.preventDefault()}B.returnValue=C||false},k=function(B){var D=x(d),F=d.value,E="",C=true;switch(C){case (i.indexOf(B)!==-1):D=D+1;if(D>s.length){return false}while(p.indexOf(F.charAt(D-1))!==-1&&D<=s.length){D=D+1}if(!h(B,D)){c(B);return false}E=F.substr(0,D-1)+B+F.substr(D);if(i.indexOf(F.charAt(D))===-1&&n.indexOf(F.charAt(D))===-1){D=D+1}break;case (B==="bksp"):D=D-1;if(D<0){return false}while(i.indexOf(F.charAt(D))===-1&&n.indexOf(F.charAt(D))===-1&&D>1){D=D-1}E=F.substr(0,D)+s.substr(D,1)+F.substr(D+1);break;case (B==="del"):if(D>=F.length){return false}while(p.indexOf(F.charAt(D))!==-1&&F.charAt(D)!==""){D=D+1}E=F.substr(0,D)+s.substr(D,1)+F.substr(D+1);D=D+1;break;case (B==="etc"):return true;default:return false}d.value="";d.value=E;b(d,D);return false},g=function(B){if(i.indexOf(B)===-1&&B!=="bksp"&&B!=="del"&&B!=="etc"){var C=x(d);y=true;c(B);setTimeout(function(){y=false;b(d,C)},w);return false}return true},z=function(C){if(!l){return true}C=C||event;if(y){v(C);return false}var B=m(C);if((C.metaKey||C.ctrlKey)&&(B==="X"||B==="V")){v(C);return false}if(C.metaKey||C.ctrlKey){return true}if(d.value===""){d.value=s;b(d,0)}if(B==="bksp"||B==="del"){k(B);v(C);return false}return true},e=function(C){if(!l){return true}C=C||event;if(y){v(C);return false}var B=m(C);if(B==="etc"||C.metaKey||C.ctrlKey||C.altKey){return true}if(B!=="bksp"&&B!=="del"&&B!=="shift"){if(!g(B)){v(C);return false}if(k(B)){if(u()){q()}v(C,true);return true}if(u()){q()}v(C);return false}return false},r=function(){if(!d.tagName||(d.tagName.toUpperCase()!=="INPUT"&&d.tagName.toUpperCase()!=="TEXTAREA")){return null}if(!A||d.value===""){d.value=s}j(d,"keydown",function(B){z(B)});j(d,"keypress",function(B){e(B)});j(d,"focus",function(){t=d.value});j(d,"blur",function(){if(d.value!==t&&d.onchange){d.onchange()}});return o};o.resetField=function(){d.value=s};o.setAllowed=function(B){i=B;o.resetField()};o.setFormat=function(B){s=B;o.resetField()};o.setSeparator=function(B){p=B;o.resetField()};o.setTypeon=function(B){n=B;o.resetField()};o.setEnabled=function(B){l=B};return r()}}(window));
 
 */

