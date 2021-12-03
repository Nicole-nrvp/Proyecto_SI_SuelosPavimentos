/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
jQuery.validator.addMethod("letterswithspace", function(value, element) {
    return this.optional(element) || /^[a-z\s]+$/i.test(value);
}, "Solo letras");

$(document).ready(function ($) {
    $("#update-tipoensayo-form").validate({
        rules: {
            txtNombre: {
                required: true,
                minlength: 5,
                maxlength: 15,
                letterswithspace : true
            },
            txtClaseEnsayo: {
                required: true
            }

        },
        messages: {
            txtNombre: {
                required: "Por favor ingrese nombre ",
                minlength: "Minimo 5 caracteres",
                maxlength: "Maximo 15 caracteres",
                 letterswithspace : "Solo se admiten letras"
            },
            txtClaseEnsayo: {
                required: "Por favor seleccione clase de ensayo",
            
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

