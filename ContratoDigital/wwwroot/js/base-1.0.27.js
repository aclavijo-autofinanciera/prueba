// Write your JavaScript code.
jQuery(function ($) {
    AOS.init({
        'duration': 600,
        'easing': 'ease-in-sine'
    });

    $('[data-toggle="tooltip"]').tooltip();    

    // Validación UploadID Remoto
    $(".uploadIDValidation").validate({
        rules: {
            Anverso: {
                required: true,
                accept: "image/*"
            },
            Reverso: {
                required: true,
                accept: "image/*"
            }
        },
        messages: {
            Anverso: {
                required: "Este campo es requerido",
                accept: "El archivo debe ser una imagen"
            },
            Reverso: {
                required: "Este campo es requerido",
                accept: "El archivo debe ser una imagen"
            }
        }
    });      
});

