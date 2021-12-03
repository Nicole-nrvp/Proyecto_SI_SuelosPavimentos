/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
jQuery.validator.addMethod("letterswithspace", function(value, element) {
    return this.optional(element) || /^[a-z\s]+$/i.test(value);
}, "Solo letras");

$(document).ready(function ($) {
    $("#register-prueba-form").validate({
        rules: {
            FechaFin: {
                required: true
            },
            Nombre: {
                required: true,
                minlength: 5,
                maxlength: 20,
                 letterswithspace : true
            },
            Usuario: {
                required: true
            },
            Muestra:{
                required: true
            },
            Solicitud:{
                required: true
            }

        },
        messages: {
            FechaFin: {
                required: "Por favor seleccione una fecha"
            },
            Nombre: {
                required: "Por favor ingrese nombre de la muestra",
                minlength: "Minimo 5 caracteres",
                maxlength: "Maximo 20 caracteres",
                letterswithspace: "Solo se admiten letras"
            },
            Usuario: {
                required: "Este campos es obligatorio"
            },
            Muestra: {
                required: "Este campos es obligatorio"
            },
            Solicitud:{
                required: "Este campos es obligatorio"
            }
            
            
        },
        highlight: function (element) {
            $(element).closest('.form-control').addClass('is-invalid');
        },
        unhighlight: function (element) {
            $(element).closest('.form-control').removeClass('is-invalid').addClass('is-valid');
        }


    });
});

