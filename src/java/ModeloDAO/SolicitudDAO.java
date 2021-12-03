/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package ModeloDAO;

import ModeloVO.SolicitudVO;
import Util.Conexion;
import Util.Crud;
import java.sql.Connection;
import java.sql.*;
import java.util.ArrayList;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author Intel
 */
public class SolicitudDAO extends Conexion implements Crud {

//LOS DAO HEREDAN DE LA CLASE CONEXION DE BD////////// ARRIBA EN LA CLASE PRINCIPAL
    //1. DECLARAR VARIABLES U OBEJTOS////////////////////////////////////////////////
    //objetos SIEMPREEEEE
    private Connection conexion;
    private PreparedStatement puente;
    private ResultSet mensajero;

    //variables de tipo boolean mejor por defecto 
    private boolean operaciones = false;
    //operaciones de la BASE DE DATOS EN VARIABLE SQL
    private String sql;
    //inicializo las variables y las dejo vacias ESTAS SON VARIABLES DEL VO
    private String solId = "", solFechaInicio = "", solFechaFin = "", solNombre = "", clienteId = "", solEstado = "";

    public SolicitudDAO() {
    }

    public SolicitudDAO(SolicitudVO solVO) {
        //EL VO ES UNA SUPER CLASE
        super();

        //3. ME CONECTO A LA BASE DE DATOS    
        try {
            conexion = this.obtenerConexión();

            //4. TRAER AL DAO LOS DATOS DEL VO PARA HACER LAS OPERACIONES
            solId = solVO.getSolId();
            solFechaInicio = solVO.getSolFechaInicio();
            solFechaFin = solVO.getSolFechaFin();
            solNombre = solVO.getSolNombre();
            clienteId = solVO.getClienteId();
            solEstado = solVO.getSolEstado();

        } catch (Exception e) {
            //5. CREAR EL LOGGER EXCEPCIÓN
            //excepcion optima se crearon 2 import COPIAR Y PEGAR EN TODOS
            //LOGG ES LA SECUENCIA COMPLETA DE TODO LO QUE PASA NS IMPRIME EL ERROR 
            Logger.getLogger(SolicitudDAO.class.getName()).log(Level.SEVERE, null, e);

        }

    }

    @Override
    public boolean agregarRegistro() {
        try {
            sql = "insert into solicitud value(?,?,?,?,?,?)";
            //crear un puente para la conexion y envia la setencia sql 
            puente = conexion.prepareStatement(sql);
            ///envia atributos por set 
            puente.setString(1, solId);
            puente.setString(2, solFechaInicio);
            puente.setString(3, solFechaFin);
            puente.setString(4, solNombre);
            puente.setString(5, clienteId);
            puente.setString(6, solEstado);

            //YA EJECUTO ESTO
            puente.executeUpdate();
            operaciones = true;

        } catch (SQLException e) {
            Logger.getLogger(SolicitudDAO.class.getName()).log(Level.SEVERE, null, e);
        } finally {
            try {
                this.cerrarConexión();

            } catch (SQLException e) {
                Logger.getLogger(SolicitudDAO.class.getName()).log(Level.SEVERE, null, e);
            }
        }
        return operaciones;
    }

    @Override
    public boolean actualizarRegistro() {
       try {

//UPDATE `solicitud` SET `SOL_NOMBRE` = 'w' WHERE `solicitud`.`SOL_ID` = 1;
sql = "update solicitud set  SOL_NOMBRE=? where SOL_ID=?";
            //crear un puente para la conexion y envia la setencia sql 
            puente = conexion.prepareStatement(sql);
            ///envia atributos por set 
            puente.setString(1, solNombre);
            puente.setString(2, solId);

            //YA EJECUTO ESTO
            puente.executeUpdate();
            operaciones = true;

        } catch (SQLException e) {
            Logger.getLogger(SolicitudDAO.class.getName()).log(Level.SEVERE, null, e);
        } finally {
            try {
                this.cerrarConexión();

            } catch (SQLException e) {
                Logger.getLogger(SolicitudDAO.class.getName()).log(Level.SEVERE, null, e);
            }
        }
        return operaciones;
    }

