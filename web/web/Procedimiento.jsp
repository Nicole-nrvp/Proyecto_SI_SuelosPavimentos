<%-- 
    Document   : Procedimiento
    Created on : 31-jul-2021, 22:38:40
    Author     : laura
--%>

<%@page import="ModeloVO.ProcedimientoVO"%>
<%@page import="ModeloDAO.ProcedimientoDAO"%>
<!DOCTYPE html>
    <html lang="es">
<head>
            <!-- Template Main CSS File -->
        <link href="assets/css/estiloIndex.css" rel="stylesheet" type="text/css"/>
        <link rel="shortcut icon" href="assets/img/icon/icono.png">
        <meta charset="UTF-8">
        <title>Terre | Procedimieno</title>
        <script src="//cdn.jsdelivr.net/npm/sweetalert2@11"></script>
        <link href="assets/css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
        <link href="assets/css/dataTables.bootstrap.min.css" rel="stylesheet" type="text/css"/>
        <link href="assets/css/dataTables.bootstrap.min.css" rel="stylesheet" type="text/css"/>
        <script src="https://kit.fontawesome.com/3e6c6f30bb.js" crossorigin="anonymous"></script>
        <link href="assets/css/iconos.css" rel="stylesheet" type="text/css"/>
</head>
<div class="capa"></div>
<style>

        .Ctabla{
            width: 1100px;
            border-radius: 8px;
            padding:10px;
            background-color: white;
            box-shadow: 0px 0px 10px 1px gray;
            height:580px;
            font-size: 12px;
        }


    </style>
    <body>

    <center>
        <br>
        <br>
        <br>
        <div class="Ctabla"><br>
            <table style="font-size: 12px;" class="table display AllDataTables table-striped table-responsive">
             <thead>
            <%-- <i class="fas fa-arrow-left"></i>
             
                <from method="post" action="PruebaControlador">
                    <button type="submit" id="boton" class="submit-btna"><i class="fas fa-arrow-right"></i></button>
                    <input type="hidden" value="1" name="opcion">
                </from>
            --%>
                    <tr>  
                        <a href="RegistrarProcedimiento.jsp" class="">
                        <i class=""></i> Registrar Procedimiento
                        </a>
               
             <tr>

            <th>Id</th>
            <th>Nombre</th>
            <th>Estado</th>
            <th>Inactivar</th>
                
        </tr> 
            </thead>
            <tbody>
   
             <%
           
            ProcedimientoDAO proDAO = new ProcedimientoDAO();
           
           
                     for (ProcedimientoVO elem : proDAO.Listar()) {
                   
                      
             %>

        <tr>
                       
                            <td><%=elem.getPRO_ID()%></td>
                            <td><%=elem.getPRO_NOMBRE()%></td>
                            <td><%=elem.getPRO_ESTADO()%></td>
                       <%--     <div class="iconos">
                                <form method="post" action="ProcedimientoControlador">
                                    <input type="hidden" name="Nombre" value="<%=elem.getPRO_NOMBRE()%>">

                                    <button type="submit" id="boton" class="submit-btna"><i class="frm-iconoa fas fa-edit"></i></button>
                                    <!--<button type="submit" id="boton" class="submit-btnd"><i class="fas fa-edit"></i></button> -->
                                    <input type="hidden" value="3" name="opciones">     
                                </form>
                            </div> --%>
                        <td>
                           <div class="iconos">
                                <form method="post" action="ProcedimientoControlador">                                    <!--<div class="inputs">-->

                                   <button type="button" class="submit-btnd" id="boton" onclick="ConfirmDisable(<%=elem.getPRO_ID()%>)"><i class="frm-iconod fas fa-trash-alt"></i> </button>
                                </form>
                            </div>


                    </tr>
                    <%}%>
                 <script src="assets/js/validar.js" type="text/javascript"></script>


                </tbody>

                <tfoot>
                  
                    <tr>
                        
                        
                        <th></th>
                        <th></th>
                        <th></th>
                        <th></th>
                    </tr>    
                </tfoot>

            </table>
           <a href="Menu.jsp"><input type="submit" value="Volver" name="Volver"></a>


        </div>
        <!--REPORTE DE SOLICITUDES -->

        
        <br>


    </center>
    <script src="assets/js/jquery-3.2.1.min.js" type="text/javascript"></script>

    <script src="assets/js/bootstrap.min.js" type="text/javascript"></script>

    <script src="assets/js/jquery.dataTables.min.js" type="text/javascript"></script>

    <script src="assets/js/dataTables.bootstrap.min.js" type="text/javascript"></script>
    <script>
        $(document).ready(function () {
            $('.AllDataTables').DataTable({
                language: {
                    "sProcessing": "Procesando...",
                    "sLengthMenu": "Mostrar _MENU_ registros",
                    "sZeroRecords": "No se encontraron resultados",
                    "sEmptyTable": "Ningún dato disponible en esta tabla",
                    "sInfo": "Mostrando registros del _START_ al _END_ de un total de _TOTAL_ registros",
                    "sInfoEmpty": "Mostrando registros del 0 al 0 de un total de 0 registros",
                    "sInfoFiltered": "(filtrado de un total de _MAX_ registros)",
                    "sInfoPostFix": "",
                    "sSearch": "Buscar:",
                    "sUrl": "",
                    "sInfoThousands": ",",
                    "sLoadingRecords": "Cargando...",
                    "oPaginate": {
                        "sFirst": "Primero",
                        "sLast": "Último",
                        "sNext": "Siguiente",
                        "sPrevious": "Anterior"
                    },
                    "oAria": {
                        "sSortAscending": ": Activar para ordenar la columna de manera ascendente",
                        "sSortDescending": ": Activar para ordenar la columna de manera descendente"
                    }
                }
            });
        });

    </script>
     <script src="//cdn.jsdelivr.net/npm/sweetalert2@11"></script>
   <script>
       function ConfirmDisable(id){
            Swal.fire({
             title: 'Esta seguro?',
             text: "No podrá revertir está acción!",
             icon: 'warning',
             showCancelButton: true,
             reverseButtons: true,
             confirmButtonColor: '#3085d6',
             confirmButtonText: 'Si, Inactivar!',
             cancelButtonColor: '#d33',
             cancelButtonText: 'Cancelar',
           }).then((result) => {
             if (result.isConfirmed) {
                 window.location.href = "ProcedimientoControlador?Id="+id+"&opciones=4";
             }
           })
      }
      <% if(request.getParameter("result")!=null){%>
      
          if(<%=request.getParameter("result")%>==1){
          Swal.fire(
            'Borrado!',
            'El registro No. '+<%=request.getParameter("id")%>+' fue inactivado.',
            'success'
                )
            }else{
                Swal.fire(
                  'Error!',
            'El registro No. '+<%=request.getParameter("id")%>+'No se pudo inactivar.',
            'success'
                )
            }
       
       <%}%>
      
     
    </script> 
            <div style="color: red;">
            <%
                if (request.getAttribute("mensajeError") != null) {  %>           
            ${mensajeError}
            <%} else {%>
            ${mensajeExito}
            <% }%>
            </div>
    
    

                             

</body>
</html>

