/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
jQuery.validator.addMethod("letterswithspace", function(value, element) {
    return this.optional(element) || /^[a-z\s]+$/i.test(value);
}, "Solo letras");
 
$(document).ready(function ($) {
    $("#update-user-form").validate({
        rules: {
            txtNombre: {
                required: true,
                minlength: 3,
                maxlength: 20,                
                letterswithspace: true
            },
            txtCorreo: {
                required: true,
                minlength: 3,
                maxlength: 20,
                email: true
            },
            txtRolId: {
                required: true
                
                
            },
            txtRolId: {
                required: true
                
                
            }

        },
        messages: {
            txtNombre: {
                required: "Por favor ingrese su nombre",
                minlength: "Minimo 3 caracteres",
                maxlength: "Maximo 20 caracteres",
                 letterswithspace : "Solo se permiten letras"
            },
            txtCorreo: {
                required: "Por favor ingrese su correo",
                minlength: "Minimo 3 caracteres",
                maxlength: "Maximo 20 caracteres",
                email: "Tiene que ser de tipo email empl: ejemplo@gmail.com"
            },
            txtRolId: {
                required: "Por favor seleccione un rol"
                
                
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


