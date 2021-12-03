/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
jQuery.validator.addMethod("letterswithspace", function(value, element) {
    return this.optional(element) || /^[a-z\s]+$/i.test(value);
}, "Solo letras");
/*
jQuery.validator.addMethod("letterswithspace1", function(value, element) {
    return this.optional(element) || /[^0-9]/g, ''.test(value);
}, "Solo Numeros");
*/

$(document).ready(function ($) {
    $("#update-procedimiento-form").validate({
        rules: {
            textMueNombre: {
                required: true,
                minlength: 5,
                maxlength: 20
            },
            textMueObservacion: {
                required: true,
                minlength: 4,
                maxlength: 25,
                letterswithspace : true
            },
            textMueDescripcion: {
                required: true,
                minlength: 4,
                maxlength: 50
            },
            textfkTipoMuestra:{
                required: true
            },
            textMueEstado:{
                required: true
            }

        },
        messages: {
            textMueNombre: {
                required: "Por favor ingrese nombre de la muestra",
                minlength: "Minimo 5 caracteres",
                maxlength: "Maximo 20 caracteres"
            },
            textMueObservacion: {
                required: "Por favor ingrese la observación",
                minlength: "Minimo 4 caracteres",
                maxlength: "Maximo 25 caracteres",
                letterswithspace: "Solo se permiten letras"
            },
            textMueDescripcion: {
                required: "Por favor ingrese la descripcion",
                minlength: "Minimo 4 caracteres",
                maxlength: "Maximo 50 caracteres" 
            },
            textfkTipoMuestra:{
                required: "Por favor seleccione un Tipo de muestra"
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

