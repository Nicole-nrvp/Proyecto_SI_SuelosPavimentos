/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
jQuery.validator.addMethod("letterswithspace", function(value, element) {
    return this.optional(element) || /^[a-z\s]+$/i.test(value);
}, "Solo letras");
 
$(document).ready(function ($) {
    $("#update-solicitud-form").validate({
        rules: {
            textSolNombre: {
                required: true,
                minlength: 5,
                maxlength: 20
            }

        },
        messages: {
            textSolNombre: {
                required: "Por favor ingrese nombre de la solicitud",
                minlength: "Minimo 5 caracteres",
                maxlength: "Maximo 20 caracteres"
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

