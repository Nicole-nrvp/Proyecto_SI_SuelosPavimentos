/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
jQuery.validator.addMethod("letterswithspace", function(value, element) {
    return this.optional(element) || /^[a-z\s]+$/i.test(value);
}, "Solo letras");
$(document).ready(function ($) {

    $("#register-form").validate({
        rules: {
            txtFunNombre: {
                required: true,
                minlength: 3,
                maxlength: 20,
                letterswithspace:true
            },
            txtApellido: {
                required: true,
                minlength: 3,
                maxlength: 20,
                letterswithspace:true 
            },
            txtCelular: {
                required: true,
                minlength: 6,
                maxlength: 20 
            },
            txtDoc: {
                required: true,
                minlength: 4,
                maxlength: 20 
            },
            txtCorreo: {
                required: true,
                email: true,
                minlength: 4,
                maxlength: 30 
            },
            txtDireccion: {
                required: true,                
                minlength: 4,
                maxlength: 20 
            },
            txtSexo: {
                required: true,
                maxlength: 20                
                
            }

        },
        messages: {
            txtFunNombre: {
                required: "Por favor ingrese su nombre",
                minlength: "Minimo 3 caracteres",
                minlength: "Maximo 20 caracteres",
                letterswithspace: "Solo se admiten letras"
            },
            txtApellido: {
                required: "Por favor ingrese su apellido",
                minlength: "Minimo 3 caracteres",
                minlength: "Maximo 20 caracteres",
                letterswithspace: "Solo se admiten letras"
            },
            txtCelular: {
                required: "Por favor ingrese su numero de telefono",
                minlength: "Minimo 6 numeros"
            },
            txtDoc: {
                required: "Por favor ingrese su numero de documento",
                minlength: "Minimo 4 caracteres"
            },
            txtCorreo: {
                required: "Por favor ingrese su correo",
                minlength: "Minimo 4 caracteres",
                email: "Tiene que ser de tipo email empl: ejemplo@gmail.com"
            },
            txtDireccion: {
                required: "Por favor ingrese su direccion",
                minlength: "Minimo 4 caracteres"
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
