/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package ModeloDAO;

import ModeloVO.MuestraVO;
import Util.Conexion;
import Util.Crud;
import java.sql.Connection;
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
public class MuestraDAO extends Conexion implements Crud {

    private Connection conexion;
    private PreparedStatement puente;
    private ResultSet mensajero;

    //variables de tipo boolean mejor por defecto 
    private boolean operaciones = false;
    //operaciones de la BASE DE DATOS EN VARIABLE SQL
    private String sql;
    //inicializo las variables y las dejo vacias ESTAS SON VARIABLES DEL VO
    private String mueId = "", mueNombre = "", mueObservacion = "", mueDescripcion = "", fkTipoMuestra = "", mueEstado = "";

    public MuestraDAO(MuestraVO mueVO) {
        super();

        //3. ME CONECTO A LA BASE DE DATOS    
        try {
            conexion = this.obtenerConexión();

            //4. TRAER AL DAO LOS DATOS DEL VO PARA HACER LAS OPERACIONES
            mueId = mueVO.getMueId();
            mueNombre = mueVO.getMueNombre();
            mueObservacion = mueVO.getMueObservacion();
            mueDescripcion = mueVO.getMueDescripcion();
            fkTipoMuestra = mueVO.getFkTipoMuestra();
            mueEstado = mueVO.getMueEstado();

        } catch (Exception e) {
            //5. CREAR EL LOGGER EXCEPCIÓN
            //excepcion optima se crearon 2 import COPIAR Y PEGAR EN TODOS
            //LOGG ES LA SECUENCIA COMPLETA DE TODO LO QUE PASA NS IMPRIME EL ERROR 
            Logger.getLogger(MuestraDAO.class.getName()).log(Level.SEVERE, null, e);

        }

    }

    @Override
    public boolean agregarRegistro() {
        try {
            sql = "insert into muestra value(?,?,?,?,?,?)";
            //crear un puente para la conexion y envia la setencia sql 
            puente = conexion.prepareStatement(sql);
            ///envia atributos por set 
            puente.setString(1, mueId);
            puente.setString(2, mueNombre);
            puente.setString(3, mueObservacion);
            puente.setString(4, mueDescripcion);
            puente.setString(5, fkTipoMuestra);
            puente.setString(6, mueEstado);

            //YA EJECUTO ESTO
            puente.executeUpdate();
            operaciones = true;

        } catch (SQLException e) {
            Logger.getLogger(MuestraDAO.class.getName()).log(Level.SEVERE, null, e);
        } finally {
            try {
                this.cerrarConexión();

            } catch (SQLException e) {
                Logger.getLogger(MuestraDAO.class.getName()).log(Level.SEVERE, null, e);
            }
        }
        return operaciones;
    }

    @Override
    public boolean actualizarRegistro() {
        try {
//UPDATE vehiculo SET VEHMODELO=2030, VEHMARCA='TOYOTA', VEHESTADO='NUEVO', VEHPRECIO= 1000000 WHERE VEHPLACA='WWW123'
            sql = "update muestra set MUE_NOMBRE=?, MUE_OBSERVARCION=?, MUE_DESCRIPCION=?  where MUE_ID=? ";
            //crear un puente para la conexion y envia la setencia sql 
            puente = conexion.prepareStatement(sql);
            ///envia atributos por set 

            puente.setString(1, mueNombre);
            puente.setString(2, mueObservacion);
            puente.setString(3, mueDescripcion);
            puente.setString(4, mueId);

            //YA EJECUTO ESTO
            puente.executeUpdate();
            operaciones = true;

        } catch (SQLException e) {
            Logger.getLogger(MuestraDAO.class.getName()).log(Level.SEVERE, null, e);
        } finally {
            try {
                this.cerrarConexión();

            } catch (SQLException e) {
                Logger.getLogger(MuestraDAO.class.getName()).log(Level.SEVERE, null, e);
            }
        }
        return operaciones;
    }

    @Override
    public boolean eliminarRegistro() {
        try {
            sql = "UPDATE muestra set MUE_ESTADO=? WHERE MUE_ID=?";
            puente = conexion.prepareStatement(sql);
            puente.setString(1, mueEstado );
            puente.setString(2, mueId);
            puente.executeUpdate();
            operaciones = true;

        } catch (SQLException e) {
            Logger.getLogger(MuestraDAO.class.getName()).log(Level.SEVERE, null, e);
        } finally {
            try {
                this.cerrarConexión();
            } catch (SQLException e) {
                Logger.getLogger(MuestraDAO.class.getName()).log(Level.SEVERE, null, e);

            }
        }
        return operaciones;
    }

