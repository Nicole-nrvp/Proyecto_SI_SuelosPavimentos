<%-- 
    Document   : Index
    Created on : 5/09/2021, 05:37:40 PM
    Author     : Valentina
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="utf-8">
  <meta content="width=device-width, initial-scale=1.0" name="viewport">

  <title>TERRE | Inicio</title>
  <meta content="" name="description">
  <meta content="" name="keywords">

  <!-- Favicons 
  <link href="assets/img/favicon.png" rel="icon">
  <link href="assets/img/apple-touch-icon.png" rel="apple-touch-icon">-->

  <!-- Google Fonts -->
  <link href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i|Raleway:300,300i,400,400i,500,500i,600,600i,700,700i|Poppins:300,300i,400,400i,500,500i,600,600i,700,700i" rel="stylesheet">

  <!-- Vendor CSS Files -->
  <link href="assets/vendor/animate.css/animate.min.css" rel="stylesheet">
  <link href="assets/vendor/aos/aos.css" rel="stylesheet">
  <link href="assets/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
  <link href="assets/vendor/bootstrap-icons/bootstrap-icons.css" rel="stylesheet">
  <link href="assets/vendor/boxicons/css/boxicons.min.css" rel="stylesheet">
  <link href="assets/vendor/glightbox/css/glightbox.min.css" rel="stylesheet">
  <link href="assets/vendor/remixicon/remixicon.css" rel="stylesheet">
  <link href="assets/vendor/swiper/swiper-bundle.min.css" rel="stylesheet">
   <script src="https://kit.fontawesome.com/f1cc3a05a9.js" crossorigin="anonymous"></script>

  <!-- Template Main CSS File -->
  <link href="assets/css/estiloIndex.css" rel="stylesheet" type="text/css"/>
  <link rel="shortcut icon" href="assets/img/icon/icono.png">
  <!-- =======================================================
  * Template Name: Selecao - v4.3.0
  * Template URL: https://bootstrapmade.com/selecao-bootstrap-template/
  * Author: BootstrapMade.com
  * License: https://bootstrapmade.com/license/
  ======================================================== -->
</head>

