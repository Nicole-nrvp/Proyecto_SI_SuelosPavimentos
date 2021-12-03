/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
jQuery.validator.addMethod("letterswithspace", function(value, element) {
    return this.optional(element) || /^[a-z\s]+$/i.test(value);
}, "Solo letras");
 
$(document).ready(function ($) {
    $("#update-funcionario-form").validate({
        rules: {
            txtFunNombre: {
                required: true,                
                minlength: 3,
                maxlength: 20,
                letterswithspace: true
                
            },
            txtApellido: {
                required: true,                
                minlength: 3,
                maxlength: 20,
                letterswithspace: true
                
            },
            txtDireccion: {
                required: true,
                minlength: 3,
                maxlength: 30
                
            },
            txtCorreo: {
                required: true,
                minlength: 3,
                maxlength: 30,
                email: true
            },
            txtPuesto: {
               required: true
                
            },
            txtFechaNacimiento: {
               required: true
              
                
            }

        },
        messages: {
            txtFunNombre: {
                required: "Por favor ingrese su nombre",
                minlength: "Minimo 3 caracteres",
                maxlength: "Maximo 20 caracteres",
                letterswithspace: "Ponga solo letras"
            },
            txtApellido: {
                required: "Por favor ingrese su apellido",
                minlength: "Minimo 3 caracteres",
                maxlength: "Maximo 20 caracteres",
                letterswithspace: "Ponga solo letras"
            },
            txtDireccion: {
                required: "Por favor ingrese su direccion",
                minlength: "Minimo 3 caracteres",
                maxlength: "Maximo 30 caracteres"
            },
            txtCorreo: {
                required: "Por favor ingrese su direccion",
                minlength: "Minimo 3 caracteres",
                maxlength: "Maximo 30 caracteres",
                email: "Tiene que ser de tipo email empl: ejemplo@gmail.com"
            },
            txtCelular: {
                required: "Por favor ingrese su telefono",
                minlength: "Minimo 3 caracteres",
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


