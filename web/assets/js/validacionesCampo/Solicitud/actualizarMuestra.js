/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
$(document).ready(function ($) {
    $("#update-solicitud-form").validate({
        rules: {
            textMueNombre: {
                required: true,
                minlength: 5,
                maxlength: 15
            },
            textMueObservacion: {
                required: true,
                minlength: 4,
                maxlength: 20
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
                maxlength: "Maximo 15 caracteres"
            },
            textMueObservacion: {
                required: "Por favor ingrese la observación",
                minlength: "Minimo 4 caracteres",
                maxlength: "Maximo 20 caracteres"
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