<body>

  <!-- ======= Header ======= -->
  <header id="header" class="fixed-top d-flex align-items-center  header-transparent ">
    <div class="container d-flex align-items-center justify-content-between">

      <div class="logo">
        <h1><a href="PaginaPrincipal.jsp"><img src="assets/img/icon/TERRE.png" alt="TERRE"></a></h1>
        <!-- Uncomment below if you prefer to use an image logo -->
        <!-- <a href="index.html"><img src="assets/img/logo.png" alt="" class="img-fluid"></a>-->
      </div>

      <nav id="navbar" class="navbar">
        <ul>
          <li><a class="nav-link scrollto active" href="#hero">Inicio</a></li>
          <li><a class="nav-link scrollto" href="#about">Terre</a></li>
          <li><a class="nav-link scrollto" href="#services">Módulos</a></li>
          <li><a class="nav-link scrollto " href="#features">Funcionalidades</a></li>
          <li><a class="nav-link scrollto " href="#faq">Ventajas</a></li>
          <li><a class="nav-link scrollto " href="#team">Equipo</a></li>
          <!--<li class="dropdown"><a href="#"><span>Otros</span> <i class="bi bi-chevron-down"></i></a>
            <ul>
              <li><a href="#">Misión</a></li>
              <li><a href="#">Visión</a></li>
              <li><a href="#">Diccionario de Datos</a></li>
            </ul>
          </li>-->
          <li><a class="nav-link scrollto" href="#contact">Contacto</a></li>
          <li><a class="nav-link scrollto active" href="Login.jsp">Iniciar Sesión</a></li>
        </ul>
        <i class="bi bi-list mobile-nav-toggle"></i>
      </nav><!-- .navbar -->

    </div>
  </header><!-- End Header -->

  <!-- ======= Hero Section ======= -->
  <section id="hero" class="d-flex flex-column justify-content-end align-items-center">
    <div id="heroCarousel" data-bs-interval="5000" class="container carousel carousel-fade" data-bs-ride="carousel">

        <!-- Slide 1 -->
      <div class="carousel-item active">
        <div class="carousel-container">
          <h2 class="animate__animated animate__fadeInDown">Bievenid@ a <span>Terre</span></h2>
          <p class="animate__animated fanimate__adeInUp">Somos un equipo de diseñadores talentosos que ayudan a mejorar los procesos en tu empresa.</p>
          <a href="#about" class="btn-get-started animate__animated animate__fadeInUp scrollto">Saber Más</a>
        </div>
      </div>

      <!-- Slide 2 -->
      <div class="carousel-item">
        <div class="carousel-container">
          <h2 class="animate__animated animate__fadeInDown">TERRE</h2>
          <p class="animate__animated animate__fadeInUp"> Es un sistema de información para el control de datos para empresas que estudian de suelos.</p>
          <a href="#about" class="btn-get-started animate__animated animate__fadeInUp scrollto">Saber Más</a>
        </div>
      </div>

      <!-- Slide 3 -->
      <div class="carousel-item">
        <div class="carousel-container">
          <h2 class="animate__animated animate__fadeInDown">Bievenid@ a Terre</h2>
          <p class="animate__animated animate__fadeInUp">Somos un equipo de diseñadores talentosos que ayudan a mejorar los procesos en tu empresa.</p>
          <a href="#about" class="btn-get-started animate__animated animate__fadeInUp scrollto">Saber Más</a>
        </div>
      </div>

      <a class="carousel-control-prev" href="#heroCarousel" role="button" data-bs-slide="prev">
        <span class="carousel-control-prev-icon bx bx-chevron-left" aria-hidden="true"></span>
      </a>

      <a class="carousel-control-next" href="#heroCarousel" role="button" data-bs-slide="next">
        <span class="carousel-control-next-icon bx bx-chevron-right" aria-hidden="true"></span>
      </a>

    </div>

    <svg class="hero-waves" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" viewBox="0 24 150 28 " preserveAspectRatio="none">
      <defs>
        <path id="wave-path" d="M-160 44c30 0 58-18 88-18s 58 18 88 18 58-18 88-18 58 18 88 18 v44h-352z">
      </defs>
      <g class="wave1">
        <use xlink:href="#wave-path" x="50" y="3" fill="rgba(255,255,255, .1)">
      </g>
      <g class="wave2">
        <use xlink:href="#wave-path" x="50" y="0" fill="rgba(255,255,255, .2)">
      </g>
      <g class="wave3">
        <use xlink:href="#wave-path" x="50" y="9" fill="#fff">
      </g>
    </svg>

  </section><!-- End Hero -->

  <main id="main">

    <!-- ======= About Section ======= -->
    <section id="about" class="about">
      <div class="container">

        <div class="section-title" data-aos="zoom-out">
          <h2>Acerca de</h2>
          <p>Terre</p>
        </div>

        <div class="row content" data-aos="fade-up">
          <div class="col-lg-6">
            <p>
              Es un sistema para almacenar y controlar datos orientado a la tecnología, la innovación y el emprendimiento.
            </p>
            <ul>
              <li><i class="ri-check-double-line"></i> Expertos en diseño web y entrenados en desarrollo web para la industria digital. </li>
              <li><i class="ri-check-double-line"></i> Ofrecemos un servicio personalizado, cumpliendo con los objetivos perzonalizados.</li>
              <li><i class="ri-check-double-line"></i> Nuestro foco esta en los objetivos y visión de mejora continua.</li>
            </ul>
          </div>
          <div class="col-lg-6 pt-4 pt-lg-0">
            <p>
              Terre es software diseño para agilizar las tareas en su empresa, en el área de laboratorio de ensayos para suelos y pavimentos
            </p>
            <a href="#" class="btn-learn-more">Seguir</a>
          </div>
        </div>

      </div>
    </section><!-- End About Section -->

    <!-- ======= Services Section ======= -->
    <section id="services" class="services">
      <div class="container">

        <div class="section-title" data-aos="zoom-out">
          <h2>Módulos</h2>
          <p>Que Ofrece Terre</p>
        </div>

        <div class="row">
          <div class="col-lg-4 col-md-6">
            <div class="icon-box" data-aos="zoom-in-left">
              <div class="icon"><i class="bi bi-briefcase" style="color: #ff689b;"></i></div>
              <h4 class="title"><a href="">Laboratorios y muestras</a></h4>
              <p class="description">Gestion del ingreso de la muestra a la empresa y todo el proceso que se le realizan mediante las pruebas de laboratorio.</p>
            </div>
          </div>
          <div class="col-lg-4 col-md-6 mt-5 mt-md-0">
            <div class="icon-box" data-aos="zoom-in-left" data-aos-delay="100">
              <div class="icon"><i class="bi bi-book" style="color: #e9bf06;"></i></div>
              <h4 class="title"><a href="">Gestión de Usuarios</a></h4>
              <p class="description">Se almacena la información de los diferentes usuarios que son parte activa del sistema.</p>
            </div>
          </div>

          <div class="col-lg-4 col-md-6 mt-5 mt-lg-0 ">
            <div class="icon-box" data-aos="zoom-in-left" data-aos-delay="200">
              <div class="icon"><i class="bi bi-card-checklist" style="color: #3fcdc7;"></i></div>
              <h4 class="title"><a href="">Diccionario de Datos</a></h4>
              <p class="description">Cuenta con todos los terminos necesarios relacionados con el estudio de suelos y derivados para el trabajador.</p>
            </div>
          </div>
        </div>

      </div>
    </section><!-- End Services Section -->
    
    <!-- ======= Cta Section ======= -->
    <section id="cta" class="cta">
      <div class="container">

        <div class="row" data-aos="zoom-out">
          <div class="col-lg-9 text-center text-lg-start">
            <h3>LA ACCIÓN ES AHORA</h3>
            <p> EN TERRE DESARROLLAMOS SOFTWARE Y ESTO NOS APASIONA. CONVERTIMOS TU IDEA EN UN WEBSITE, UN SOFTWARE DE COMPUTADOR, ETC.</p>
          </div>
          <div class="col-lg-3 cta-btn-container text-center">
            <a class="cta-btn align-middle" href="#contact">LLAMAR </a>
          </div>
        </div>

      </div>
    </section><!-- End Cta Section -->

    
