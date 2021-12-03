/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
jQuery.validator.addMethod("letterswithspace", function(value, element) {
    return this.optional(element) || /^[a-z\s]+$/i.test(value);
}, "Solo letras");

$(document).ready(function ($) {
    $("#update-AsPru-form").validate({
        rules: {
            Prueba: {
                required: true
                
            },
            Resultado: {
                required: true,
                minlength: 5,
                maxlength: 7
                
            },
            Aspecto: {
                required: true
                
            }


        },
        messages: {
            Aspecto: {
                required: "Por favor ingrese nombre de la muestra"
            },
            Resultado: {
                required: "Por favor ingrese nombre de la muestra",
                minlength: "Minimo 5 caracteres",
                maxlength: "Maximo 7 caracteres",
            },
            Aspecto: {
                required: "Por favor ingrese nombre de la muestra"
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

