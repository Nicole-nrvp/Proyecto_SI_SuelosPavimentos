<%-- 
    Document   : IniciarSesion
    Created on : 19/06/2021, 08:31:55 PM
    Author     : Camilo
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<!DOCTYPE html>
<html lang="es">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>INICIO</title>
    <link href="assets/css/StyleLogin.css" rel="stylesheet" type="text/css"/>
</head>

<body>
    <div class="full-page">
        <div class="navbar">
            <div>
                <a href="index.html">Suelos y Pavimentos Gregorio Rojas</a>
            </div>
            <nav>
                <ul id="Menu">
                    <li><a href="#">Sobre Nosotros</a></li>
                    <li><a href="#">Servicios</a></li>
                    <li><a href="#">Contacto</a></li>
                    <li><button class="loginbtn" onclick="document.getElementById('login-form').style.display='block'" style="width: auto;">Ingresar</button>
                    </li>
                </ul>
            </nav>
        </div>
        <div id="login-form" class="login-page">
            <div class="form-box">
                <div class="button-box">
                    <div id="btn"></div>
                    <button type="button" onclick="login()" class="toggle-btn">Ingresar</button>
                    
                </div>
                <form id="login" class="input-group-login" method="post" action="Usuario">

                    <input type="email" class="input-field" placeholder="Ingresar Correo" name="txtCorreo" required>
                    <input type="password" class="input-field" placeholder="Ingresar Clave" name="txtClave" required>
                    
                    <input type="checkbox" class="check-box"><span>Acepto los terminos y condiciones</span>
                    
                    <button type="submit" class="submit-btn">Ingresar</button>
                    
                    <input type="hidden" id="opcion" name="opcion" value="1">
                    <%
                    if (request.getAttribute("MensajeError") != null) {  %>

                        <h2 id="Error">${mensajeError}</h2>
                        <%} else {%>
                            <h2 id="Error">${mensajeExito}</h2>
                            <% }%>

                </form>

                <form id="register" class="input-group-register" method="post" action="Usuario">
                    <input type="text" class="input-field" placeholder="Nombre" required>
                    <input type="text" class="input-field" placeholder="Apellido" required>
                    <input type="email" class="input-field" placeholder="Correo" required>
                    <input type="password" class="input-field" placeholder="Ingresar Clave" required>
                    <input type="password" class="input-field" placeholder="Confirmar Clave" required>
                    <input type="checkbox" class="check-box"><span>Accepto los terminos y condiciones</span>
                    <button type="submit" class="submit-btn">Registrar</button>
                    <input type="hidden" id="opcion" name="opcion" value="2">
                    
                </form>
            </div>
        </div>
    </div>

    <script>
        var x = document.getElementById('login');
        var y = document.getElementById('register');
        var z = document.getElementById('btn');

        function recuperar() {
            x.style.left = '-400px';
            y.style.left = '50px';
            z.style.left = '110px';
        }

        function login() {
            x.style.left = '50px';
            y.style.left = '450px';
            z.style.left = '0px';
        }
    </script>
    <script>
        var modal = document.getElementById('login-form');
        window.onclick = function(event) {
            if (event.target == modal) {
                modal.style.display = "none";
            }
        }
    </script>
</body>

</html>