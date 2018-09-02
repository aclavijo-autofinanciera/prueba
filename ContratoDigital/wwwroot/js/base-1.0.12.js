﻿// Write your JavaScript code.
jQuery(function ($) {
    AOS.init({
        'duration': 600,
        'easing': 'ease-in-sine'
    });

    $('[data-toggle="tooltip"]').tooltip();



    // <!-- Métodos de validación --> 
    // <!-- Jquery UI DateTime Picker -->
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
        dateFormat: 'dd-mm-yy', firstDay: 0,
        initStatus: 'Elija una fecha', isRTL: false
    };
    $.datepicker.setDefaults($.datepicker.regional['es-es']);
    // <!-- Jquery UI DateTime Picker -->
    $.validator.addMethod("phoneColombia", function (phone_number, element) {
        phone_number = phone_number.replace(/\s+/g, "");
        return this.optional(element) || phone_number.length > 10 &&
            phone_number.match(/^(?:(?:\(?(?:00|\+)([1-4]\d\d|[1-9]\d?)\)?)?[\-\.\ \\\/]?)?((?:\(?\d{1,}\)?[\-\.\ \\\/]?){0,})(?:[\-\.\ \\\/])?$/i);
        //phone_number.match(/^(?:(?:\(?(?:00|\+)([1-4]\d\d|[1-9]\d?)\)?)?[\-\.\ \\\/]?)?((?:\(?\d{1,}\)?[\-\.\ \\\/]?){0,})(?:[\-\.\ \\\/])?$/i); 
        //phone_number.match(/^(?:(?:\(?(?:00|\+)([1-4]\d\d|[1-9]\d?)\)?)?[\-\.\ \\\/]?)?((?:\(?\d{1,}\)?[\-\.\ \\\/]?){0,})(?:[\-\.\ \\\/]?(?:#|ext\.?|extension|x)[\-\.\ \\\/]?(\d+))?$/i); 
    }, "Especifique un número de teléfono");
    $.validator.addMethod("alphabetical", function (value, element) {
        return this.optional(element) || /^[a-zA-ZáéíóúÁÉÍÓÚüÜñÑ\- ]+$/i.test(value);
    }, "Este campo debe ser alfabético");
    $.validator.addMethod("atLeastOneUppercaseLetter", function (value, element) {
        return this.optional(element) || /[A-Z]+/.test(value);
    }, "Este campo debe tener al menos una mayúscula");
    $.validator.addMethod("atLeastOneSymbol", function (value, element) {
        return this.optional(element) || /[!@#$%^&*()]+/.test(value);
    }, "Este campo debe tener al menos uno de estos simbolos: [ ! @ # $ % ^ & * ( ) ]");
    // <!-- Métodos de validación --> 
        
    $("#fecha_nacimiento_suscriptor,#fecha_nacimiento_suscriptor_conjunto").datepicker({
        changeMonth: true,
        changeYear: true,
        dateFormat: 'dd-mm-yy',
        yearRange: "-60:-18",
        minDate: "-60Y",
        maxDate: "-18Y"
    });
      
    $("#isRepreentanteLegal").on("click", function () {
        $("#RepreentanteLegalSection").fadeIn("slow").removeClass("d-none");
        $("#nombre_razon_social_representante_legal").prop("required", true);
    });

    $("#isRepreentanteLegalConjunto").on("click", function () {
        $("#RepresentanteLegalConjuntoSection").fadeIn("slow").removeClass("d-none");
        $("#representante_legal_suscriptor_conjunto").prop("required", true);
    });

    $("#isSuscriptorConjunto").on("click", function () {
        $("#SuscriptorConjuntoSection").fadeIn("slow").removeClass("d-none");
        $("#nombre_suscriptor_conjunto").prop("required", true);
    });

    // Validación de prospecto.
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
                required: true                    
            },
            NumeroDocumento: {
                required: true,
                digits: true
            },
            Telefono: {
                required: true,
                minlength: 7,
                digits:true
            },
            Celular: {
                required: true,
                minlength: 7,
                digits:true
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
                required: "Este campo es requerido"
            },
            NumeroDocumento: {
                required: "Este campo es requerido",
                digits: "Este campo debe ser numérico"
            },
            Telefono: {
                required: "Este campo es requerido",      
                minlength: "Debe ingresar un teléfono válido",
                digits: "Debe ingresar un teléfono válido"
            },
            Celular: {
                required: "Este campo es requerido",                    
                minlength: "Debe ingresar un teléfono válido",
                digits: "Debe ingresar un teléfono válido"
            },
            Email: {
                required: "Este campo es requerido",
                email: "Este cmapo debe ser un correo válido"
            }
        }
    });

    // Validación de Contrato digital PDF:
    $(".ContratoValidation").validate({
        rules: {
            // Suscriptor 
            primer_nombre: {
                required: true,
                alphabetical: true
            },
            segundo_nombre: {                    
                alphabetical: true
            },
            primer_apellido: {
                required: true,
                alphabetical: true
            },
            segundo_apellido: {                    
                alphabetical: true
            },
            tipo_identificacion_suscriptor: {
                required: true
            },
            documento_identidad_suscriptor: {
                required: true,
                digits: true
            },
            procedencia_documento_identidad_suscriptor: {
                required: true
            },
            fecha_nacimiento_suscriptor: {
                required: true
                //dateISO: true
            },
            lugar_nacimiento_suscriptor: {
                required: true
            },
            sexo_suscriptor: {
                required: true
            },
            estado_civil_suscriptor: {
                required: true
            },
            direccion_domicilio_suscriptor: {
                required: true,
                maxlength: 200
            },
            departamento_suscriptor: {
                required: true
            },
            ciudad_suscriptor: {
                required: true
            },
            telefono_suscriptor: {
                required: true,
                digits: true,
                minlength:7
            },
            celular_suscriptor: {
                required: true,
                digits: true,
                minlength: 7
            },
            empresa_empleadora_suscriptor: {
                required: true
            },
            cargo_suscriptor: {
                required: true
            },
            ingresos_mensuales_suscriptor: {
                required: true,
                number: true
            },
            egresos_mensuales_suscriptor: {
                required: true,
                number: true
            },
            otros_ingresos_suscriptor: {
                required: true,
                number: true
            },
            direccion_empleo_suscriptor: {
                required: true,
                maxlength: 200
            },
            departamento_empleo_suscriptor: {
                required: true
            },
            ciudad_empleo_suscriptor: {
                required: true
            },
            telefono_empleo_suscriptor: {
                required: true,
                digits: true,
                minlength: 7
            },
            celular_empleo_suscriptor: {
                required: true,
                digits: true,
                minlength: 7
            },
            profesion_suscriptor: {
                required: true
            },
            envio_correspondencia_suscriptor: {
                required: true
            },
            email_suscriptor: {
                required: true,
                email: true
            },
            detalles_bien: {
                required: true
            },
            valor_bien: {
                required: true,
                number: true
            },
            codigo_bien: {
                required: true
            },
            cuota_bien: {
                required: true
            },
            plazo_bien: {
                required: true
            },
            cuota_ingreso: {
                required: true,
                number: true
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
            },
            nombre_suscriptor_conjunto: {
                alphabetical: true
            },
            documento_identidad_suscriptor_conjunto: {
                digits:true
            },
            procedencia_documento_identidad_suscriptor_conjunto: {
                alphabetical:true
            },
            fecha_nacimiento_suscriptor_conjunto: {
                //dateISO:true
            },
            dirección_suscriptor_conjunto: {
                maxlength:200
            },
            telefono_suscriptor_conjunto: {
                digits: true,
                minlength: 7
            },
            celular_suscriptor_conjunto: {
                digits: true,
                minlength: 7
            },
            ingresos_mensuales_suscriptor_conjunto: {
                number:true
            },
            egresos_mensuales_suscriptor_conjunto: {
                number:true
            },
            otros_ingresos_suscriptor_conjunto: {
                number:true
            },
            direccion_empleo_suscriptor_conjunto: {
                maxlength:200
            },
            telefono_empleo_suscriptor_conjunto: {
                required: true,
                digits: true,
                minlength: 7
            },
            celular_empleo_suscriptor_conjunto: {
                required: true,
                digits: true,
                minlength: 7
            },
            email_suscriptor_conjunto: {
                email:true
            }
        },
        messages: {
            // Suscriptor 
            primer_nombre: {
                required: "Este campo es requerido",
                alphabetical: "Este campo debe ser alfabético"
            },
            segundo_nombre: {
                alphabetical: "Este campo debe ser alfabético"
            },
            primer_apellido: {
                required: "Este campo es requerido",
                alphabetical: "Este campo debe ser alfabético"
            },
            segundo_apellido: {
                alphabetical: "Este campo debe ser alfabético"
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
            departamento_suscriptor: {
                required: "Requerido"
            },
            ciudad_suscriptor: {
                required: "Requerido"
            },
            telefono_suscriptor: {
                required: "Requerido",                    
                digits: "Debe ingresar un número de teléfono válido",
                minlength: "Debe ingresar un número de teléfono válido"
            },
            celular_suscriptor: {
                required: "Requerido",                    
                digits: "Debe ingresar un número de teléfono válido",
                minlength: "Debe ingresar un número de teléfono válido"
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
                required: "Requerido",
                digits: "Debe ingresar un número de teléfono válido",
                minlength: "Debe ingresar un número de teléfono válido"
            },
            celular_empleo_suscriptor: {
                required: "Requerido",
                digits: "Debe ingresar un número de teléfono válido",
                minlength: "Debe ingresar un número de teléfono válido"
            },
            profesion_suscriptor: {
                required: "Requerido"
            },
            envio_correspondencia_suscriptor: {
                required: "Requerido"
            },
            email_suscriptor: {
                required: "Requerido",
                email: "Debe ingresar una dirección de correo válida"
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
            },
            nombre_suscriptor_conjunto: {
                alphabetical: "El nombre debe ser alfabético"
            },
            documento_identidad_suscriptor_conjunto: {
                digits: "El campo debe ser numérico"
            },
            procedencia_documento_identidad_suscriptor_conjunto: {
                alphabetical: "El campo debe ser alfabético"
            },
            fecha_nacimiento_suscriptor_conjunto: {
                dateISO: "Debe ingresar una fecha válida"
            },
            dirección_suscriptor_conjunto: {
                maxlength: "La dirección no debe ser superior a 200 caracteres"
            },
            telefono_suscriptor_conjunto: {
                digits: "Debe ingresar un número de teléfono válido",
                minlength: "Debe ingresar un teléfono válido"
            },
            celular_suscriptor_conjunto: {
                digits: "Debe ingresar un número de teléfono válido",
                minlength: "Debe ingresar un teléfono válido"
            },
            ingresos_mensuales_suscriptor_conjunto: {
                number: "Debe ingresar un valor numérico"
            },
            egresos_mensuales_suscriptor_conjunto: {
                number: "Debe ingresar un valor numérico"
            },
            otros_ingresos_suscriptor_conjunto: {
                number: "Debe ingresar un valor numérico"
            },
            direccion_empleo_suscriptor_conjunto: {
                maxlength: "La dirección no debe ser superior a 200 caracteres"
            },
            telefono_empleo_suscriptor_conjunto: {                    
                digits: "Debe ingresar un teléfono válido",
                minlength: "Debe ingresar un teléfono válido"
            },
            celular_empleo_suscriptor_conjunto: {
                digits: "Debe ingresar un teléfono válido",
                minlength: "Debe ingresar un teléfono válido"
            },
            email_suscriptor_conjunto: {
                email: "Debe ingresar una dirección de correo válida"
            }
        },
        submitHandler: function (form) {
            form.submit();
        }
    });


    // User Validation
    $(".UserValidation").validate({
        rules: {
            UserName: {
                required:true
            },
            Nombre: {
                required: true
            },
            Apellido: {
                required: true
            },
            Cedula: {
                required: true,
                digits:true
            },
            Email: {
                required: true,
                email: true

            },            
            Rol: {
                required:true
            },            
            Password: {
                required: true,
                minlength: 6,
                atLeastOneUppercaseLetter: true,
                atLeastOneSymbol: true

                
            },
            PasswordBis: {
                equalTo: "#Password"
            }
        },
        messages: {            
            UserName: {
                required: "El usuario es requerido"
            },
            Nombre: {
                required: "El nombre es requerido"
            },
            Apellido: {
                required: "El apellido es requerido"
            },
            Cedula: {
                required: "La cédula es requerida",
                digit: "La cédula debe contener solo números"
            },
            Email: {
                required: "El email es requerido",
                email: "El email debe ser válido"

            },            
            Rol: {
                required: "Debe seleccionar una opción"
            },
            Password: {
                required: "la contraseña es requerido",
                minlength: "El contraseña debe tener mínimo 6 caracteres"
               
            },
            PasswordBis: {
                equalTo: "Las constraseñas no son iguales"
            }
        }
    });
    $("#Cedula").blur(function () {
        var tipoRol = $("#Rol").find(":selected").text().toUpperCase() === "ASESOR" ? "GetAsesorId" : "GetSiiconUserId";
        $.ajax({
            type: "GET",
            url: "/api/Freyja/" + tipoRol + "/" + $("#Cedula").val(),
            contentType: "application/json; charset=utf-8",
            dataType: "json",
            success: function (data) {
                try {
                    if (data.length) {
                        if (tipoRol === "GetAsesorId")
                        {
                            $("#IdAsesor").val(data[0].CodAsesor);
                            $("#Nombre").val(data[0].Asesor);
                            $('.error-area').html('<div class="alert alert-success alert-dismissible fade show" role="alert">' +
                                '<strong>El usuario puede ser registrado (Code: ' + data[0].CodAsesor + ').</strong>' +
                                '<button type="button" class="close" data-dismiss="alert" aria-label="Close">' +
                                '<span aria-hidden="true">&times;</span>' +
                                '</button>' +
                                '</div >');
                        }
                        else
                        {
                            $("#IdSiicon").val(data[0].TerceroId);
                            $("#Nombre").val(data[0].NombreCompleto);
                            $('.error-area').html('<div class="alert alert-success alert-dismissible fade show" role="alert">' +
                                '<strong>El usuario puede ser registrado (Code: ' + data[0].TerceroId + ').</strong>' +
                                '<button type="button" class="close" data-dismiss="alert" aria-label="Close">' +
                                '<span aria-hidden="true">&times;</span>' +
                                '</button>' +
                                '</div >');
                        }   

                        
                    }
                    else
                    {
                        $('.error-area').html('<div class="alert alert-danger alert-dismissible fade show" role="alert">' +
                            '<strong>El usuario no posee un regustro en SIICON y no puede ser creado.</strong>' +
                            '<button type="button" class="close" data-dismiss="alert" aria-label="Close">' +
                            '<span aria-hidden="true">&times;</span>' +
                            '</button>' +
                            '</div >');
                    }
                } catch (e) {
                    $('.error-area').html('<div class="alert alert-danger alert-dismissible fade show" role="alert">' +
                        '<strong>¡Ha Ocurrido un error! Inténtelo nuevamente</strong><br> [' + e + ']' +
                        '<button type="button" class="close" data-dismiss="alert" aria-label="Close">' +
                        '<span aria-hidden="true">&times;</span>' +
                        '</button>' +
                        '</div >');
                    $(this).addClass('fa-spin');
                }
            },
            failure: function (data) {
                $('.error-area').html('<div class="alert alert-danger alert-dismissible fade show" role="alert">' +
                    '<strong>¡Ha Ocurrido un error! Inténtelo nuevamente</strong>' +
                    '<button type="button" class="close" data-dismiss="alert" aria-label="Close">' +
                    '<span aria-hidden="true">&times;</span>' +
                    '</button>' +
                    '</div >');
                $(this).removeClass('fa-spin');
            },
            error: function (data) {
                $('.error-area').html('<div class="alert alert-danger alert-dismissible fade show" role="alert">' +
                    '<strong>¡Ha Ocurrido un error! Inténtelo nuevamente</strong>' +
                    '<button type="button" class="close" data-dismiss="alert" aria-label="Close">' +
                    '<span aria-hidden="true">&times;</span>' +
                    '</button>' +
                    '</div >');
                $(this).removeClass('fa-spin');
            }
        });
    });

    if ($("#idcompania").val())
    {        
        if ($("#idcompania").val() === "6831062e-c994-4686-a989-1964b1200cbc") {
            $("#legaleseElectro").finish().fadeTo('normal', 0).removeClass("d-none").finish().fadeTo('normal', 1);
        }
        else {
            $("#legaleseAuto").finish().fadeTo('normal', 0).removeClass("d-none").finish().fadeTo('normal', 1);
        }
    }

    // Selección de ciudad
    $("#departamentoDocumentoSuscriptor").on('change', function () {
        $.ajax({
            type: "GET",
            url: "/api/Freyja/GetCiudades/" + $(this).find(":selected").data("idsiicon"),
            contentType: "application/json; charset=utf-8",
            dataType: "json",
            success: function (data) {
                var ciudad = $("#procedencia_documento_identidad_suscriptor");
                ciudad.empty();
                ciudad.append("<option value=\"\">Selecciona una opción</option>");
                $.each(data, function (i, item) {
                    var rows =
                        "<option value=\"" + item.idCiudad + "\">" + item.descripcion + "</option>";
                    ciudad.append(rows);
                });
                ciudad.removeAttr("readonly");                
            },
            failure: function (data) {
                $('.error-area').html('<div class="alert alert-danger alert-dismissible fade show" role="alert">' +
                    '< strong >¡Ha Ocurrido un error! Inténtelo nuevamente</strong >' +
                    '<button type="button" class="close" data-dismiss="alert" aria-label="Close">' +
                    '<span aria-hidden="true">&times;</span>' +
                    '</button>' +
                    '</div >');
            },
            error: function (data) {
                $('.error-area').html('<div class="alert alert-danger alert-dismissible fade show" role="alert">' +
                    '< strong >¡Ha Ocurrido un error! Inténtelo nuevamente</strong >' +
                    '<button type="button" class="close" data-dismiss="alert" aria-label="Close">' +
                    '<span aria-hidden="true">&times;</span>' +
                    '</button>' +
                    '</div >');
            }

        });        
    });

    // Delección de ciudad para representante legal
    $("#departamentoDocumentoRepresentanteLegal").on('change', function () {
        $.ajax({
            type: "GET",
            url: "/api/Freyja/GetCiudades/" + $(this).find(":selected").data("idsiicon"),
            contentType: "application/json; charset=utf-8",
            dataType: "json",
            success: function (data) {
                var ciudad = $("#procedencia_documento_identidad_representante_legal");
                ciudad.empty();
                ciudad.append("<option value=\"\">Selecciona una opción</option>");
                $.each(data, function (i, item) {
                    var rows =
                        "<option value=\"" + item.idCiudad + "\">" + item.descripcion + "</option>";
                    ciudad.append(rows);
                });
                ciudad.removeAttr("readonly");
            },
            failure: function (data) {
                $('.error-area').html('<div class="alert alert-danger alert-dismissible fade show" role="alert">' +
                    '< strong >¡Ha Ocurrido un error! Inténtelo nuevamente</strong >' +
                    '<button type="button" class="close" data-dismiss="alert" aria-label="Close">' +
                    '<span aria-hidden="true">&times;</span>' +
                    '</button>' +
                    '</div >');
            },
            error: function (data) {
                $('.error-area').html('<div class="alert alert-danger alert-dismissible fade show" role="alert">' +
                    '< strong >¡Ha Ocurrido un error! Inténtelo nuevamente</strong >' +
                    '<button type="button" class="close" data-dismiss="alert" aria-label="Close">' +
                    '<span aria-hidden="true">&times;</span>' +
                    '</button>' +
                    '</div >');
            }

        });
    });

    // Seleccion de Ciudad para la cédula suscriptor
    $("#departamento_suscriptor").on('change', function () {
        $.ajax({
            type: "GET",
            url: "/api/Freyja/GetCiudades/" + $(this).find(":selected").data("idsiicon"),
            contentType: "application/json; charset=utf-8",
            dataType: "json",
            success: function (data) {
                var ciudad = $("#ciudad_suscriptor");
                ciudad.empty();
                ciudad.append("<option value=\"\">Selecciona una opción</option>");
                $.each(data, function (i, item) {
                    var rows =
                        "<option value=\"" + item.idCiudad + "\">" + item.descripcion + "</option>";
                    ciudad.append(rows);
                });
                ciudad.removeAttr("readonly");
            },
            failure: function (data) {
                $('.error-area').html('<div class="alert alert-danger alert-dismissible fade show" role="alert">' +
                    '< strong >¡Ha Ocurrido un error! Inténtelo nuevamente</strong >' +
                    '<button type="button" class="close" data-dismiss="alert" aria-label="Close">' +
                    '<span aria-hidden="true">&times;</span>' +
                    '</button>' +
                    '</div >');
            },
            error: function (data) {
                $('.error-area').html('<div class="alert alert-danger alert-dismissible fade show" role="alert">' +
                    '< strong >¡Ha Ocurrido un error! Inténtelo nuevamente</strong >' +
                    '<button type="button" class="close" data-dismiss="alert" aria-label="Close">' +
                    '<span aria-hidden="true">&times;</span>' +
                    '</button>' +
                    '</div >');
            }

        });
    });

    // Seleccion de Ciudad para la empresa laboral suscriptor
    $("#departamento_empleo_suscriptor").on('change', function () {
        $.ajax({
            type: "GET",
            url: "/api/Freyja/GetCiudades/" + $(this).find(":selected").data("idsiicon"),
            contentType: "application/json; charset=utf-8",
            dataType: "json",
            success: function (data) {
                var ciudad = $("#ciudad_empleo_suscriptor");
                ciudad.empty();
                ciudad.append("<option value=\"\">Selecciona una opción</option>");
                $.each(data, function (i, item) {
                    var rows =
                        "<option value=\"" + item.idCiudad + "\">" + item.descripcion + "</option>";
                    ciudad.append(rows);
                });
                ciudad.removeAttr("readonly");
            },
            failure: function (data) {
                $('.error-area').html('<div class="alert alert-danger alert-dismissible fade show" role="alert">' +
                    '< strong >¡Ha Ocurrido un error! Inténtelo nuevamente</strong >' +
                    '<button type="button" class="close" data-dismiss="alert" aria-label="Close">' +
                    '<span aria-hidden="true">&times;</span>' +
                    '</button>' +
                    '</div >');
            },
            error: function (data) {
                $('.error-area').html('<div class="alert alert-danger alert-dismissible fade show" role="alert">' +
                    '< strong >¡Ha Ocurrido un error! Inténtelo nuevamente</strong >' +
                    '<button type="button" class="close" data-dismiss="alert" aria-label="Close">' +
                    '<span aria-hidden="true">&times;</span>' +
                    '</button>' +
                    '</div >');
            }

        });
    });

    var targetBien = $("#idcompania");
    var targetTipoDeBien = $("#tipodeBien");
    var targetMarca = $("#marca");
    var targetPlanAhorro = $("#planDeAhorro");
    var targetCalculo = $("#tipoCalculo");
    // Assign tipo de bien
    targetBien.on('change', function ()
    {        
        $("#compania").val($(this).find(":selected").text());
        if ($("#idcompania").val() === "6831062e-c994-4686-a989-1964b1200cbc") {
            $("#legaleseElectro").finish().fadeTo('normal', 0).removeClass("d-none").finish().fadeTo('normal', 1);
            $("#legaleseAuto").finish().fadeTo('normal', 0).addClass("d-none").finish().fadeTo('normal', 1);
        }
        else {
            $("#legaleseAuto").finish().fadeTo('normal', 0).removeClass("d-none").finish().fadeTo('normal', 1);
            $("#legaleseElectro").finish().fadeTo('normal', 0).addClass("d-none").finish().fadeTo('normal', 1);
        }
        $.ajax({
            type: "GET",
            url: "/api/Freyja/GetTipoBien/" + $(this).find(":selected").val(),
            contentType: "application/json; charset=utf-8",
            dataType: "json",
            success: function (data) {
                targetTipoDeBien.empty();
                targetTipoDeBien.append("<option value=\"\">Selecciona una opción</option>");
                $.each(data, function (i, item) {
                    var rows =
                        "<option value=\"" + item.CodTipoBien + "\">" + item["Tipo de Bien"] + "</option>";
                    targetTipoDeBien.append(rows);
                });
                targetTipoDeBien.removeAttr("readonly");
                $("#Agencia").removeAttr("readonly");
                $("#TipoMedio").removeAttr("readonly");
            },
            failure: function (data) {
                $('.error-area').html('<div class="alert alert-danger alert-dismissible fade show" role="alert">' +
                    '< strong >¡Ha Ocurrido un error! Inténtelo nuevamente</strong >' +
                    '<button type="button" class="close" data-dismiss="alert" aria-label="Close">' +
                    '<span aria-hidden="true">&times;</span>' +
                    '</button>' +
                    '</div >');
            },
            error: function (data) {
                $('.error-area').html('<div class="alert alert-danger alert-dismissible fade show" role="alert">' +
                    '< strong >¡Ha Ocurrido un error! Inténtelo nuevamente</strong >' +
                    '<button type="button" class="close" data-dismiss="alert" aria-label="Close">' +
                    '<span aria-hidden="true">&times;</span>' +
                    '</button>' +
                    '</div >');
            }

        });        
    });

    // Asssign marca
    targetTipoDeBien.on("change", function ()
    {        
        $('#descripcionTipoBien').val(targetTipoDeBien.find(":selected").text());
        $.ajax({
            type: "GET",
            url: "/api/Freyja/GetMarcas",
            contentType: "application/json; charset=utf-8",
            dataType: "json",
            success: function (data) {
                targetMarca.empty();                
                targetMarca.append("<option value=\"\">Selecciona una opción</option>");
                $.each(data, function (i, item) {
                    var rows =
                        "<option value=\"" + ((targetBien.val() === "26e0e553-8bb9-41b2-869a-1fddaf06e900") ? item.CodMarcaAuto : item.CodMarcaElectro) + "\">" + item.Marca + "</option>";
                    targetMarca.append(rows);
                }); 
                targetMarca.removeAttr("readonly");
            }, 
            failure: function (data) {
                $('.error-area').html('<div class="alert alert-danger alert-dismissible fade show" role="alert">' +
                    '< strong >¡Ha Ocurrido un error! Inténtelo nuevamente</strong >' +
                    '<button type="button" class="close" data-dismiss="alert" aria-label="Close">' +
                    '<span aria-hidden="true">&times;</span>' +
                    '</button>' +
                    '</div >');
            }, 
            error: function (data) {
                $('.error-area').html('<div class="alert alert-danger alert-dismissible fade show" role="alert">' +
                    '< strong >¡Ha Ocurrido un error! Inténtelo nuevamente</strong >' +
                    '<button type="button" class="close" data-dismiss="alert" aria-label="Close">' +
                    '<span aria-hidden="true">&times;</span>' +
                    '</button>' +
                    '</div >');
            } 

        });
        
    });

    // assign Plan de Ahorro
    targetMarca.on('change', function ()
    {        
        $.ajax({
            type: "GET",
            url: "/api/Freyja/getBienes/" + targetBien.find(":selected").val() + "/" + targetTipoDeBien.find(":selected").val() + "/" + targetMarca.find(":selected").val(),
            contentType: "application/json; charset=utf-8",
            dataType: "json",
            success: function (data) {                
                targetPlanAhorro.empty();                
                targetPlanAhorro.append("<option value=\"\">Seleccione una opción</option> ");
                data1 = data.sort(GetSortOrder('ValorBien'));
                $.each(data1, function (i, item) {
                    var rows =
                        "<option value=\"" + item.BienId + "\" data-valorbien=\"" + item.ValorBien + "\" data-codbiencompleto=\"" + item.CodBienCompleto + "\" >" + item.BienCompleto + "</option>";
                    targetPlanAhorro.append(rows);
                });
                targetPlanAhorro.removeAttr("readonly");                
                $("#descripcionMarca").val(targetMarca.find(":selected").text());                
            },
            failure: function (data) {
                $('.error-area').html('<div class="alert alert-danger alert-dismissible fade show" role="alert">' +
                    '< strong >¡Ha Ocurrido un error! Inténtelo nuevamente</strong >' +
                    '<button type="button" class="close" data-dismiss="alert" aria-label="Close">' +
                    '<span aria-hidden="true">&times;</span>' +
                    '</button>' +
                    '</div >');
            },
            error: function (data) {
                $('.error-area').html('<div class="alert alert-danger alert-dismissible fade show" role="alert">' +
                    '< strong >¡Ha Ocurrido un error! Inténtelo nuevamente</strong >' +
                    '<button type="button" class="close" data-dismiss="alert" aria-label="Close">' +
                    '<span aria-hidden="true">&times;</span>' +
                    '</button>' +
                    '</div >');
            } 
        });
    });

    // Assign Cuota
    targetPlanAhorro.on('change', function ()
    {        
        $.ajax({
            type: "GET",
            url: "/api/Freyja/GetBienesParametros/" + targetBien.find(":selected").val() + "/" + targetTipoDeBien.find(":selected").val() + "/" + targetPlanAhorro.find(":selected").data("valorbien") + "/0",
            contentType: "application/json; charset=utf-8",
            dataType: "json",
            success: function (data) {                
                targetCalculo.empty();                
                targetCalculo.append("<option value=\"\">Selecciona una opción</option>");        
                $.each(data, function (i, item) {
                    var rows =
                        "<option value=\"" + item.TipoBienParametroId + "\" data-valorbien=\"" + targetPlanAhorro.find(":selected").data("valorbien") + "\" data-inscripcion=\"" + item.PorcentajeInscripcion + "\" data-administracion=\"" + item.PorcentajeAdministracion + "\" data-plazo=\"" + item.Plazo + "\" > Plazo: " + item.Plazo + " ( Valor: " + parseFormat( targetPlanAhorro.find(":selected").data("valorbien") ) + " [Inscripción: " + item.PorcentajeInscripcion + "%; Administración:" + item.PorcentajeAdministracion + "%])</option>";
                    targetCalculo.append(rows);
                }); 
                targetCalculo.removeAttr("readonly");
            },
            failure: function (data) {
                $('.error-area').html('<div class="alert alert-danger alert-dismissible fade show" role="alert">' +
                    '< strong >¡Ha Ocurrido un error! Inténtelo nuevamente</strong >' +
                    '<button type="button" class="close" data-dismiss="alert" aria-label="Close">' +
                    '<span aria-hidden="true">&times;</span>' +
                    '</button>' +
                    '</div >');
            },
            error: function (data) {
                $('.error-area').html('<div class="alert alert-danger alert-dismissible fade show" role="alert">' +
                    '< strong >¡Ha Ocurrido un error! Inténtelo nuevamente</strong >' +
                    '<button type="button" class="close" data-dismiss="alert" aria-label="Close">' +
                    '<span aria-hidden="true">&times;</span>' +
                    '</button>' +
                    '</div >');
            } 
        });
    });

    // Cálculo de todo.
    targetCalculo.on('change', function ()
    {

        var valbien = costodelbien = $("#planDeAhorro").find(":selected").data("valorbien");
        var inscripcion = targetCalculo.find(":selected").data("inscripcion");
        var plazo = targetCalculo.find(":selected").data("plazo");
        var administracion = targetCalculo.find(":selected").data("administracion");
        var iva = 0.19;
        $('.porcentajeInscripcion').empty().text(inscripcion).val(inscripcion);
        $('.porcentajeAdministracion').empty().text(administracion).val(administracion);
        $('.porcentajeIva').empty().text(iva*100).val(iva*100);
        $('.plazo').empty().text(plazo).val(plazo); 
        if (valbien <= 24000000)
        {
            $("#legaleseAuto").finish().fadeTo('normal', 0).addClass("d-none").finish().fadeTo('normal', 1);
            $("#legaleseElectro").finish().fadeTo('normal', 0).removeClass("d-none").finish().fadeTo('normal', 1);
        }
        else
        {
            $("#legaleseAuto").finish().fadeTo('normal', 0).removeClass("d-none").finish().fadeTo('normal', 1);
            $("#legaleseElectro").finish().fadeTo('normal', 0).addClass("d-none").finish().fadeTo('normal', 1);
        }
        if (valbien === "" || valbien === 0) {
            valbien = 0;
            $("#costo_del_bien, #cuota_ingreso, #administracion, #iva_cuota_ingreso, #iva_administracion, #total_cuota_ingreso, #total_cuota_bruta, #primera_cuota_neta, #valor_primer_pago").val(0.00);
        }

        $("#DescripcionDelBien, #detalles_bien, #detalle").finish().fadeTo('normal', 0).val($("#planDeAhorro").find(":selected").text()).finish().fadeTo('normal', 1);

        // Valor del costo del bien 
        $("#costo_del_bien, #valor_bien").finish().fadeTo('normal', 0).val(parseFormat(costodelbien)).finish().fadeTo('normal', 1);

        // Cuota de ingreso 
        //valorPorcentajeInscripcion = costodelbien * 0.045;
        var valorPorcentajeInscripcion = costodelbien * (inscripcion/100);
        $("#cuota_ingreso").finish().fadeTo('normal', 0).val(parseFormat(valorPorcentajeInscripcion)).finish().fadeTo('normal', 1);

        // Iva Inscripción 
        var ivaInscripcion = (inscripcion/100) * valbien * iva;
        $("#iva_cuota_ingreso").finish().fadeTo('normal', 0).val(parseFormat(ivaInscripcion)).finish().fadeTo('normal', 1);

        // Total de la inscripción 
        var totalInscripcion = valorPorcentajeInscripcion + ivaInscripcion;
        $("#total_cuota_ingreso").finish().fadeTo('normal', 0).val(parseFormat(totalInscripcion)).finish().fadeTo('normal', 1);

        // Primera cuota 
        //cuotaNeta40 = valbien / canmes_40;
        var cuotaneta = valbien / plazo;
        $('#primera_cuota_neta').finish().fadeTo('normal', 0).val(parseFormat(cuotaneta)).finish().fadeTo('normal', 1);

        // Administracion 
        var administracionNeta = (administracion / 100) * cuotaneta;
        $("#administracion").finish().fadeTo('normal', 0).val(parseFormat(administracionNeta)).finish().fadeTo('normal', 1);

        // IVA Administración 
        var ivaAdministracion = administracionNeta * iva;
        $("#iva_administracion").finish().fadeTo('normal', 0).val(parseFormat(ivaAdministracion)).finish().fadeTo('normal', 1);

        //Total Cuota Bruta 
        var totalCuotaMensual = cuotaneta + administracionNeta + ivaAdministracion;
        $("#total_cuota_bruta").finish().fadeTo('normal', 0).val(parseFormat(totalCuotaMensual)).finish().fadeTo('normal', 1);

        // Valor total del primer pago 
         var valorPrimeraInversion = totalInscripcion + totalCuotaMensual;
        $("#valor_primer_pago").finish().fadeTo('normal', 0).val(parseFormat(valorPrimeraInversion)).finish().fadeTo('normal', 1);
    });

    var refreshContrato = $("#RefreshStatusContrato");
    refreshContrato.on('click', function () {
        var idContrato = refreshContrato.data("contrato");
        $.ajax({            
            type: "GET",
            url: "/api/Freyja/GetStatusContrato/" + idContrato,
            contentType: "application/json; charset=utf-8",
            dataType: "json",
            success: function (data) {
                try
                {
                    $(this).addClass('fa-spin');
                    if (data.isAccepted)
                    {
                        $(".isAccepted").html('<label class="text-success"><i class="fas fa-check"></i> Condiciones del contrato</label>');
                    }
                    else
                    {
                        $('.isAccepted').html('<label class="text-muted"><i class="far fa-clock"></i> Condiciones del contrato&nbsp;&nbsp;<span class="badge badge-azul "><a href="/ContratoDigital/EmailContract/' + idContrato + '", new { id = Model.IdContrato })" class="text-white"><i class="fas fa-reply-all"></i>&nbsp;&nbsp;Reenvíar</a></span></label>');                        
                    }

                    if (data.isIdUploaded)
                    {
                        $(".isIdUploaded").html('<label class="text-success"><i class="fas fa-check"></i> Documento de identificación</label>');
                    }
                    else
                    {
                        $(".isIdUploaded").html('<label class="text-muted"><i class="far fa-clock"></i> Documento identificación &nbsp;&nbsp;<span class="badge badge-azul "><a href="/ContratoDigital/RequestRemoteUpload?idContrato=' + idContrato + '" class="text-white"><i class="fas fa-reply-all"></i>&nbsp;&nbsp;Reenvíar</a></span></label>');                        
                    }
                    if (data.isPaid)
                    {
                        $(".isPaid").html('<label class="text-success"><i class="fas fa-check"></i> Pagado</label>');
                    }
                    else
                    {
                        $('.isPaid').html('<label class="text-muted"><i class="far fa-clock"></i> Por pagar &nbsp;&nbsp;<span class="badge badge-azul "><a href="/ContratoDigital/EmailInvoice/' + idContrato + '" class="text-white"><i class="fas fa-reply-all"></i>&nbsp;&nbsp;Reenvíar</a></span></label>');                        
                    }
                    if (data.isVerified)
                    {
                        $('.isVerified').html('<label class="text-success"><i class="fas fa-check"></i> ARD</label>');
                    }
                    else
                    {
                        $('.isVerified').html('<label class="text-muted"><i class="far fa-clock"></i> ARD</label>');
                    }
                    $(this).removeClass('fa-spin');

                } catch (e) {
                    $('.error-area').html('<div class="alert alert-danger alert-dismissible fade show" role="alert">' +
                        '<strong>¡Ha Ocurrido un error! Inténtelo nuevamente</strong>' +
                        '<button type="button" class="close" data-dismiss="alert" aria-label="Close">' +
                        '<span aria-hidden="true">&times;</span>' +
                        '</button>' +
                        '</div >');
                    $(this).addClass('fa-spin');
                }
            },
            failure: function (data) {
                $('.error-area').html('<div class="alert alert-danger alert-dismissible fade show" role="alert">' +
                    '<strong>¡Ha Ocurrido un error! Inténtelo nuevamente</strong>' +
                    '<button type="button" class="close" data-dismiss="alert" aria-label="Close">' +
                    '<span aria-hidden="true">&times;</span>' +
                    '</button>' +
                    '</div >');
                $(this).removeClass('fa-spin');
            },
            error: function (data) {
                $('.error-area').html('<div class="alert alert-danger alert-dismissible fade show" role="alert">' +
                    '<strong>¡Ha Ocurrido un error! Inténtelo nuevamente</strong>' +
                    '<button type="button" class="close" data-dismiss="alert" aria-label="Close">' +
                    '<span aria-hidden="true">&times;</span>' +
                    '</button>' +
                    '</div >');
                $(this).removeClass('fa-spin');
            } 
        });
    });

    // Botón identificación
    var showDocs = $("#showDocs");    
    showDocs.on('click', function ()
    {
        var isCheckedDoc = showDocs.data("fetched");
        var idContratoDoc = showDocs.data("idcontrato");
        if (!isCheckedDoc)
        {
            $.ajax({
                type: "GET",
                url: "/api/Freyja/GetDocumentoIdentidad/" + idContratoDoc,
                contentType: "application/json; charset=utf-8",
                dataType: "json",
                success: function (data) {
                    try {
                        $(".AnversoDocumento").html('<img src="data:image/jpg;base64, ' + data.anverso + '" alt="Anverso" class="img-fluid" />');
                        $(".ReversoDocumento").html('<img src="data:image/jpg;base64, ' + data.reverso + '" alt="Reverso" class="img-fluid" />');
                        showDocs.data("fetched", "true");
                    } catch (e) {
                        $('.error-area').html('<div class="alert alert-danger alert-dismissible fade show" role="alert">' +
                            '<strong>¡Ha Ocurrido un error! Inténtelo nuevamente</strong>' +
                            '<button type="button" class="close" data-dismiss="alert" aria-label="Close">' +
                            '<span aria-hidden="true">&times;</span>' +
                            '</button>' +
                            '</div >');
                        
                    }
                },
                failure: function (data) {
                    $('.error-area').html('<div class="alert alert-danger alert-dismissible fade show" role="alert">' +
                        '<strong>¡Ha Ocurrido un error! Inténtelo nuevamente</strong>' +
                        '<button type="button" class="close" data-dismiss="alert" aria-label="Close">' +
                        '<span aria-hidden="true">&times;</span>' +
                        '</button>' +
                        '</div >');
                    
                },
                error: function (data) {
                    $('.error-area').html('<div class="alert alert-danger alert-dismissible fade show" role="alert">' +
                        '<strong>¡Ha Ocurrido un error! Inténtelo nuevamente</strong>' +
                        '<button type="button" class="close" data-dismiss="alert" aria-label="Close">' +
                        '<span aria-hidden="true">&times;</span>' +
                        '</button>' +
                        '</div >');
                    
                }
            });
        }
    });

    var tipodeMedio = $("#TipoMedio");
    if (tipodeMedio.length)
    {
        $.ajax({
            type: "GET",
            url: "/api/Freyja/GetTipoMedio/",
            contentType: "application/json; charset=utf-8",
            dataType: "json",
            success: function (data) {
                try {

                    tipodeMedio.append("<option value=\"\">Selecciona una opción</option>");
                    $.each(data, function (i, item) {
                        var rows =
                            "<option value=\"" + item.TipoMedioId + "\" >" + item.TipoMedio + " </option>";
                        tipodeMedio.append(rows);
                    });
                } catch (e) {
                    $('.error-area').html('<div class="alert alert-danger alert-dismissible fade show" role="alert">' +
                        '<strong>¡Ha Ocurrido un error! Inténtelo nuevamente</strong>' +
                        '<button type="button" class="close" data-dismiss="alert" aria-label="Close">' +
                        '<span aria-hidden="true">&times;</span>' +
                        '</button>' +
                        '</div >');
                    $(this).addClass('fa-spin');
                }
            },
            failure: function (data) {
                $('.error-area').html('<div class="alert alert-danger alert-dismissible fade show" role="alert">' +
                    '<strong>¡Ha Ocurrido un error! Inténtelo nuevamente</strong>' +
                    '<button type="button" class="close" data-dismiss="alert" aria-label="Close">' +
                    '<span aria-hidden="true">&times;</span>' +
                    '</button>' +
                    '</div >');
                $(this).removeClass('fa-spin');
            },
            error: function (data) {
                $('.error-area').html('<div class="alert alert-danger alert-dismissible fade show" role="alert">' +
                    '<strong>¡Ha Ocurrido un error! Inténtelo nuevamente</strong>' +
                    '<button type="button" class="close" data-dismiss="alert" aria-label="Close">' +
                    '<span aria-hidden="true">&times;</span>' +
                    '</button>' +
                    '</div >');
                $(this).removeClass('fa-spin');
            }
        });
        tipodeMedio.on("change", function () {
            var tipoMedioAgencia = $("#TipoMedioAgencia");
            $.ajax({
                type: "GET",
                url: "/api/Freyja/GetMedioAgencia/" + $("#idcompania").val() + "/" + tipodeMedio.val() + "/" + $("#Agencia").val(),
                contentType: "application/json; charset=utf-8",
                dataType: "json",
                success: function (data) {
                    try {

                        tipoMedioAgencia.append("<option value=\"\">Selecciona una opción</option>");
                        $.each(data, function (i, item) {
                            var rows = "<option value=\"" + item.MedioId + "\" >" + item.Medio + " </option>";
                            tipoMedioAgencia.append(rows);
                        });
                        tipoMedioAgencia.removeAttr("readonly");
                    } catch (e) {
                        $('.error-area').html('<div class="alert alert-danger alert-dismissible fade show" role="alert">' +
                            '<strong>¡Ha Ocurrido un error! Inténtelo nuevamente</strong>' +
                            '<button type="button" class="close" data-dismiss="alert" aria-label="Close">' +
                            '<span aria-hidden="true">&times;</span>' +
                            '</button>' +
                            '</div >');
                        $(this).addClass('fa-spin');
                    }
                },
                failure: function (data) {
                    $('.error-area').html('<div class="alert alert-danger alert-dismissible fade show" role="alert">' +
                        '<strong>¡Ha Ocurrido un error! Inténtelo nuevamente</strong>' +
                        '<button type="button" class="close" data-dismiss="alert" aria-label="Close">' +
                        '<span aria-hidden="true">&times;</span>' +
                        '</button>' +
                        '</div >');
                    $(this).removeClass('fa-spin');
                },
                error: function (data) {
                    $('.error-area').html('<div class="alert alert-danger alert-dismissible fade show" role="alert">' +
                        '<strong>¡Ha Ocurrido un error! Inténtelo nuevamente</strong>' +
                        '<button type="button" class="close" data-dismiss="alert" aria-label="Close">' +
                        '<span aria-hidden="true">&times;</span>' +
                        '</button>' +
                        '</div >');
                    $(this).removeClass('fa-spin');
                }
            });
        });
    }

    // Fill in the hidden inputs de agencia
    $("#Agencia").on("change", function () {
        $("#AgenciaDescripcion").val($("#Agencia").find(":selected").text());
    });
    $("#TipoMedio").on("change", function () {
        $("#TipoMedioDescripcion").val($("#TipoMedio").find(":selected").text());
    });
    $("#TipoMedioAgencia").on("change", function () {
        $("#TipoMedioAgenciaDescripcion").val($("#TipoMedioAgencia").find(":selected").text());
    });
    $("#TipoCliente").on("change", function () {
        $("#TipoClienteDescripcion").val($("#TipoCliente").find(":selected").text());
    });
    

    // Agencias Creación de Usuarios
    var agenciasUser = $("#Agencia");
    if (agenciasUser.length)
    {
        targetBien.on('change', function () { 
        
            $.ajax({
                type: "GET",
                url: "/api/Freyja/GetAgencias/" + userIdSiicon + "/" + $("#idcompania").val(),
                contentType: "application/json; charset=utf-8",
                dataType: "json",
                success: function (data) {
                    try {

                        agenciasUser.append("<option value=\"\">Selecciona una opción</option>");
                        $.each(data, function (i, item) {
                            var rows =
                                "<option value=\"" + item.AgenciaId + "\" >" + item.Agencia + " </option>";
                            agenciasUser.append(rows);
                        });
                    } catch (e) {
                        $('.error-area').html('<div class="alert alert-danger alert-dismissible fade show" role="alert">' +
                            '<strong>¡Ha Ocurrido un error! Inténtelo nuevamente</strong>' +
                            '<button type="button" class="close" data-dismiss="alert" aria-label="Close">' +
                            '<span aria-hidden="true">&times;</span>' +
                            '</button>' +
                            '</div >');
                        $(this).addClass('fa-spin');
                    }
                },
                failure: function (data) {
                    $('.error-area').html('<div class="alert alert-danger alert-dismissible fade show" role="alert">' +
                        '<strong>¡Ha Ocurrido un error! Inténtelo nuevamente</strong>' +
                        '<button type="button" class="close" data-dismiss="alert" aria-label="Close">' +
                        '<span aria-hidden="true">&times;</span>' +
                        '</button>' +
                        '</div >');
                    $(this).removeClass('fa-spin');
                },
                error: function (data) {
                    $('.error-area').html('<div class="alert alert-danger alert-dismissible fade show" role="alert">' +
                        '<strong>¡Ha Ocurrido un error! Inténtelo nuevamente</strong>' +
                        '<button type="button" class="close" data-dismiss="alert" aria-label="Close">' +
                        '<span aria-hidden="true">&times;</span>' +
                        '</button>' +
                        '</div >');
                    $(this).removeClass('fa-spin');
                }
            });
        });
        
    }
});

//Validación de colores de los forms
(function () {
    'use strict';
    window.addEventListener('load', function () {
        // Fetch all the forms we want to apply custom Bootstrap validation styles to 
        var forms = document.getElementsByClassName('bootstrapValidation');
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

// Formato de los números
function parseFormat(num) {
    var entero, decimal;
    var numero = "" + Math.round(num) + "";
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

// Organización de lo que está dentro de las llamadas de SIICON
function GetSortOrder(prop) {
    return function (a, b) {
        if (a[prop] > b[prop]) {
            return 1;
        } else if (a[prop] < b[prop]) {
            return -1;
        }
        return 0;
    };
}  