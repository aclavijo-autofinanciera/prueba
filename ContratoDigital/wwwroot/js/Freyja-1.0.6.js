jQuery(function ($) {
    // Variables
    var compania = $("#idcompania");
    var agencia = $('#Agencia');
    var tipoBien = $('#tipodeBien');
    var marca = $('#marca');
    var planAhorro = $('#planDeAhorro');
    var tipoCalculo = $('#tipoCalculo');
    var tipoMedio = $('#TipoMedio');
    var tipoMedioAgencia = $('#TipoMedioAgencia');
    var tipoCuota = $('#TipoCuota');
    
    


    /** Seleccionar una compañía
    * Al seleccionar una compañía, se asigna una agencia. 
    * */
    compania.on('change', function () {
        // Cambio del espacio legalese con relación a la compañía seleccionada.
        $("#compania").val($(this).find(":selected").text());
        if ($("#idcompania").val() === "6831062e-c994-4686-a989-1964b1200cbc") {
            $("#legaleseElectro").finish().fadeTo('normal', 0).removeClass("d-none").finish().fadeTo('normal', 1);
            $("#legaleseAuto").finish().fadeTo('normal', 0).addClass("d-none").finish().fadeTo('normal', 1);
        }
        else {
            $("#legaleseAuto").finish().fadeTo('normal', 0).removeClass("d-none").finish().fadeTo('normal', 1);
            $("#legaleseElectro").finish().fadeTo('normal', 0).addClass("d-none").finish().fadeTo('normal', 1);
        }

        // Selección de agencias basadas en  la compañía y el tipo de usuario
        //if (asesorID.length > 0)
        if (typeof asesorID !== 'undefined')
        {
            agencia.empty();
            agencia.append("<option value=\"\">Selecciona una opción</option>");
            agencia.append("<option value =\"" + agenciaAsesor + "\" >" + agenciaDescripcion + "</option>");
            agencia.removeAttr("disabled readonly");
        }
        else
        {
            agencia.empty();
            agencia.append("<option value=\"\">Selecciona una opción</option>");

            tipoCuota.empty();
            tipoCuota.append("<option value=\"\">Seleccione una opción</option><option value = \"CF\">Cuota fija</option><option value=\"CV\">Cuota variable</option>");

            tipoBien.empty();
            tipoBien.append("<option value=\"\">Selecciona una opción</option>");

            marca.empty();
            marca.append("<option value=\"\">Selecciona una opción</option>");

            planAhorro.empty();
            planAhorro.append("<option value=\"\">Selecciona una opción</option>");

            tipoCalculo.empty();
            tipoCalculo.append("<option value=\"\">Selecciona una opción</option>");            
            
        }
        
    }); // End Compañía Select

    tipoCuota.on('change', function () {
        if (typeof asesorID !== 'undefined') {
            agencia.empty();
            agencia.append("<option value=\"\">Selecciona una opción</option>");
            agencia.append("<option value =\"" + agenciaAsesor + "\" >" + agenciaDescripcion + "</option>");
            agencia.removeAttr("disabled readonly");
        }
        else {
            agencia.empty();
            agencia.append("<option value=\"\">Selecciona una opción</option>");            

            tipoBien.empty();
            tipoBien.append("<option value=\"\">Selecciona una opción</option>");

            marca.empty();
            marca.append("<option value=\"\">Selecciona una opción</option>");

            planAhorro.empty();
            planAhorro.append("<option value=\"\">Selecciona una opción</option>");

            tipoCalculo.empty();
            tipoCalculo.append("<option value=\"\">Selecciona una opción</option>");

            $.ajax({
                type: "GET",
                url: "/api/Freyja/GetAgencias/" + userIdSiicon + "/" + compania.val(),
                contentType: "application/json; charset=utf-8",
                dataType: "json",
                success: function (data) {
                    try {
                        $.each(data, function (i, item) {
                            var rows = "<option value=\"" + item.CodAgencia + "\" >" + item.Agencia + " </option>";
                            agencia.append(rows);
                            agencia.removeAttr("readonly disabled");
                        });
                    } catch (e) {
                        $('.error-area').html('<div class="alert alert-danger alert-dismissible fade show" role="alert">' +
                            '<strong>Ha ocurrido un error en el sistema; intente nuevamente</strong>' +
                            '<button type="button" class="close" data-dismiss="alert" aria-label="Close">' +
                            '<span aria-hidden="true">&times;</span>' +
                            '</button>' +
                            '</div >');
                        $(this).addClass('fa-spin');
                    }
                },
                failure: function (data) {
                    $('.error-area').html('<div class="alert alert-danger alert-dismissible fade show" role="alert">' +
                        '<strong>Ha ocurrido un error en el sistema; intente nuevamente</strong>' +
                        '<button type="button" class="close" data-dismiss="alert" aria-label="Close">' +
                        '<span aria-hidden="true">&times;</span>' +
                        '</button>' +
                        '</div >');
                    $(this).removeClass('fa-spin');
                },
                error: function (data) {
                    $('.error-area').html('<div class="alert alert-danger alert-dismissible fade show" role="alert">' +
                        '<strong>Ha ocurrido un error en el sistema; intente nuevamente</strong>' +
                        '<button type="button" class="close" data-dismiss="alert" aria-label="Close">' +
                        '<span aria-hidden="true">&times;</span>' +
                        '</button>' +
                        '</div >');
                    $(this).removeClass('fa-spin');
                }
            });
        }

    });

    /**
     * Seleccionar una agencia. 
     * Al seleccionar una agencia se asignan los tipos de bien posibles
     */
    agencia.on('change', function () {
        tipoBien.empty();
        tipoBien.append("<option value=\"\">Selecciona una opción</option>");

        marca.empty();
        marca.append("<option value=\"\">Selecciona una opción</option>");

        planAhorro.empty();
        planAhorro.append("<option value=\"\">Selecciona una opción</option>");

        tipoCalculo.empty();
        tipoCalculo.append("<option value=\"\">Selecciona una opción</option>");

        
        $('#AgenciaDescripcion').val(agencia.find(':selected').text());
        $.ajax({
            type: "GET",
            url: "/api/Freyja/GetTipoBien/" + compania.val() + "/" + agencia.find(":selected").val() + "/" + $('#TipoCuota').find(":selected").val(),
            contentType: "application/json; charset=utf-8",
            dataType: "json",
            success: function (data) {
                tipoBien.empty();
                tipoBien.append("<option value=\"\">Selecciona una opción</option>");
                if (data.length > 0) {
                    $.each(data, function (i, item) {
                        var rows = "<option value=\"" + item.CodTipoBien + "\">" + item.TipoBien + "</option>";
                        tipoBien.append(rows);
                    });
                    tipoBien.removeAttr("readonly disabled");
                }
                else
                {
                    $('.error-area').html('<div class="alert alert-warning alert-dismissible fade show" role="alert">' +
                        '<strong>La agencia ' + agencia.find(":selected").text() + ' no posee tipos de bien en el modo ' + $('#TipoCuota').find(":selected").text() + ' </strong>' +
                        '<button type="button" class="close" data-dismiss="alert" aria-label="Close">' +
                        '<span aria-hidden="true">&times;</span>' +
                        '</button>' +
                        '</div >');
                }
                
                
            },
            failure: function (data) {
                $('.error-area').html('<div class="alert alert-danger alert-dismissible fade show" role="alert">' +
                    '<strong>Ha ocurrido un error en el sistema; intente nuevamente</strong>' +
                    '<button type="button" class="close" data-dismiss="alert" aria-label="Close">' +
                    '<span aria-hidden="true">&times;</span>' +
                    '</button>' +
                    '</div >');
            },
            error: function (data) {
                $('.error-area').html('<div class="alert alert-danger alert-dismissible fade show" role="alert">' +
                    '<strong>Ha ocurrido un error en el sistema; intente nuevamente</strong>' +
                    '<button type="button" class="close" data-dismiss="alert" aria-label="Close">' +
                    '<span aria-hidden="true">&times;</span>' +
                    '</button>' +
                    '</div >');
            }

        });  
        
        $.ajax({
            type: "GET",
            url: "/api/Freyja/GetTipoMedio/",
            contentType: "application/json; charset=utf-8",
            dataType: "json",
            success: function (data) {
                try {
                    tipoMedio.append("<option value=\"\">Selecciona una opción</option>");
                    $.each(data, function (i, item) {
                        var rows = "<option value=\"" + item.TipoMedioId + "\" >" + item.TipoMedio + " </option>";
                        tipoMedio.append(rows);
                    });
                    tipoMedio.removeAttr("readonly disabled");
                } catch (e) {
                    $('.error-area').html('<div class="alert alert-danger alert-dismissible fade show" role="alert">' +
                        '<strong>Ha ocurrido un error en el sistema; intente nuevamente</strong>' +
                        '<button type="button" class="close" data-dismiss="alert" aria-label="Close">' +
                        '<span aria-hidden="true">&times;</span>' +
                        '</button>' +
                        '</div >');
                    $(this).addClass('fa-spin');
                }
            },
            failure: function (data) {
                $('.error-area').html('<div class="alert alert-danger alert-dismissible fade show" role="alert">' +
                    '<strong>Ha ocurrido un error en el sistema; intente nuevamente</strong>' +
                    '<button type="button" class="close" data-dismiss="alert" aria-label="Close">' +
                    '<span aria-hidden="true">&times;</span>' +
                    '</button>' +
                    '</div >');
                $(this).removeClass('fa-spin');
            },
            error: function (data) {
                $('.error-area').html('<div class="alert alert-danger alert-dismissible fade show" role="alert">' +
                    '<strong>Ha ocurrido un error en el sistema; intente nuevamente</strong>' +
                    '<button type="button" class="close" data-dismiss="alert" aria-label="Close">' +
                    '<span aria-hidden="true">&times;</span>' +
                    '</button>' +
                    '</div >');
                $(this).removeClass('fa-spin');
            }
        });        
                
    }); // End Agencia Select

    /**
     * Seleccionar un tipo de bien
     * Al seleccionar un tipo de bien se asignan las marcas posibles.
     * */
    tipoBien.on('change', function () {

        marca.empty();
        marca.append("<option value=\"\">Selecciona una opción</option>");

        planAhorro.empty();
        planAhorro.append("<option value=\"\">Selecciona una opción</option>");

        tipoCalculo.empty();
        tipoCalculo.append("<option value=\"\">Selecciona una opción</option>");

        
        //Descripción del tipo de bien como tal
        $('#descripcionTipoBien').val(tipoBien.find(':selected').text());
        $.ajax({
            type: "GET",
            url: "/api/Freyja/GetMarcas/" + compania.val() + "/" + tipoBien.val(),
            contentType: "application/json; charset=utf-8",
            dataType: "json",
            success: function (data) {
                marca.empty();
                marca.append("<option value=\"\">Selecciona una opción</option>");
                $.each(data, function (i, item) {
                    var rows =
                        "<option value=\"" +  item.CodMarca + "\">" + item.Marca + "</option>";
                    marca.append(rows);
                });
                marca.removeAttr("readonly disabled");
            },
            failure: function (data) {
                $('.error-area').html('<div class="alert alert-danger alert-dismissible fade show" role="alert">' +
                    '<strong>Ha ocurrido un error en el sistema; intente nuevamente</strong>' +
                    '<button type="button" class="close" data-dismiss="alert" aria-label="Close">' +
                    '<span aria-hidden="true">&times;</span>' +
                    '</button>' +
                    '</div >');
            },
            error: function (data) {
                $('.error-area').html('<div class="alert alert-danger alert-dismissible fade show" role="alert">' +
                    '<strong>Ha ocurrido un error en el sistema; intente nuevamente</strong>' +
                    '<button type="button" class="close" data-dismiss="alert" aria-label="Close">' +
                    '<span aria-hidden="true">&times;</span>' +
                    '</button>' +
                    '</div >');
            }

        });
    }); // End Tipo Bien Select

    /**
     * seleccionar marca
     * Al seleccionar marca, se asignan los posibles planes de ahorro
     * */
    marca.on('change', function () {
        planAhorro.empty();
        planAhorro.append("<option value=\"\">Selecciona una opción</option>");

        tipoCalculo.empty();
        tipoCalculo.append("<option value=\"\">Selecciona una opción</option>");

        
        $('#descripcionMarca').val(marca.find(':selected').text());
        $.ajax({
            type: "GET",
            url: "/api/Freyja/getBienes/" + compania.find(":selected").val() + "/" + tipoBien.find(":selected").val() + "/" + marca.find(":selected").val(),
            contentType: "application/json; charset=utf-8",
            dataType: "json",
            success: function (data) {
                planAhorro.empty();
                planAhorro.append("<option value=\"\">Seleccione una opción</option> ");
                if (data.length > 0) {
                    data1 = data.sort(GetSortOrder('ValorBien'));
                    $.each(data1, function (i, item) {
                        var rows =
                            "<option value=\"" + item.BienId + "\" data-valorbien=\"" + item.ValorBien + "\" data-codbiencompleto=\"" + item.CodBienCompleto + "\" >" + item.BienCompleto + "</option>";
                        planAhorro.append(rows);
                    });
                    planAhorro.removeAttr("readonly disabled");
                }
                else
                {
                    $('.error-area').html('<div class="alert alert-warning alert-dismissible fade show" role="alert">' +
                        '<strong>La marca ' + marca.find(":selected").text() + ' no posee planes de ahorro registrados </strong>' +
                        '<button type="button" class="close" data-dismiss="alert" aria-label="Close">' +
                        '<span aria-hidden="true">&times;</span>' +
                        '</button>' +
                        '</div >');

                }
                                
            },
            failure: function (data) {
                $('.error-area').html('<div class="alert alert-danger alert-dismissible fade show" role="alert">' +
                    '<strong>Ha ocurrido un error en el sistema; intente nuevamente</strong>' +
                    '<button type="button" class="close" data-dismiss="alert" aria-label="Close">' +
                    '<span aria-hidden="true">&times;</span>' +
                    '</button>' +
                    '</div >');
            },
            error: function (data) {
                $('.error-area').html('<div class="alert alert-danger alert-dismissible fade show" role="alert">' +
                    '<strong>Ha ocurrido un error en el sistema; intente nuevamente</strong>' +
                    '<button type="button" class="close" data-dismiss="alert" aria-label="Close">' +
                    '<span aria-hidden="true">&times;</span>' +
                    '</button>' +
                    '</div >');
            }
        });
    }); // End Seleccion Marca

    /**
     * Seleccionar plan de ahorro
     * Al seleccionar el plan de ahorro se hace el cálculo total del bien.
     * */
    planAhorro.on('change', function () {

        tipoCalculo.empty();
        tipoCalculo.append("<option value=\"\">Selecciona una opción</option>");

        

        $.ajax({
            type: "GET",
            url: "/api/Freyja/GetBienesParametros/" + compania.find(":selected").val() + "/" + tipoBien.find(":selected").val() + "/" + planAhorro.find(":selected").data("valorbien") + "/0",
            contentType: "application/json; charset=utf-8",
            dataType: "json",
            success: function (data) {
                tipoCalculo.empty();
                tipoCalculo.append("<option value=\"\">Selecciona una opción</option>");

                if (data.length > 0)
                {
                    $.each(data, function (i, item) {
                        var rows = "<option value=\"" + item.TipoBienId + "\" data-tipobienparametroid=\"" + item.TipoBienParametroId + "\" data-valorbien=\"" + planAhorro.find(":selected").data("valorbien") + "\" data-inscripcion=\"" + item.PorcentajeInscripcion + "\" data-administracion=\"" + item.PorcentajeAdministracion + "\" data-plazo=\"" + item.Plazo + "\" > Plazo: " + item.Plazo + " ( Valor: " + parseFormat(planAhorro.find(":selected").data("valorbien")) + " [Inscripción: " + item.PorcentajeInscripcion + "%; Administración:" + item.PorcentajeAdministracion + "%])</option>";
                        tipoCalculo.append(rows);
                    });
                    tipoCalculo.removeAttr("readonly disabled");
                }
                else
                {
                    $('.error-area').html('<div class="alert alert-warning alert-dismissible fade show" role="alert">' +
                        '<strong>El monto del bien ' + planAhorro.find(":selected").text() + '  no posee un plan de ahorro con plazos registrado</strong>' +
                        '<button type="button" class="close" data-dismiss="alert" aria-label="Close">' +
                        '<span aria-hidden="true">&times;</span>' +
                        '</button>' +
                        '</div >');
                }

                
            },
            failure: function (data) {
                $('.error-area').html('<div class="alert alert-danger alert-dismissible fade show" role="alert">' +
                    '<strong>Ha ocurrido un error en el sistema; intente nuevamente</strong>' +
                    '<button type="button" class="close" data-dismiss="alert" aria-label="Close">' +
                    '<span aria-hidden="true">&times;</span>' +
                    '</button>' +
                    '</div >');
            },
            error: function (data) {
                $('.error-area').html('<div class="alert alert-danger alert-dismissible fade show" role="alert">' +
                    '<strong>Ha ocurrido un error en el sistema; intente nuevamente</strong>' +
                    '<button type="button" class="close" data-dismiss="alert" aria-label="Close">' +
                    '<span aria-hidden="true">&times;</span>' +
                    '</button>' +
                    '</div >');
            }
        });
    }); // End Selección Plan de ahorro

    /**
     * Selección de tipo de medio
     * al seleccionar, se llenan los tipos de medio por agencia
     * */
    tipoMedio.on("change", function () {  


        tipoMedioAgencia.empty();
        tipoMedioAgencia.append("<option value=\"\">Selecciona una opción</option>");

        $.ajax({
            type: "GET",
            url: "/api/Freyja/GetMedioAgencia/" + compania.val() + "/" + tipoMedio.val() + "/" + agencia.val(),
            contentType: "application/json; charset=utf-8",
            dataType: "json",
            success: function (data) {
                try {
                    tipoMedioAgencia.empty();
                    tipoMedioAgencia.append("<option value=\"\">Selecciona una opción</option>");
                    if (data.length > 0) {
                        $.each(data, function (i, item) {
                            var rows = "<option value=\"" + item.MedioId + "\" data-mediofechaid=\"" + item.MedioFechaId + "\" >" + item.Medio + " </option>";
                            tipoMedioAgencia.append(rows);
                        });
                        tipoMedioAgencia.removeAttr("readonly disabled");
                        $("#TipoMedioDescripcion").val(tipoMedio.find(":selected").text());
                    }
                    else
                    {
                        $('.error-area').html('<div class="alert alert-warning alert-dismissible fade show" role="alert">' +
                            '<strong>El tipo de medio ' + tipoMedio.find(":selected").text() + ' no posee agencia medio registrada</strong>' +
                            '<button type="button" class="close" data-dismiss="alert" aria-label="Close">' +
                            '<span aria-hidden="true">&times;</span>' +
                            '</button>' +
                            '</div >');
                    }
                    
                } catch (e) {
                    $('.error-area').html('<div class="alert alert-danger alert-dismissible fade show" role="alert">' +
                        '<strong>Ha ocurrido un error en el sistema; intente nuevamente</strong>' +
                        '<button type="button" class="close" data-dismiss="alert" aria-label="Close">' +
                        '<span aria-hidden="true">&times;</span>' +
                        '</button>' +
                        '</div >');
                    $(this).addClass('fa-spin');
                }
            },
            failure: function (data) {
                $('.error-area').html('<div class="alert alert-danger alert-dismissible fade show" role="alert">' +
                    '<strong>Ha ocurrido un error en el sistema; intente nuevamente</strong>' +
                    '<button type="button" class="close" data-dismiss="alert" aria-label="Close">' +
                    '<span aria-hidden="true">&times;</span>' +
                    '</button>' +
                    '</div >');
                $(this).removeClass('fa-spin');
            },
            error: function (data) {
                $('.error-area').html('<div class="alert alert-danger alert-dismissible fade show" role="alert">' +
                    '<strong>Ha ocurrido un error en el sistema; intente nuevamente</strong>' +
                    '<button type="button" class="close" data-dismiss="alert" aria-label="Close">' +
                    '<span aria-hidden="true">&times;</span>' +
                    '</button>' +
                    '</div >');
                $(this).removeClass('fa-spin');
            }
        });
    });
    // end Selección tipo de medio

    // Fill in hidden inputs fro tipo medio agencia
    $("#TipoMedioAgencia").on("change", function () {
        $("#TipoMedioAgenciaDescripcion").val(tipoMedioAgencia.find(":selected").text());
        $("#medioFechaId").val(tipoMedioAgencia.find(":selected").data("mediofechaid"));
    });
    $("#TipoCliente").on("change", function () {
        $("#TipoClienteDescripcion").val($("#TipoCliente").find(":selected").text());
    });
    // End Fill Hidden Inputs

    /**
     * Cálculo del contrato.
     * */
    tipoCalculo.on('change', function () {
        var valbien = costodelbien = planAhorro.find(":selected").data("valorbien");
        var inscripcion = tipoCalculo.find(":selected").data("inscripcion");
        var plazo = tipoCalculo.find(":selected").data("plazo");
        var administracion = tipoCalculo.find(":selected").data("administracion");        
        var iva = 0.19;
        $('.porcentajeInscripcion').empty().text(inscripcion).val(inscripcion);
        $('.porcentajeAdministracion').empty().text(administracion).val(administracion);
        $('#descripcionTipoCalculo').empty().val(tipoCalculo.find(":selected").text());
        $('.porcentajeIva').empty().text(iva * 100).val(iva * 100);
        $('.plazo').empty().text(plazo).val(plazo);        
        $('#tipoBienParametroId').empty().val(tipoCalculo.find(":selected").data("tipobienparametroid"));
        /*if (valbien <= 24000000) {
            $("#legaleseAuto").finish().fadeTo('normal', 0).addClass("d-none").finish().fadeTo('normal', 1);
            $("#legaleseElectro").finish().fadeTo('normal', 0).removeClass("d-none").finish().fadeTo('normal', 1);
        }
        else {
            $("#legaleseAuto").finish().fadeTo('normal', 0).removeClass("d-none").finish().fadeTo('normal', 1);
            $("#legaleseElectro").finish().fadeTo('normal', 0).addClass("d-none").finish().fadeTo('normal', 1);
        }*/
        if (valbien === "" || valbien === 0) {
            valbien = 0;
            $("#costo_del_bien, #cuota_ingreso, #administracion, #iva_cuota_ingreso, #iva_administracion, #total_cuota_ingreso, #total_cuota_bruta, #primera_cuota_neta, #valor_primer_pago").val(0.00);
        }

        $("#DescripcionDelBien, #detalles_bien, #detalle").finish().fadeTo('normal', 0).val($("#planDeAhorro").find(":selected").text()).finish().fadeTo('normal', 1);

        // Valor del costo del bien 
        $("#costo_del_bien, #valor_bien").finish().fadeTo('normal', 0).val(parseFormat(costodelbien)).finish().fadeTo('normal', 1);

        // Cuota de ingreso 
        //valorPorcentajeInscripcion = costodelbien * 0.045;
        var valorPorcentajeInscripcion = costodelbien * (inscripcion / 100);
        $("#cuota_ingreso").finish().fadeTo('normal', 0).val(parseFormat(valorPorcentajeInscripcion)).finish().fadeTo('normal', 1);

        // Iva Inscripción 
        var ivaInscripcion = (inscripcion / 100) * valbien * iva;
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
    }); // End Cálculo contrato
});