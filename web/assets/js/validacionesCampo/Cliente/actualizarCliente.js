/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
jQuery.validator.addMethod("letterswithspace", function(value, element) {
    return this.optional(element) || /^[a-z\s]+$/i.test(value);
}, "Solo letras");

$(document).ready(function ($) {
    $("#update-cliente-form").validate({
        rules: {
            textCliNombre: {
                required: true,
                minlength: 4,
                maxlength: 15,
                letterswithspace : true
            },
            textCliApellido: {
                required: true,
                minlength: 4,
                maxlength: 15,
                letterswithspace : true
            },
            textCliCorreo:{
                required: true,
                email: true,
                maxlength: 20
                
            },
            textCliCelular:{
                required: true,
                minlength: 7,
                maxlength: 10
            },
            textCliEstado:{
                required: true
            }

        },
        messages: {
            textCliNombre: {
                required: "Por favor ingrese el nombre del cliente",
                minlength: "Minimo 4 caracteres",
                maxlength: "Maximo 15 caracteres",
                letterswithspace: "Solo se admiten letras"
            },
            textCliApellido: {
                required: "Por favor ingrese el apellido del cliente",
                minlength: "Minimo 4 caracteres",
                maxlength: "Maximo 15 caracteres",
                letterswithspace: "Solo se admiten letras"
            },
            textCliCorreo: {
                required: "Por favor ingrese correo electronico",
                maxlength: "Maximo 20 caracteres",
                email: "Tiene que ser de tipo email empl: ejemplo@gmail.com"
                
            },
            textCliCelular: {
                required: "Por favor ingrese nombre de la muestra",
                minlength: "Minimo 7 números para fijo",
                maxlength: "Maximo 10 números para celular"
            },
            textCliEstado:{
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