    public ArrayList<MuestraVO> lista() {
        ArrayList<MuestraVO> listaMuestras1 = new ArrayList<>();
        try {
            conexion = this.obtenerConexión();
            //SELECT muestra.MUE_ID, muestra.MUE_NOMBRE, muestra.MUE_OBSERVARCION, muestra.MUE_DESCRIPCION, muestra.MUE_ESTADO, TIP_MUE_NOMBRE FROM tipo_muestra INNER JOIN muestra ON tipo_muestra.TIP_MUE_ID=muestra.FK_tipo_muestra
//            sql = "SELECT muestra.MUE_ID, muestra.MUE_NOMBRE, muestra.MUE_OBSERVARCION, "
//                    + "muestra.MUE_DESCRIPCION, muestra.MUE_ESTADO, tipo_muestra.TIP_MUE_NOMBRE "
//                    + "FROM tipo_muestra INNER JOIN muestra "
//                    + "ON tipo_muestra.TIP_MUE_ID=muestra.FK_tipo_muestra WHERE MUE_ESTADO='ACTIVO'";
            
            sql = "SELECT muestra.MUE_ID, muestra.MUE_NOMBRE, muestra.MUE_OBSERVARCION, muestra.MUE_DESCRIPCION, tipo_muestra.TIP_MUE_NOMBRE, muestra.MUE_ESTADO FROM tipo_muestra INNER JOIN muestra ON tipo_muestra.TIP_MUE_ID=muestra.FK_tipo_muestra WHERE MUE_ESTADO !='INACTIVO' ";

            puente = conexion.prepareStatement(sql);
            mensajero = puente.executeQuery();

            while (mensajero.next()) {
                MuestraVO mueVO = new MuestraVO(mensajero.getString(1), mensajero.getString(2), mensajero.getString(3),
                        mensajero.getString(4), mensajero.getString(5), mensajero.getString(6));

                listaMuestras1.add(mueVO);
            }
        } catch (Exception e) {
            Logger.getLogger(MuestraDAO.class.getName()).log(Level.SEVERE, null, e);
        }
//        }finally{
//            try {
//                this.cerrarConexión();
//                
//            } catch (SQLException e) {
//             Logger.getLogger(VehiculoDAO.class.getName()).log(Level.SEVERE, null,e);
//            }
//        }
        return listaMuestras1;
    }
        public ArrayList<MuestraVO> listar() {
        ArrayList<MuestraVO> listaMuestras1 = new ArrayList<>();
        try {
            conexion = this.obtenerConexión();
            //SELECT muestra.MUE_ID, muestra.MUE_NOMBRE, muestra.MUE_OBSERVARCION, muestra.MUE_DESCRIPCION, muestra.MUE_ESTADO, TIP_MUE_NOMBRE FROM tipo_muestra INNER JOIN muestra ON tipo_muestra.TIP_MUE_ID=muestra.FK_tipo_muestra
//            sql = "SELECT muestra.MUE_ID, muestra.MUE_NOMBRE, muestra.MUE_OBSERVARCION, "
//                    + "muestra.MUE_DESCRIPCION, muestra.MUE_ESTADO, tipo_muestra.TIP_MUE_NOMBRE "
//                    + "FROM tipo_muestra INNER JOIN muestra "
//                    + "ON tipo_muestra.TIP_MUE_ID=muestra.FK_tipo_muestra WHERE MUE_ESTADO='ACTIVO'";
            
            sql = "SELECT muestra.MUE_ID, muestra.MUE_NOMBRE, muestra.MUE_OBSERVARCION, muestra.MUE_DESCRIPCION, tipo_muestra.TIP_MUE_NOMBRE, muestra.MUE_ESTADO FROM tipo_muestra INNER JOIN muestra ON tipo_muestra.TIP_MUE_ID=muestra.FK_tipo_muestra WHERE MUE_ESTADO ='ACTIVO' ";

            puente = conexion.prepareStatement(sql);
            mensajero = puente.executeQuery();

            while (mensajero.next()) {
                MuestraVO mueVO = new MuestraVO(mensajero.getString(1), mensajero.getString(2), mensajero.getString(3),
                        mensajero.getString(4), mensajero.getString(5), mensajero.getString(6));

                listaMuestras1.add(mueVO);
            }
        } catch (Exception e) {
            Logger.getLogger(MuestraDAO.class.getName()).log(Level.SEVERE, null, e);
        }
//        }finally{
//            try {
//                this.cerrarConexión();
//                
//            } catch (SQLException e) {
//             Logger.getLogger(VehiculoDAO.class.getName()).log(Level.SEVERE, null,e);
//            }
//        }
        return listaMuestras1;
    }
    //consultar solicitud por nombre en especifico(cargarlas todas)-----------------------------------------------------------------------------------------------

    public MuestraVO consultarMuestra(String nombre) {

        MuestraVO mueVO = null;
        try {
            conexion = this.obtenerConexión();
            sql = "select * from MUESTRA where MUE_NOMBRE= ?";
            puente = conexion.prepareStatement(sql);
            puente.setString(1, nombre);
            mensajero = puente.executeQuery();
            while (mensajero.next()) {

                mueVO = new MuestraVO(mensajero.getString(1), mensajero.getString(2), mensajero.getString(3),
                        mensajero.getString(4), mensajero.getString(5), mensajero.getString(6));
            }

        } catch (Exception e) {
            Logger.getLogger(MuestraDAO.class.getName()).log(Level.SEVERE, null, e);
        }
//        finally{
//            try {
//                this.cerrarConexión();
//                
//            } catch (SQLException e) {
//             Logger.getLogger(ClienteDAO.class.getName()).log(Level.SEVERE, null,e);
//            }
//        }
        return mueVO;

    }
}
