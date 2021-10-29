<%-- 
    Document   : consultarVehiculo
    Created on : 14/05/2021, 08:45:44 AM
    Author     : Andrés
--%>

<%@page import="ModeloDAO.FuncionarioDAO"%>
<%@page import="ModeloVO.FuncionarioVO"%>
<%@page import="ModeloVO.UsuarioVO"%>
<%@page import="java.util.ArrayList"%>
<%@page import="ModeloDAO.UsuarioDAO"%>
<%@page import="ModeloVO.RolVO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="sesiones.jsp" %>
<!DOCTYPE html>
<html>
    <head>
        
  <!-- Template Main CSS File -->
  <link href="assets/css/estiloIndex.css" rel="stylesheet" type="text/css"/>
  <link rel="shortcut icon" href="assets/img/icon/icono.png">
        <meta charset="UTF-8">
        <title>Terre | Funcionario</title>
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
            width: 900px;
            border-radius: 8px;
            padding:10px;
            background-color: white;
            box-shadow: 0px 0px 10px 1px gray;
            height:580px;
        }


    </style>
    <body >  
    <center>
        <br>
        <br>
        <br>
        <div class="Ctabla"><br>
            <table class="table display AllDataTables table-striped table-responsive">
                <thead>
                    <tr>
                        <th>Nick</th>
                        <th>Nombre</th>
                        <th>Apellido</th>
                        <th>Documento</th>
                        <th>Celular</th>
                        <th>Sexo</th>
                        <th>Puesto</th>                                    
                        <th>Gestion</th>
                    </tr>
                </thead>

                <tbody>

                    <%                        String sexo = "";
                        FuncionarioVO funVO = new FuncionarioVO();
                        FuncionarioDAO funDAO = new FuncionarioDAO(funVO);
                        ArrayList<FuncionarioVO> ListarUsuario = funDAO.listar();

                        for (int i = 0; i < ListarUsuario.size(); i++) {

                            funVO = ListarUsuario.get(i);

                            if (funVO.getFunSexo().equals("1")) {
                                sexo = "Hombre";
                            } else {
                                sexo = "Mujer";
                            }

                    %>

                    <tr>
                        <!--update muestra set MUE_NOMBRE=?, MUE_OBSERVARCION=?,
                        MUE_DESCRIPCION=?, FK_tipo_muestra=?, MUE_ESTADO=? where
                        MUE_ID=? AND MUE_ESTADO='ACTIVO'-->

                        <td><%=funVO.getFunCorreo()%></td>
                        <td><%=funVO.getFunNombre()%></td>
                        <td><%=funVO.getFunApellido()%></td>
                        <td><%=funVO.getFunDoc()%></td>
                        <td><%=funVO.getFunCelular()%></td>
                        <td><%=sexo%></td>
                        <td><%=funVO.getFunPuesto()%></td>
                        <td>
                            <div class="iconos">
                                <form method="post" action="Usuario">                             

                                    <input type="hidden" placeholder="Nombre"  name="txtFunId" value="<%=funVO.getFunId()%>">
                                    <input type="hidden" id="opcion" name="opcion" value="5">
                                    <button type="submit" id="boton" class="submit-btna"><i class="frm-iconoa fas fa-edit"></i></button> 
                                </form>  
                                <form method="POST" action="Usuario" id="delete">        

                                    <div class="frm-g-input">
                                        <input type="hidden" name="txtFunId" value="<%=funVO.getFunId()%>">
                                        <input type="hidden" name="textId" value="<%=funVO.getFunEstado()%>">
                                        <input type="hidden" placeholder="Nombre"  name="txtEstado" value="INACTIVO">
                                        <input type="hidden" id="opcion" name="opcion" value="7">
                                        <button type="submit" id="boton" class="submit-btnd"><i class="frm-iconod fas fa-trash-alt"></i></button> 
                                    </div>
                                </form>  
                            </div>             
                        </td>


                    </tr>
                    <%}%>
                <script src="assets/js/validar.js" type="text/javascript"></script>

                </tbody>

                <tfoot>
                    <tr>
                        <th>Nick</th>
                        <th>Nombre</th>
                        <th>Apellido</th>
                        <th>Documento</th>
                        <th>Celular</th>
                        <th>Sexo</th>
                        <th>Puesto</th>                                    
                        <th>Gestion</th>
                    </tr>    
                </tfoot>



            </table>
            <a href="Menu.jsp"><input type="submit" value="Volver" name="Volver"></a>


        </div>



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
</body>
</html>