    @Override
    public boolean eliminarRegistro() {
        try {
            sql = "UPDATE solicitud set SOL_ESTADO=? WHERE SOL_ID=?";
            puente = conexion.prepareStatement(sql);
            puente.setString(1,solEstado );
            puente.setString(2, solId);
            puente.executeUpdate();
            operaciones = true;

        } catch (SQLException e) {
            Logger.getLogger(SolicitudDAO.class.getName()).log(Level.SEVERE, null, e);
        } finally {
            try {
                this.cerrarConexión();
            } catch (SQLException e) {
                Logger.getLogger(SolicitudDAO.class.getName()).log(Level.SEVERE, null, e);

            }
        }
        return operaciones;
    }
    //consultar solicitud por nombre en especifico(cargarlas todas)-----------------------------------------------------------------------------------------------

    public SolicitudVO consultarSolicitud(String nombre) {

        SolicitudVO solVO = null;
        try {
            conexion = this.obtenerConexión();
            sql = "select * from solicitud where SOL_NOMBRE= ?";
            puente = conexion.prepareStatement(sql);
            puente.setString(1, nombre);
            mensajero = puente.executeQuery();
            while (mensajero.next()) {

                solVO = new SolicitudVO(mensajero.getString(1), mensajero.getString(2), mensajero.getString(3),
                        mensajero.getString(4), mensajero.getString(5), mensajero.getString(6));
            }

        } catch (Exception e) {
            Logger.getLogger(SolicitudDAO.class.getName()).log(Level.SEVERE, null, e);
        }
//        finally{
//            try {
//                this.cerrarConexión();
//                
//            } catch (SQLException e) {
//             Logger.getLogger(ClienteDAO.class.getName()).log(Level.SEVERE, null,e);
//            }
//        }
        return solVO;

    }

    public ArrayList<SolicitudVO> listar() {
        ArrayList<SolicitudVO> listaSolicitudes = new ArrayList<>();
        try {
            conexion = this.obtenerConexión();
            //sql = "SELECT solicitud.SOL_NOMBRE, solicitud.SOL_FECHA_INICIO, solicitud.SOL_FECHA_FIN, solicitud.SOL_ESTADO,  CLIENTE.CLI_NOMBRE, CLIENTE.CLI_APELLIDO FROM cliente INNER JOIN solicitud ON cliente.CLI_ID=solicitud.FK_cliente WHERE SOL_ESTADO='ACTIVO'";
            sql="select * from listarsolicitud";
            
//        sql="select * from solicitud";
            puente = conexion.prepareStatement(sql);
            mensajero = puente.executeQuery();

            while (mensajero.next()) {
                SolicitudVO solVO = new SolicitudVO(mensajero.getString(1), mensajero.getString(2), mensajero.getString(3),
                        mensajero.getString(4), mensajero.getString(5), mensajero.getString(6));

                listaSolicitudes.add(solVO);
            }
        } catch (Exception e) {
            Logger.getLogger(SolicitudDAO.class.getName()).log(Level.SEVERE, null, e);
        }
//        }finally{
//            try {
//                this.cerrarConexión();
//                
//            } catch (SQLException e) {
//             Logger.getLogger(VehiculoDAO.class.getName()).log(Level.SEVERE, null,e);
//            }
//        }
        return listaSolicitudes;
    }
      public ArrayList<SolicitudVO> lista() {
        ArrayList<SolicitudVO> listaSolicitudes1 = new ArrayList<>();
        try {
            conexion = this.obtenerConexión();
            //sql = "SELECT solicitud.SOL_NOMBRE, solicitud.SOL_FECHA_INICIO, solicitud.SOL_FECHA_FIN, solicitud.SOL_ESTADO,  CLIENTE.CLI_NOMBRE, CLIENTE.CLI_APELLIDO FROM cliente INNER JOIN solicitud ON cliente.CLI_ID=solicitud.FK_cliente WHERE SOL_ESTADO='ACTIVO'";
            sql="SELECT * from solicitud where SOL_ESTADO = 'ACTIVO'";
            
//        sql="select * from solicitud";
            puente = conexion.prepareStatement(sql);
            mensajero = puente.executeQuery();

            while (mensajero.next()) {
                SolicitudVO solVO = new SolicitudVO(mensajero.getString(1), mensajero.getString(2), mensajero.getString(3),
                        mensajero.getString(4), mensajero.getString(5), mensajero.getString(6));

                listaSolicitudes1.add(solVO);
            }
        } catch (Exception e) {
            Logger.getLogger(SolicitudDAO.class.getName()).log(Level.SEVERE, null, e);
        }
//        }finally{
//            try {
//                this.cerrarConexión();
//                
//            } catch (SQLException e) {
//             Logger.getLogger(VehiculoDAO.class.getName()).log(Level.SEVERE, null,e);
//            }
//        }
        return listaSolicitudes1;
    }
}