<!-- ======= Features Section ======= -->
<section id="features" class="features">
  <div class="container">
        <div class="section-title" data-aos="zoom-out">
          <h2>Funcionalidades</h2>
          <p>De Terre</p>
        </div>
    <ul class="nav nav-tabs row d-flex">
      <li class="nav-item col-3" data-aos="zoom-in">
        <a class="nav-link active show" data-bs-toggle="tab" href="#tab-1">
          <i class="far fa-file-pdf"></i>
          <h4 class="d-none d-lg-block">REPORTES</h4>
        </a>
      </li>
      <li class="nav-item col-3" data-aos="zoom-in" data-aos-delay="100">
        <a class="nav-link" data-bs-toggle="tab" href="#tab-2">
            <i class="fas fa-user-check"></i>
          <h4 class="d-none d-lg-block">AUTENTICACIÓN</h4>
        </a>
      </li>
      <li class="nav-item col-3" data-aos="zoom-in" data-aos-delay="200">
        <a class="nav-link" data-bs-toggle="tab" href="#tab-3">
            <i class="fas fa-chart-pie"></i>
          <h4 class="d-none d-lg-block">ESTADISTICAS</h4>
        </a>
      </li>
      <li class="nav-item col-3" data-aos="zoom-in" data-aos-delay="300">
        <a class="nav-link" data-bs-toggle="tab" href="#tab-4">
            <i class="fas fa-mail-bulk"></i>
          <h4 class="d-none d-lg-block">CORREOS</h4>
        </a>
      </li>
    </ul>

    <div class="tab-content" data-aos="fade-up">
      <div class="tab-pane active show" id="tab-1">
        <div class="row">
          <div class="col-lg-6 order-2 order-lg-1 mt-3 mt-lg-0">
            <h3>Los reportes en Terre se manejan reportes normales y reportes parametrizados para la gestión de laboratorio de ensayos.</h3>
           
            <ul>
              <li><i class="ri-check-double-line"></i> Muestra información objetiva.</li>
              <li><i class="ri-check-double-line"></i> La información puede llegar a ser límitada.</li>
              <li><i class="ri-check-double-line"></i> Muestra los resultados de un estudio de suelos.</li>
            </ul>
            
          </div>
          <div class="col-lg-6 order-1 order-lg-2 text-center">
            <img src="assets/img/funcionalidades/reportes.jpeg" alt="" class="img-fluid">
          </div>
        </div>
      </div>
      <div class="tab-pane" id="tab-2">
        <div class="row">
          <div class="col-lg-6 order-2 order-lg-1 mt-3 mt-lg-0">
            <h3>Contamos con las validaciones necesarias para la seguridad del sistema.</h3>
         
            <ul>
              <li><i class="ri-check-double-line"></i> En terre validamos los roles dentro del sistema</li>
              <li><i class="ri-check-double-line"></i> Manejamos la seguridad al l00% es coherente y totalmente funcional</li>
              <li><i class="ri-check-double-line"></i> Controlamos la entrada y salida de datos con ciertos filtros que hacen que el sistema</li>
            </ul>
          </div>
          <div class="col-lg-6 order-1 order-lg-2 text-center">
            <img src="assets/img/funcionalidades/autenticacion.jpeg" alt="" class="img-fluid">
          </div>
        </div>
      </div>
      <div class="tab-pane" id="tab-3">
        <div class="row">
          <div class="col-lg-6 order-2 order-lg-1 mt-3 mt-lg-0">
            <h3>Proporciona graficas de apoyo en tiempo real para el correcto seguimiento de las pruebas</h3>
          
            <ul>
              <li><i class="ri-check-double-line"></i> Favorece una método de trabajo sistemático.</li>
              <li><i class="ri-check-double-line"></i> Evita dar por válidas afirmaciones e ideas infundadas.</li>
              <li><i class="ri-check-double-line"></i> Permite argumentar decisiones encaminadas a conseguir mejoras basadas en evidencias y datos objetivos.</li>
              
            </ul>
            
          </div>
          <div class="col-lg-6 order-1 order-lg-2 text-center">
            <img src="assets/img/funcionalidades/estadisticas.jpeg" alt="" class="img-fluid">
          </div>
        </div>
      </div>
      <div class="tab-pane" id="tab-4">
        <div class="row">
          <div class="col-lg-6 order-2 order-lg-1 mt-3 mt-lg-0">
            <h3>En terre manejamos correos automáticos que ayudan al cliente tanto como a verificar sus datos y la comunicación que necesita para cualquier duda</h3>
           
            
            <ul>
              <li><i class="ri-check-double-line"></i> Con terre identificamos los usuario nuevos.</li>
              <li><i class="ri-check-double-line"></i> Con los correos verificamos los usuarios que quieren recuperar su contraseña.</li>
              <li><i class="ri-check-double-line"></i> Es una herramienta muy útil para promoción comercial a través del envío masivo de emails. </li>
            </ul>
          </div>
          <div class="col-lg-6 order-1 order-lg-2 text-center">
            <img src="assets/img/funcionalidades/correos-1.jpeg" alt="" class="img-fluid">
          </div>
        </div>
      </div>
    </div>

  </div>
