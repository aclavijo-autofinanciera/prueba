// Write your JavaScript code.
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
      
    

    // Validación de prospecto.
    $(".ProspectoValidation").validate({
        rules: {
            // Prospecto 
            PrimerNombre: {
                required: true,
                alphabetical: true,
                maxlength: 50
            },
            SegundoNombre: {
                alphabetical: true,
                maxlength: 50
            },
            PrimerApellido: {
                required: true,
                alphabetical: true,
                maxlength: 50
            },
            SegundoApellido: {
                alphabetical: true,
                maxlength: 50
            },
            TipoDocumentoIdentidad: {
                required: true,
                maxlength: 10
            },
            NumeroDocumento: {
                required: true,
                digits: true,
                minlength: 6,
                maxlength: 10
            },
            Telefono: {
                required: true,
                minlength: 7,
                digits: true,
                maxlength: 200
            },
            Celular: {
                required: true,
                minlength: 7,
                digits: true,
                maxlength: 200
            },
            Email: {
                required: true,
                email: true,
                maxlength: 200
            },
            TipoMedio: {
                required: true,
                maxlength: 10
            },
            TipoMedioAgencia: {
                required: true,
                maxlength: 10
            },
            TipoCliente: {
                required: true,
                maxlength: 10
            }

        },
        messages: {
            // Prospecto 
            PrimerNombre: {
                required: "Este campo es requerido",
                alphabetical: "Este campo debe ser alfabético",
                maxlength: "Este campo no debe ser mayor a 50 caracteres"
            },
            SegundoNombre: {
                alphabetical: "Este campo debe ser alfabético",
                maxlength: "Este campo no debe ser mayor a 50 caracteres"
            },
            PrimerApellido: {
                required: "Este campo es requerido",
                alphabetical: "Este campo debe ser alfabético",
                maxlength: "Este campo no debe ser mayor a 50 caracteres"
            },
            SegundoApellido: {
                alphabetical: "Este campo debe ser alfabético",
                maxlength: "Este campo no debe ser mayor a 50 caracteres"
            },
            TipoDocumentoIdentidad: {
                required: "Este campo es requerido",
                maxlength: "Este campo no debe ser mayor a 10 caracteres"                
            },
            NumeroDocumento: {
                required: "Este campo es requerido",
                digits: "Este campo debe ser numérico",
                maxlength: "Este campo no debe ser mayor a 10 caracteres"                
            },
            Telefono: {
                required: "Este campo es requerido",      
                minlength: "Debe ingresar un teléfono válido",
                digits: "Debe ingresar un teléfono válido",
                maxlength: "Este campo no debe ser mayor a 200 caracteres"
            },
            Celular: {
                required: "Este campo es requerido",                    
                minlength: "Debe ingresar un teléfono válido",
                digits: "Debe ingresar un teléfono válido",
                maxlength: "Este campo no debe ser mayor a 200 caracteres"
            },
            Email: {
                required: "Este campo es requerido",
                email: "Este cmapo debe ser un correo válido",
                maxlength: "Este campo no debe ser mayor a 200 caracteres"
            },
            TipoMedio: {
                required: "Este campo es requerido",
                maxlength: "Este campo no debe ser mayor a 10 caracteres"
            },
            TipoMedioAgencia: {
                required: "Este campo es requerido",
                maxlength: "Este campo no debe ser mayor a 10 caracteres"
            },
            TipoCliente: {
                required: "Este campo es requerido",
                maxlength: "Este campo no debe ser mayor a 10 caracteres"
            }
        }
    });

    // Validación de Contrato digital PDF:
    $(".ContratoValidation").validate({
        rules: {
            // Suscriptor 
            primer_nombre: {
                required: true,
                alphabetical: true,
                maxlength: 200
            },
            segundo_nombre: {                    
                alphabetical: true,
                maxlength: 200
            },
            primer_apellido: {
                required: true,
                alphabetical: true,
                maxlength: 200
            },
            segundo_apellido: {                    
                alphabetical: true,
                maxlength: 200
            },
            tipo_identificacion_suscriptor: {
                required: true,
                maxlength: 50
            },
            documento_identidad_suscriptor: {
                required: true,
                digits: true,
                maxlength: 10
            },
            procedencia_documento_identidad_suscriptor: {
                required: true,
                maxlength: 50
            },
            fecha_nacimiento_suscriptor: {
                required: true,
                maxlength: 10
                //dateISO: true
            },
            lugar_nacimiento_suscriptor: {
                required: true,
                maxlength: 50
            },
            sexo_suscriptor: {
                required: true,
                    maxlength: 50
            },
            estado_civil_suscriptor: {
                required: true,
                maxlength: 50
            },
            direccion_domicilio_suscriptor: {
                required: true,
                maxlength: 200
            },
            departamento_suscriptor: {
                required: true,
                maxlength: 50
            },
            ciudad_suscriptor: {
                required: true,
                maxlength: 50
            },
            telefono_suscriptor: {
                required: true,
                digits: true,
                minlength: 7,
                maxlength: 50
            },
            celular_suscriptor: {
                required: true,
                digits: true,
                minlength: 7,
                maxlength: 50
            },
            empresa_empleadora_suscriptor: {
                required: true,
                maxlength: 50
            },
            cargo_suscriptor: {
                required: true,
                maxlength: 50
            },
            ingresos_mensuales_suscriptor: {
                required: true,
                number: true,
                maxlength: 15
            },
            egresos_mensuales_suscriptor: {
                required: true,
                number: true,
                maxlength: 15
            },
            otros_ingresos_suscriptor: {
                required: true,
                number: true,
                maxlength: 15
            },
            direccion_empleo_suscriptor: {
                required: true,
                maxlength: 200
            },
            departamento_empleo_suscriptor: {
                required: true,
                maxlength: 50
            },
            ciudad_empleo_suscriptor: {
                required: true,
                maxlength: 50
            },
            telefono_empleo_suscriptor: {
                required: true,
                digits: true,
                minlength: 7,
                maxlength: 50
            },
            celular_empleo_suscriptor: {
                required: true,
                digits: true,
                minlength: 7,
                maxlength: 50
            },
            profesion_suscriptor: {
                required: true,
                maxlength: 50
            },
            envio_correspondencia_suscriptor: {
                required: true,
                maxlength: 50
            },
            email_suscriptor: {
                required: true,
                email: true,
                maxlength: 250
            },
            detalles_bien: {
                required: true,
                maxlength: 50
            },
            valor_bien: {
                required: true,
                number: true,
                maxlength: 15
            },
            codigo_bien: {
                required: true,
                maxlength: 15
            },
            cuota_bien: {
                required: true,
                maxlength: 15
            },
            plazo_bien: {
                required: true,
                maxlength: 15
            },
            cuota_ingreso: {
                required: true,
                number: true,
                maxlength: 15
            },
            administracion: {
                required: true,
                number: true,
                maxlength: 15            
            },
            iva_cuota_ingreso: {
                required: true,
                number: true,
                maxlength: 15
            },
            iva_administracion: {
                required: true,
                number: true,
                maxlength: 15
            },
            total_cuota_ingreso: {
                required: true,
                number: true,
                maxlength: 15
            },
            total_cuota_bruta: {
                required: true,
                number: true,
                maxlength: 15
            },
            primera_cuota_neta: {
                required: true,
                number: true,
                maxlength: 15
            },
            valor_primer_pago: {
                required: true,
                number: true,
                maxlength: 15
            },
            nombre_suscriptor_conjunto: {
                alphabetical: true,
                maxlength: 50
            },
            documento_identidad_suscriptor_conjunto: {
                digits: true,
                maxlength: 15
            },
            fecha_nacimiento_suscriptor_conjunto: {
                maxlength: 10
                //dateISO:true
            },
            dirección_suscriptor_conjunto: {
                maxlength:200
            },
            telefono_suscriptor_conjunto: {
                digits: true,
                minlength: 7,
                maxlength: 50
            },
            celular_suscriptor_conjunto: {
                digits: true,
                minlength: 7,
                maxlength: 50
            },
            ingresos_mensuales_suscriptor_conjunto: {
                number: true,
                maxlength: 15
            },
            egresos_mensuales_suscriptor_conjunto: {
                number: true,
                maxlength: 15
            },
            otros_ingresos_suscriptor_conjunto: {
                number: true,
                maxlength: 15
            },
            direccion_empleo_suscriptor_conjunto: {
                maxlength:200
            },
            telefono_empleo_suscriptor_conjunto: {
                required: true,
                digits: true,
                minlength: 7,
                maxlength: 50
            },
            celular_empleo_suscriptor_conjunto: {
                required: true,
                digits: true,
                minlength: 7,
                maxlength: 50
            },
            email_suscriptor_conjunto: {
                email: true,
                maxlength: 250
            },
            TipoMedio: {
                required: true,
                maxlength: 15
            },
            TipoMedioAgencia: {
                required: true,
                maxlength: 15
            },
            TipoCliente: {
                required: true,
                maxlength: 15
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
            },
            TipoMedio: {
                required: "Requerido"
            },
            TipoMedioAgencia: {
                required: "Requerido"
            },
            TipoCliente: {
                required: "Requerido"
            }
        },
        submitHandler: function (form) {
            form.submit();
        }
    });

    // Validación representante legal
    $("#isRepreentanteLegal").on("click", function () {
        $("#RepreentanteLegalSection").fadeIn("slow").removeClass("d-none");
        $("#nombre_razon_social_representante_legal, #tipo_documento_representante_legal, #documento_identidad_representante_legal, #procedencia_documento_identidad_representante_legal  ").prop("required", true);
        $("#nombre_razon_social_representante_legal").rules("add", {
            required: true,
            alphabetical: true,
            messages: {
                required: "Required input",
                alphabetical: "Este campo es alfabético"
            }
        });
        $("#tipo_documento_representante_legal, #procedencia_documento_identidad_representante_legal").rules("add", {
            required: true,
            messages: {
                required: "Este campo es requerido"

            }
        });
        $("#documento_identidad_representante_legal").rules("add", {
            required: true,
            digits: true,
            messages: {
                required: "Este campo es requerido",
                digits: "Este campo es numérico"
            }
        });
    });
    if ($("#documento_identidad_representante_legal").length > 0)
    {
        if ($("#documento_identidad_representante_legal").val().length > 0) {
            $("#nombre_razon_social_representante_legal, #tipo_documento_representante_legal, #documento_identidad_representante_legal, #procedencia_documento_identidad_representante_legal  ").prop("required", true);
            $("#nombre_razon_social_representante_legal").rules("add", {
                required: true,
                alphabetical: true,
                messages: {
                    required: "Required input",
                    alphabetical: "Este campo es alfabético"
                }
            });
            $("#tipo_documento_representante_legal, #procedencia_documento_identidad_representante_legal").rules("add", {
                required: true,
                messages: {
                    required: "Este campo es requerido"

                }
            });
            $("#documento_identidad_representante_legal").rules("add", {
                required: true,
                digits: true,
                messages: {
                    required: "Este campo es requerido",
                    digits: "Este campo es numérico"
                }
            });
        }
    }
    

    // Validación representante legal conjunto
    $("#isRepreentanteLegalConjunto").on("click", function () {
        $("#RepresentanteLegalConjuntoSection").fadeIn("slow").removeClass("d-none");
        $("#representante_legal_suscriptor_conjunto, #tipo_identidad_representante_legal_suscriptor_conjunto," +
            " #documento_identidad_representante_legal_suscriptor_conjunto, " +
            "#procedencia_identificacion_representante_legal_suscriptor_conjunto").prop("required", true);

        $("#representante_legal_suscriptor_conjunto").rules("add", {
            required: true,
            alphabetical:true,
            messages: {
                required: "Required input",
                alphabetical: "Este campo es alfabético"
            }
        });
        $("#tipo_identidad_representante_legal_suscriptor_conjunto, #procedencia_identificacion_representante_legal_suscriptor_conjunto").rules("add", {
            required: true,        
            messages: {
                required: "Este campo es requerido"
                
            }
        });
        $("#documento_identidad_representante_legal_suscriptor_conjunto").rules("add", {
            required: true,        
            digits:true,
            messages: {
                required: "Este campo es requerido",
                digits:"Este campo es numérico"

                
            }
        });
        
    });
    if ($("#documento_identidad_representante_legal_suscriptor_conjunto").length > 0)
    {
        if ($("#documento_identidad_representante_legal_suscriptor_conjunto").val().length > 0) {
            $("#representante_legal_suscriptor_conjunto, #tipo_identidad_representante_legal_suscriptor_conjunto," +
                " #documento_identidad_representante_legal_suscriptor_conjunto, " +
                "#procedencia_identificacion_representante_legal_suscriptor_conjunto").prop("required", true);

            $("#representante_legal_suscriptor_conjunto").rules("add", {
                required: true,
                alphabetical: true,
                messages: {
                    required: "Required input",
                    alphabetical: "Este campo es alfabético"
                }
            });
            $("#tipo_identidad_representante_legal_suscriptor_conjunto, #procedencia_identificacion_representante_legal_suscriptor_conjunto").rules("add", {
                required: true,
                messages: {
                    required: "Este campo es requerido"

                }
            });
            $("#documento_identidad_representante_legal_suscriptor_conjunto").rules("add", {
                required: true,
                digits: true,
                messages: {
                    required: "Este campo es requerido",
                    digits: "Este campo es numérico"


                }
            });
        }
    }   

    // Validación suscriptor conjunto
    $("#isSuscriptorConjunto").on("click", function () {
        $("#SuscriptorConjuntoSection").fadeIn("slow").removeClass("d-none");
        $("#nombre_suscriptor_conjunto,#tipo_identidad_suscriptor_conjunto, #documento_identidad_suscriptor_conjunto, " +
            "#procedencia_documento_identidad_suscriptor_conjunto, #fecha_nacimiento_suscriptor_conjunto, #lugar_nacimiento_suscriptor_conjunto, " +
            "#sexo_suscriptor_conjunto, #estado_civil_suscriptor_conjunto, #dirección_suscriptor_conjunto, #departamento_suscriptor_conjunto, " +
            "#ciudad_suscriptor_conjunto, #telefono_suscriptor_conjunto,  #celular_suscriptor_conjunto, #empresa_empleadora_suscriptor_conjunto," +
            "#cargo_suscriptor_conjunto, #ingresos_mensuales_suscriptor_conjunto, #egresos_mensuales_suscriptor_conjunto, #otros_ingresos_suscriptor_conjunto," + 
            "#direccion_empleo_suscriptor_conjunto, #departamento_empleo_suscriptor_conjunto, #ciudad_empleo_suscriptor_conjunto, #telefono_empleo_suscriptor_conjunto," +

            "#celular_empleo_suscriptor_conjunto, #profesion_suscriptor_conjunto, #correspondencia_suscriptor_conjunto, #email_suscriptor_conjunto").prop("required", true);

        $("#nombre_suscriptor_conjunto, #lugar_nacimiento_suscriptor_conjunto, #empresa_empleadora_suscriptor_conjunto," +
        "#cargo_suscriptor_conjunto,#profesion_suscriptor_conjunto").rules("add", {
            required: true,
            alphabetical: true,
            messages: {
                required: "Este campo es requerido",
                alphabetical: "Este campo debe ser alfabético"
            }
        });
        $("#tipo_identidad_suscriptor_conjunto, #procedencia_documento_identidad_suscriptor_conjunto," +
            "#fecha_nacimiento_suscriptor_conjunto, #sexo_suscriptor_conjunto, #estado_civil_suscriptor_conjunto," +
            "#departamento_suscriptor_conjunto, #ciudad_suscriptor_conjunto,#departamento_empleo_suscriptor_conjunto," +
            " #ciudad_empleo_suscriptor_conjunto, #correspondencia_suscriptor_conjunto ").rules("add", {
            required: true,
            messages: {
                required:"Este campo es requerido"
            }
        });
        $("#dirección_suscriptor_conjunto, #direccion_empleo_suscriptor_conjunto").rules("add", {
            required: true,
            maxlength:200,
            messages: {
                required: "Este campo es requerido",
                maxlength: "Este campo debe tener máximo 200 caracteres"
            }
        });
        $("#documento_identidad_suscriptor_conjunto").rules("add", {
            required: true,
            digits: true,
            messages: {
                required: "Este campo es requerido",
                digits: "este campo debe ser numérico"
            }
        });
        $("#telefono_suscriptor_conjunto, #celular_suscriptor_conjunto, " +
            "#telefono_empleo_suscriptor_conjunto, #celular_empleo_suscriptor_conjunto").rules("add", {
                required: true,
                digits: true,
                minlength:7,
                messages: {
                    required: "Este campo es requerido",
                    digits: "este campo debe ser numérico",
                    minLength: "Este campo de ser un número de teléfono válido"
                }
        });
        $("#ingresos_mensuales_suscriptor_conjunto, #egresos_mensuales_suscriptor_conjunto, #otros_ingresos_suscriptor_conjunto").rules("add", {
            required: true,
            number: true,
            messages: {
                required: "Este campo es requerido",
                number: "este campo debe ser numérico"
            }
        });
        $("#email_suscriptor_conjunto").rules("add", {
            required: true,
            email: true,
            messages: {
                required: "Este campo es requerido",
                email: "Debe ser un email válido"
            }
        });


        /*$("#myinput").rules("add", {
            required: true,
            minlength: 2,
            messages: {
                required: "Required input",
                minlength: jQuery.validator.format("Please, at least {0} characters are necessary")
            }
        });*/

    });
    if ($("#documento_identidad_suscriptor_conjunto").length>0)
    {
        if ($("#documento_identidad_suscriptor_conjunto").val().length > 0) {
            $("#nombre_suscriptor_conjunto,#tipo_identidad_suscriptor_conjunto, #documento_identidad_suscriptor_conjunto, " +
                "#procedencia_documento_identidad_suscriptor_conjunto, #fecha_nacimiento_suscriptor_conjunto, #lugar_nacimiento_suscriptor_conjunto, " +
                "#sexo_suscriptor_conjunto, #estado_civil_suscriptor_conjunto, #dirección_suscriptor_conjunto, #departamento_suscriptor_conjunto, " +
                "#ciudad_suscriptor_conjunto, #telefono_suscriptor_conjunto,  #celular_suscriptor_conjunto, #empresa_empleadora_suscriptor_conjunto," +
                "#cargo_suscriptor_conjunto, #ingresos_mensuales_suscriptor_conjunto, #egresos_mensuales_suscriptor_conjunto, #otros_ingresos_suscriptor_conjunto," +
                "#direccion_empleo_suscriptor_conjunto, #departamento_empleo_suscriptor_conjunto, #ciudad_empleo_suscriptor_conjunto, #telefono_empleo_suscriptor_conjunto," +

                "#celular_empleo_suscriptor_conjunto, #profesion_suscriptor_conjunto, #correspondencia_suscriptor_conjunto, #email_suscriptor_conjunto").prop("required", true);

            $("#nombre_suscriptor_conjunto, #lugar_nacimiento_suscriptor_conjunto, #empresa_empleadora_suscriptor_conjunto," +
                "#cargo_suscriptor_conjunto,#profesion_suscriptor_conjunto").rules("add", {
                    required: true,
                    alphabetical: true,
                    messages: {
                        required: "Este campo es requerido",
                        alphabetical: "Este campo debe ser alfabético"
                    }
                });
            $("#tipo_identidad_suscriptor_conjunto, #procedencia_documento_identidad_suscriptor_conjunto," +
                "#fecha_nacimiento_suscriptor_conjunto, #sexo_suscriptor_conjunto, #estado_civil_suscriptor_conjunto," +
                "#departamento_suscriptor_conjunto, #ciudad_suscriptor_conjunto,#departamento_empleo_suscriptor_conjunto," +
                " #ciudad_empleo_suscriptor_conjunto, #correspondencia_suscriptor_conjunto ").rules("add", {
                    required: true,
                    messages: {
                        required: "Este campo es requerido"
                    }
                });
            $("#dirección_suscriptor_conjunto, #direccion_empleo_suscriptor_conjunto").rules("add", {
                required: true,
                maxlength: 200,
                messages: {
                    required: "Este campo es requerido",
                    maxlength: "Este campo debe tener máximo 200 caracteres"
                }
            });
            $("#documento_identidad_suscriptor_conjunto").rules("add", {
                required: true,
                digits: true,
                messages: {
                    required: "Este campo es requerido",
                    digits: "este campo debe ser numérico"
                }
            });
            $("#telefono_suscriptor_conjunto, #celular_suscriptor_conjunto, " +
                "#telefono_empleo_suscriptor_conjunto, #celular_empleo_suscriptor_conjunto").rules("add", {
                    required: true,
                    digits: true,
                    minlength: 7,
                    messages: {
                        required: "Este campo es requerido",
                        digits: "este campo debe ser numérico",
                        minLength: "Este campo de ser un número de teléfono válido"
                    }
                });
            $("#ingresos_mensuales_suscriptor_conjunto, #egresos_mensuales_suscriptor_conjunto, #otros_ingresos_suscriptor_conjunto").rules("add", {
                required: true,
                number: true,
                messages: {
                    required: "Este campo es requerido",
                    number: "este campo debe ser numérico"
                }
            });
            $("#email_suscriptor_conjunto").rules("add", {
                required: true,
                email: true,
                messages: {
                    required: "Este campo es requerido",
                    email: "Debe ser un email válido"
                }
            });
        }
    }
    
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
                            $("#Agencia").val(data[0].CodAgencia);
                            $("#DescripcionAgencia").val(data[0].Agencia);
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
                            '<strong>El usuario no posee un registro en SIICON y no puede ser creado.</strong>' +
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

    // SARLAFT VAlidation
    /*$('#NumeroDocumento').blur(function () {
        $.ajax({
            type: "GET",
            url: "/api/Freyja/SarlaftCheck/" + $("#Cedula").val(),
            contentType: "application/json; charset=utf-8",
            dataType: "json",
            success: function (data) {
                try {
                    
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
    });*/

    // Validación UploadID Remoto
    $(".uploadIDValidation").validate({
        rules: {
            Anverso: {
                required:true
            },
            Reverso: {
                required:true
            }
        },
        messages: {
            Anverso: {
                required: "Este campo es requerido"
            },
            Reverso: {
                required: "Este campo es requerido"
            }
        }
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

    // Ciudades Suscriptor
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

    // Ciudades Suscriptor Conjunto
    // Selección de ciudad suscriptor conjunto
    $("#departamentoDocumentoSuscriptorConjunto").on('change', function () {
        $.ajax({
            type: "GET",
            url: "/api/Freyja/GetCiudades/" + $(this).find(":selected").data("idsiicon"),
            contentType: "application/json; charset=utf-8",
            dataType: "json",
            success: function (data) {
                var ciudad = $("#procedencia_documento_identidad_suscriptor_conjunto");
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

    // Delección de ciudad para representante legal  suscriptor conjunto
    $("#departamentoDocumentoLegalSuscriptorConjunto").on('change', function () {
        $.ajax({
            type: "GET",
            url: "/api/Freyja/GetCiudades/" + $(this).find(":selected").data("idsiicon"),
            contentType: "application/json; charset=utf-8",
            dataType: "json",
            success: function (data) {
                var ciudad = $("#procedencia_identificacion_representante_legal_suscriptor_conjunto");
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

    // Seleccion de Ciudad para la cédula suscriptor conjunto
    $("#departamento_suscriptor_conjunto").on('change', function () {
        $.ajax({
            type: "GET",
            url: "/api/Freyja/GetCiudades/" + $(this).find(":selected").data("idsiicon"),
            contentType: "application/json; charset=utf-8",
            dataType: "json",
            success: function (data) {
                var ciudad = $("#ciudad_suscriptor_conjunto");
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

    // Seleccion de Ciudad para la empresa laboral suscriptor conjunto
    $("#departamento_empleo_suscriptor_conjunto").on('change', function () {
        $.ajax({
            type: "GET",
            url: "/api/Freyja/GetCiudades/" + $(this).find(":selected").data("idsiicon"),
            contentType: "application/json; charset=utf-8",
            dataType: "json",
            success: function (data) {
                var ciudad = $("#ciudad_empleo_suscriptor_conjunto");
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


    
    // refresh status del contrato
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