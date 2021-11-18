/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package ModeloDAO;

import ModeloVO.TipoMuestraVO;
import Util.Conexion;
import Util.Crud;
import com.mysql.jdbc.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author Intel
 */
public class TipoMuestraDAO extends Conexion implements Crud {

    private java.sql.Connection conexion;
    private PreparedStatement puente;
    private ResultSet mensajero;

    //variables de tipo boolean mejor por defecto 
    private boolean operaciones = false;
    //operaciones de la BASE DE DATOS EN VARIABLE SQL
    private String sql;
    //inicializo las variables y las dejo vacias ESTAS SON VARIABLES DEL VO
    private String tipMueId = "", tipMueNombre = "", tipMueEstado = "";

    
    public TipoMuestraDAO(){}
    
    public TipoMuestraDAO(TipoMuestraVO tipmueVO) {
        super();

        //3. ME CONECTO A LA BASE DE DATOS    
        try {
            conexion = this.obtenerConexión();

            //4. TRAER AL DAO LOS DATOS DEL VO PARA HACER LAS OPERACIONES
            tipMueId = tipmueVO.getTipMueId();
            tipMueNombre = tipmueVO.getTipMueNombre();
            tipMueEstado = tipmueVO.getTipMueEstado();

        } catch (Exception e) {
            //5. CREAR EL LOGGER EXCEPCIÓN
            //excepcion optima se crearon 2 import COPIAR Y PEGAR EN TODOS
            //LOGG ES LA SECUENCIA COMPLETA DE TODO LO QUE PASA NS IMPRIME EL ERROR 
            Logger.getLogger(TipoMuestraDAO.class.getName()).log(Level.SEVERE, null, e);

        }
    }

    @Override
    public boolean agregarRegistro() {
        try {
            sql = "insert into tipo_muestra value(?,?,?)";
            //crear un puente para la conexion y envia la setencia sql 
            puente = conexion.prepareStatement(sql);
            ///envia atributos por set 
            puente.setString(1, tipMueId);
            puente.setString(2, tipMueNombre);
            puente.setString(3, tipMueEstado);

            //YA EJECUTO ESTO
            puente.executeUpdate();
            operaciones = true;

        } catch (SQLException e) {
            Logger.getLogger(TipoMuestraDAO.class.getName()).log(Level.SEVERE, null, e);
        } finally {
            try {
                this.cerrarConexión();

            } catch (SQLException e) {
                Logger.getLogger(TipoMuestraDAO.class.getName()).log(Level.SEVERE, null, e);
            }
        }
        return operaciones;
    }

    @Override
    public boolean actualizarRegistro() {

        try {

//UPDATE `tipo_muestra` SET `TIP_MUE_ESTADO` = 'ACTIVO', TIP_MUE_NOMBRE = 'granizoss ' WHERE `tipo_muestra`.`TIP_MUE_ID` = 7;
            sql = "UPDATE `tipo_muestra` SET `TIP_MUE_NOMBRE` = ?, TIP_MUE_ESTADO = ? WHERE `tipo_muestra`.`TIP_MUE_ID` = ?";
            //crear un puente para la conexion y envia la setencia sql 
            puente = conexion.prepareStatement(sql);
            ///envia atributos por set 
            puente.setString(1, tipMueNombre);
            puente.setString(2, tipMueEstado);
            puente.setString(3, tipMueId);

            //YA EJECUTO ESTO
            puente.executeUpdate();
            operaciones = true;

        } catch (SQLException e) {
            Logger.getLogger(TipoMuestraDAO.class.getName()).log(Level.SEVERE, null, e);
        } finally {
            try {
                this.cerrarConexión();

            } catch (SQLException e) {
                Logger.getLogger(TipoMuestraDAO.class.getName()).log(Level.SEVERE, null, e);
            }
        }
        return operaciones;
    }

    @Override
    public boolean eliminarRegistro() {

         try {
            sql = "UPDATE tipo_muestra set TIP_MUE_ESTADO=? WHERE TIP_MUE_ID=?";
            puente = conexion.prepareStatement(sql);
            puente.setString(1,tipMueEstado );
            puente.setString(2, tipMueId);
            puente.executeUpdate();
            operaciones = true;

        } catch (SQLException e) {
            Logger.getLogger(TipoMuestraDAO.class.getName()).log(Level.SEVERE, null, e);
        } finally {
            try {
                this.cerrarConexión();
            } catch (SQLException e) {
                Logger.getLogger(TipoMuestraDAO.class.getName()).log(Level.SEVERE, null, e);

            }
        }
        return operaciones;
    }

    //consultar solicitud (cargarlas todas)-----------------------------------------------------------------------------------------------
    public ArrayList<TipoMuestraVO> listar() {
        ArrayList<TipoMuestraVO> listaTipoMuestras = new ArrayList<>();
        try {
            conexion = this.obtenerConexión();
            sql = "select * from tipo_muestra WHERE  TIP_MUE_ESTADO='ACTIVO'";
            puente = conexion.prepareStatement(sql);
            mensajero = puente.executeQuery();

            while (mensajero.next()) {
                TipoMuestraVO tipmueVO = new TipoMuestraVO(mensajero.getString(1), mensajero.getString(2), mensajero.getString(3));

                listaTipoMuestras.add(tipmueVO);
            }
        } catch (Exception e) {
            Logger.getLogger(TipoMuestraDAO.class.getName()).log(Level.SEVERE, null, e);
        }
//        }finally{
//            try {
//                this.cerrarConexión();
//                
//            } catch (SQLException e) {
//             Logger.getLogger(VehiculoDAO.class.getName()).log(Level.SEVERE, null,e);
//            }
//        }
        return listaTipoMuestras;
    }
    //consultar tipo muestras por nombre en especifico(cargarlas todas)-----------------------------------------------------------------------------------------------

    public TipoMuestraVO consultarTipoMuestra(String nombre) {

        TipoMuestraVO tipmueVO = null;
        try {
            conexion = this.obtenerConexión();
            sql = "SELECT * FROM tipo_muestra where TIP_MUE_NOMBRE=?";
            puente = conexion.prepareStatement(sql);
            puente.setString(1, nombre);
            mensajero = puente.executeQuery();
            while (mensajero.next()) {

                tipmueVO = new TipoMuestraVO(mensajero.getString(1), mensajero.getString(2), mensajero.getString(3));
            }

        } catch (Exception e) {
            Logger.getLogger(TipoMuestraDAO.class.getName()).log(Level.SEVERE, null, e);
        }
//        finally{
//            try {
//                this.cerrarConexión();
//                
//            } catch (SQLException e) {
//             Logger.getLogger(ClienteDAO.class.getName()).log(Level.SEVERE, null,e);
//            }
//        }
        return tipmueVO;

    }

}
