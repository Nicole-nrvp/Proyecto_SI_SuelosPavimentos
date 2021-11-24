/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
$(document).ready(function ($) {
    $("#update-user-form").validate({
        rules: {
            txtNombre: {
                required: true,
                minlength: 3
            },
            txtCorreo: {
                required: true,
                minlength: 3,
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
                minlength: "Minimo 3 caracteres"
            },
            txtCorreo: {
                required: "Por favor ingrese su correo",
                minlength: "Minimo 3 caracteres",
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


