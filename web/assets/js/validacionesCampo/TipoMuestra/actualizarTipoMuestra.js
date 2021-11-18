/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
$(document).ready(function ($) {
    $("#update-tipomuestra-form").validate({
        rules: {
            textMueNombre: {
                required: true,
                minlength: 5,
                maxlength: 15
            },
            textMueEstado:{
                required: true
            }

        },
        messages: {
            textMueNombre: {
                required: "Por favor ingrese nombre del tipo de muestra",
                minlength: "Minimo 5 caracteres",
                maxlength: "Maximo 15 caracteres"
            },
            textMueEstado:{
                required: "Por favor seleccione un estado"
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