</section><!-- End Features Section -->


<section id="faq" class="faq">
        <!-- ======= Services Section ======= -->
    <section id="services" class="services">
      <div class="container">

        <div class="section-title" data-aos="zoom-out">
          <h2>Ventajas</h2>
          <p>De Terre</p>
        </div>

        <div class="row">
          <div class="col-lg-4 col-md-6 d-flex align-items-stretch" data-aos="fade-up">
            <div class="icon-box">
              <div class="icon"></div>
              <h4 class=""><a href="">Agilidad</a></h4>
              <p>Es practico y sencillo de utilizar gracias a que cuenta con una interfaz amigable para el usuario.
              </p>
            </div>
          </div>

          <div class="col-lg-4 col-md-6 d-flex align-items-stretch mt-4 mt-md-0" data-aos="fade-up" data-aos-delay="150">
            <div class="icon-box">
              <div class="icon"></div>
              <h4><a href="">Eficiencia</a></h4>
              <p>Es eficiente a la hora de la organizacion de documentos ya que se encuentra muy bien seccionado.</p>
            </div>
          </div>

          <div class="col-lg-4 col-md-6 d-flex align-items-stretch mt-4 mt-lg-0" data-aos="fade-up" data-aos-delay="300">
            <div class="icon-box">
              <div class="icon"></i></div>
              <h4><a href="">Confianza</a></h4>
              <p>Menor riesgo de pedidas e incidentes en documentos </p>
            </div>
          </div>

          <div class="col-lg-4 col-md-6 d-flex align-items-stretch mt-4" data-aos="fade-up" data-aos-delay="450">
            <div class="icon-box">
              <div class="icon"></i></div>
              <h4><a href="">Estadisticas</a></h4>
              <p>Proporciona graficas de apoyo en tiempo real para el correcto seguimiento de las pruebas</p>
            </div>
          </div>

          <div class="col-lg-4 col-md-6 d-flex align-items-stretch mt-4" data-aos="fade-up" data-aos-delay="600">
            <div class="icon-box">
              <div class="icon"></i></div>
              <h4><a href="">Tiempo</a></h4>
              <p>Tiene disposición para adaptarse, crear y aprovecha el cambio en beneficio de sus clientes.</p>
            </div>
          </div>

          <div class="col-lg-4 col-md-6 d-flex align-items-stretch mt-4" data-aos="fade-up" data-aos-delay="750">
            <div class="icon-box">
              <div class="icon"></div>
              <h4><a href="">Rapido</a></h4>
              <p>Va a gran velocidad en moverse o desarrollarse.</p>
            </div>
          </div>

        </div>

      </div>
    </section><!-- End Services Section -->
    </section>

    <!-- ======= Team Section ======= -->
    <section id="team" class="team">
      <div class="container">

        <div class="section-title" data-aos="zoom-out">
          <h2>Equipo</h2>
          <p>Equipo de desarrollador </p>
        </div>

        <div class="row">
          <div class="col-lg-3 col-md-6 d-flex align-items-stretch">
            <div class="member" data-aos="fade-up">
              <div class="member-img">
                <img src="assets/img/team/mellany-5.jpeg" class="img-fluid"  alt="">
                <div class="social">
                  <a href=""><i class="bi bi-twitter"></i></a>
                  <a href=""><i class="bi bi-facebook"></i></a>
                  <a href=""><i class="bi bi-instagram"></i></a>
                  <a href=""><i class="bi bi-linkedin"></i></a>
                </div>
              </div>
              <div class="member-info">
                <h4>Mellany Herrera</h4>
                <span>Diseñadora de Back-End</span>
              </div>
            </div>
          </div>

          <div class="col-lg-3 col-md-6 d-flex align-items-stretch">
            <div class="member" data-aos="fade-up" data-aos-delay="100">
              <div class="member-img">
                <img src="assets/img/team/camilo.jpeg" class="img-fluid" alt="">
                <div class="social">
                  <a href=""><i class="bi bi-twitter"></i></a>
                  <a href=""><i class="bi bi-facebook"></i></a>
                  <a href=""><i class="bi bi-instagram"></i></a>
                  <a href=""><i class="bi bi-linkedin"></i></a>
                </div>
              </div>
              <div class="member-info">
                <h4>Camilo Blanquicet</h4>
                <span>Desarrollador</span>
              </div>
            </div>
          </div>

          <div class="col-lg-3 col-md-6 d-flex align-items-stretch">
            <div class="member" data-aos="fade-up" data-aos-delay="200">
              <div class="member-img">
                <img src="assets/img/team/nicol-4.png" class="img-fluid" alt="">
                <div class="social">
                  <a href=""><i class="bi bi-twitter"></i></a>
                  <a href=""><i class="bi bi-facebook"></i></a>
                  <a href=""><i class="bi bi-instagram"></i></a>
                  <a href=""><i class="bi bi-linkedin"></i></a>
                </div>
              </div>
              <div class="member-info">
                <h4>Nicole Romero</h4>
                <span>Manager del Proyecto</span>
              </div>
            </div>
          </div>

          <div class="col-lg-3 col-md-6 d-flex align-items-stretch">
            <div class="member" data-aos="fade-up" data-aos-delay="300">
              <div class="member-img">
                <img src="assets/img/team/viviana-4.jpeg" class="img-fluid" alt="">
                <div class="social">
                  <a href=""><i class="bi bi-twitter"></i></a>
                  <a href=""><i class="bi bi-facebook"></i></a>
                  <a href=""><i class="bi bi-instagram"></i></a>
                  <a href=""><i class="bi bi-linkedin"></i></a>
                </div>
              </div>
              <div class="member-info">
                <h4>Viviana Rosillo</h4>
                <span>Diseñadora Front-End</span>
              </div>
            </div>
          </div>

        </div>

      </div>
    </section><!-- End Team Section -->

    <!-- ======= Contact Section ======= -->
    <section id="contact" class="contact">
      <div class="container">

        <div class="section-title">
          <h2>CONTACTANOS</h2>
          <p>Resolvemos tus dudas</p>
        </div>

        <div class="row" data-aos="fade-up">
          <div class="col-lg-6">
            <div class="info-box mb-4">
              <i class="bx bx-map"></i>
              <h3>Bogotá - Colombia</h3>
              <p>Suba Calle 45 - 14d </p>
            </div>
          </div>

          <div class="col-lg-3 col-md-6">
            <div class="info-box  mb-4">
              <i class="bx bx-envelope"></i>
              <h3>Correo</h3>
              <p>terre@gmail.com</p>
            </div>
          </div>

          <div class="col-lg-3 col-md-6">
            <div class="info-box  mb-4">
              <i class="bx bx-phone-call"></i>
              <h3>Celular</h3>
              <p>+573145209916 </p>
            </div>
          </div>

        </div>

        <div class="row" data-aos="fade-up">

          <div class="col-lg-6 ">
              <iframe class="mb-4 mb-lg-0" src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d63621.897918624454!2d-74.11253123718132!3d4.705864868302617!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x8e3f84f5fc42083d%3A0x1c3e69805ddf166e!2sPortal%20Suba%20Transmilenio!5e0!3m2!1ses-419!2sco!4v1632343960209!5m2!1ses-419!2sco"frameborder="0" style="border:0; width: 100%; height: 384px;" allowfullscreen></iframe>
           <!-- <iframe class="mb-4 mb-lg-0" src="https://www.google.com/maps/embed?pb=!1m14!1m8!1m3!1d12097.433213460943!2d-74.0062269!3d40.7101282!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x0%3A0xb89d1fe6bc499443!2sDowntown+Conference+Center!5e0!3m2!1smk!2sbg!4v1539943755621" frameborder="0" style="border:0; width: 100%; height: 384px;" allowfullscreen></iframe>
          -->
           </div>

          <div class="col-lg-6">
            <form action="forms/contact.php" method="post" role="form" class="php-email-form">
              <div class="row">
                <div class="col-md-6 form-group">
                  <input type="text" name="name" class="form-control" id="name" placeholder="Nombre" required>
                </div>
                <div class="col-md-6 form-group mt-3 mt-md-0">
                  <input type="email" class="form-control" name="email" id="email" placeholder="Correo" required>
                </div>
              </div>
              <div class="form-group mt-3">
                <input type="text" class="form-control" name="subject" id="subject" placeholder="Asunto" required>
              </div>
              <div class="form-group mt-3">
                <textarea class="form-control" name="message" rows="5" placeholder="Mensaje" required></textarea>
              </div>
              <div class="my-3">
                <div class="loading">Cargando</div>
                <div class="error-message"></div>
                <div class="sent-message">Su mensaje ha sido enviado. Gracias!</div>
              </div>
              <div class="text-center"><button type="submit">Enviar Mensaje</button></div>
            </form>
          </div>

        </div>

      </div>
    </section><!-- End Contact Section -->

  </main><!-- End #main -->

  <!-- ======= Footer ======= -->
  <footer id="footer">
    <div class="container">
        <div class="footerF">
        <!--LOGOEN ELFOOTER -->
     <!-- <h3><img src="assets/img/icon/TERRE.png" alt="Terre" width="15%" style="text-align: right;"> </h3>-->
      <!--<p>“Si la oportunidad no llama, construye una puerta”.</p>
      <div class="social-links">
        <a href="#" class="twitter"><i class="bx bxl-twitter"></i></a>
        <a href="#" class="facebook"><i class="bx bxl-facebook"></i></a>
        <a href="#" class="instagram"><i class="bx bxl-instagram"></i></a>
        <a href="#" class="google-plus"><i class="bx bxl-skype"></i></a>
        <a href="#" class="linkedin"><i class="bx bxl-linkedin"></i></a>
      </div>-->
      
      <div class="copyright">
          <br>
          <p><img src="assets/img/icon/TERRE.png" align="left" alt="Terre" width="15%"> Copyright <strong><span>Terre</span></strong>. Reservados todos los derechos </p>
      
        
      </div>
      </div>
      <div class="credits">
        <!-- All the links in the footer should remain intact. -->
        <!-- You can delete the links only if you purchased the pro version. -->
        <!-- Licensing information: https://bootstrapmade.com/license/ -->
        <!-- Purchase the pro version with working PHP/AJAX contact form: https://bootstrapmade.com/selecao-bootstrap-template/ -->
        <%--Diseñado por <a href="https://bootstrapmade.com/">BootstrapMade</a>--%>
      </div>
    </div>
  </footer><!-- End Footer -->

  <a href="#" class="back-to-top d-flex align-items-center justify-content-center"><i class="bi bi-arrow-up-short"></i></a>

  <!-- Vendor JS Files -->
  <script src="assets/vendor/aos/aos.js"></script>
  <script src="assets/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
  <script src="assets/vendor/glightbox/js/glightbox.min.js"></script>
  <script src="assets/vendor/isotope-layout/isotope.pkgd.min.js"></script>
  <script src="assets/vendor/php-email-form/validate.js"></script>
  <script src="assets/vendor/swiper/swiper-bundle.min.js"></script>

  <!-- Template Main JS File -->
  <script src="assets/js/main.js"></script>

</body>

</html>
