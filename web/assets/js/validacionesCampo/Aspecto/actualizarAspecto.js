/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
jQuery.validator.addMethod("letterswithspace", function(value, element) {
    return this.optional(element) || /^[a-z\s]+$/i.test(value);
}, "Solo letras");

$(document).ready(function ($) {
    $("#update-aspecto-form").validate({
        rules: {
            Nombre: {
                required: true,
                minlength: 5,
                maxlength: 20,
                letterswithspace: true
            },
            Descripcion: {
                required: true,
                minlength: 5,
                maxlength: 20,
                 letterswithspace : true
            },
            Procedimiento:{
                required: true
            },
            Tipo:{
                required: true
            }

        },
        messages: {
            Nombre: {
                required: "Por favor ingrese nombre del aspecto",
                minlength: "Minimo 5 caracteres",
                maxlength: "Maximo 20 caracteres",
                letterswithspace: "Solo se permiten letras"
            },
            Descripcion: {
                required: "Por favor ingrese la descri´ción",
                minlength: "Minimo 5 caracteres",
                maxlength: "Maximo 20 caracteres",
                letterswithspace: "Solo se permiten letras"
            },
            Procedimiento:{
                required: "Por favor seleccione un Procedimiento"
            },
            Tipo:{
                required: "Por favor seleccione un Tipo"
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

