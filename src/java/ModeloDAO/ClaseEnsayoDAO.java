/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package ModeloDAO;

import ModeloVO.ClaseEnsayoVO;
import Util.Conexion;
import Util.Crud;
import java.sql.*;
import java.util.ArrayList;
import java.util.logging.Level;
import java.util.logging.Logger;
/**
 *
 * @author as
 */
public class ClaseEnsayoDAO extends Conexion implements Crud {
    //1. declarar variables
    private Connection conexion;
    private PreparedStatement puente;
    private ResultSet mensajero;

    private boolean operacion = false;
    private String sql;
    
    private String Cla_Ens_ID="", Cla_Ens_Nombre="", Cla_Ens_Estado="";
    public ClaseEnsayoDAO(){}
    //2. Metodo principal para recibir los datos del VO
    public ClaseEnsayoDAO(ClaseEnsayoVO clasensVO){
        super();
        try{
            //3.Conectarse a la BD 
            conexion = this.obtenerConexión();
            //4. Traer el DAO los datos del VO para la operacion
            Cla_Ens_ID = clasensVO.getClasEnsID();
            Cla_Ens_Nombre = clasensVO.getClasEnsNombre();
            Cla_Ens_Estado = clasensVO.getClasEnsEstado();
            
        }catch (Exception e) {
            
            Logger.getLogger(ClaseEnsayoDAO.class.getName()).log(Level.SEVERE, null, e);
        }
    }
            
    @Override
    public boolean agregarRegistro() {
        try {
//            INSERT INTO `clase_ensayo` (`CLA_ENS_ID`, `CLA_ENS_NOMBRE`, `CLA_ENS_ESTADO`) VALUES (NULL, 'HOLA', 'ACTIVO');
            sql = "insert into clase_ensayo (`CLA_ENS_ID`, `CLA_ENS_NOMBRE`, `CLA_ENS_ESTADO`) values(?,?,?)";
            puente = conexion.prepareStatement(sql);
            puente.setString(1, Cla_Ens_ID);
            puente.setString(2, Cla_Ens_Nombre);
            puente.setString(3, Cla_Ens_Estado);
            puente.executeUpdate();
            operacion = true;

        } catch (SQLException e) {
            Logger.getLogger(ClaseEnsayoDAO.class.getName()).log(Level.SEVERE, null, e);
        } finally {
            try {
                this.cerrarConexión();
            } catch (SQLException e) {
                Logger.getLogger(ClaseEnsayoDAO.class.getName()).log(Level.SEVERE, null, e);
            }
        }
        return operacion;
    }

    @Override
    public boolean actualizarRegistro() {
     try {
            sql = "UPDATE clase_ensayo SET Cla_Ens_Nombre=?, Cla_Ens_Estado=? WHERE CLA_ENS_ID=?";
            puente = conexion.prepareStatement(sql);
            puente.setString(1, Cla_Ens_Nombre);
            puente.setString(2, Cla_Ens_Estado);
            puente.setString(3, Cla_Ens_ID);
            puente.executeUpdate();
            operacion = true;

        } catch (SQLException e) {
            Logger.getLogger(ClaseEnsayoDAO.class.getName()).log(Level.SEVERE, null, e);
        } finally {
            try {
                this.cerrarConexión();
            } catch (SQLException e) {
                Logger.getLogger(ClaseEnsayoDAO.class.getName()).log(Level.SEVERE, null, e);
            }
        }
        return operacion;
    }

    @Override
    public boolean eliminarRegistro() {
        
        try {
            sql = "UPDATE clase_ensayo set Cla_Ens_Estado=? WHERE Cla_Ens_ID=?";
            puente = conexion.prepareStatement(sql);
            puente.setString(1,Cla_Ens_Estado );
            puente.setString(2, Cla_Ens_ID);
            puente.executeUpdate();
            operacion = true;

        } catch (SQLException e) {
            Logger.getLogger(ClaseEnsayoDAO.class.getName()).log(Level.SEVERE, null, e);
        } finally {
            try {
                this.cerrarConexión();
            } catch (SQLException e) {
                Logger.getLogger(ClaseEnsayoDAO.class.getName()).log(Level.SEVERE, null, e);

            }
        }
        return operacion;        
    }

    public ClaseEnsayoVO consultarClaseEnsayo(String nombre) {
        ClaseEnsayoVO clasensVO = null;
        try {

            conexion = this.obtenerConexión();
            sql = "select * from clase_ensayo where CLA_ENS_NOMBRE =?";
            puente = conexion.prepareStatement(sql);
            puente.setString(1, nombre);
            mensajero = puente.executeQuery();
            while (mensajero.next()) {

                clasensVO = new ClaseEnsayoVO(
                        mensajero.getString(1),
                        nombre,
                        mensajero.getString(3));
            }

        } catch (Exception e) {
            Logger.getLogger(ClaseEnsayoDAO.class.getName()).log(Level.SEVERE, null, e);
        } finally {
            try {
                this.cerrarConexión();
            } catch (SQLException e) {
                Logger.getLogger(ClaseEnsayoDAO.class.getName()).log(Level.SEVERE, null, e);
            }

        }
        return clasensVO;
    }
    
    public ArrayList<ClaseEnsayoVO> listar() {

        ArrayList<ClaseEnsayoVO> listaClaseEnsayo = new ArrayList<>();

        try {
            conexion = this.obtenerConexión();
            sql = "select * from clase_ensayo where CLA_ENS_ESTADO='ACTIVO'";
            puente = conexion.prepareStatement(sql);
            mensajero = puente.executeQuery();
            
            while (mensajero.next()) {                
                
                ClaseEnsayoVO claensVO = new ClaseEnsayoVO(mensajero.getString(1), mensajero.getString(2), 
                        mensajero.getString(3));
                
                    listaClaseEnsayo.add(claensVO);
            }

        } catch (Exception e) {
            Logger.getLogger(ClaseEnsayoDAO.class.getName()).log(Level.SEVERE, null, e);
        } finally {
            try {
                this.cerrarConexión();
            } catch (SQLException e) {
                Logger.getLogger(ClaseEnsayoDAO.class.getName()).log(Level.SEVERE, null, e);
            }

        }

        return listaClaseEnsayo;
    }
}

