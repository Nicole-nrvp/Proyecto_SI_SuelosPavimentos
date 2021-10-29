/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package ModeloDAO;

import ModeloVO.TipoEnsayoVO;
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
public class TipoEnsayoDAO extends Conexion implements Crud{
    //1. declarar variables
    private Connection conexion;
    private PreparedStatement puente;
    private ResultSet mensajero;

    private boolean operacion = false;
    private String sql;
    
    private String Tip_Ens_ID="", Tip_Ens_Nombre="", FK_Clas_Ensayo="", Tip_Ens_Estado="";
    public TipoEnsayoDAO(){}
    //2. Metodo principal para recibir los datos del VO
    public TipoEnsayoDAO(TipoEnsayoVO tipensVO){
        super();
        try{
            //3.Conectarse a la BD 
            conexion = this.obtenerConexión();
            //4. Traer el DAO los datos del VO para la operacion
            Tip_Ens_ID = tipensVO.getTip_Ens_ID();
            Tip_Ens_Nombre = tipensVO.getTip_Ens_Nombre();
            FK_Clas_Ensayo = tipensVO.getFK_Clas_Ensayo();
            Tip_Ens_Estado = tipensVO.getTip_Ens_Estado();
        }catch (Exception e) {

            Logger.getLogger(UsuarioDAO.class.getName()).log(Level.SEVERE, null, e);
        }
    }
    @Override
    public boolean agregarRegistro() {
        try {
            sql = "insert into tipo_ensayo values(?,?,?,?)";
            puente = conexion.prepareStatement(sql);
            puente.setString(1, Tip_Ens_ID);
            puente.setString(2, Tip_Ens_Nombre);
            puente.setString(3, FK_Clas_Ensayo);
            puente.setString(4, Tip_Ens_Estado);
            puente.executeUpdate();
            operacion = true;

        } catch (SQLException e) {
            Logger.getLogger(TipoEnsayoDAO.class.getName()).log(Level.SEVERE, null, e);
        } finally {
            try {
                this.cerrarConexión();
            } catch (SQLException e) {
                Logger.getLogger(TipoEnsayoDAO.class.getName()).log(Level.SEVERE, null, e);
            }
        }
        return operacion;
    }

    @Override
    public boolean actualizarRegistro() {
       
            try {
                String fk = "";
            if (FK_Clas_Ensayo.equals("GENERAL")) {
                fk = "2";
            } else {
                fk = "1";
            }
            
            sql = "update tipo_ensayo set Tip_Ens_Nombre=?, FK_Clase_Ensayo=?, Tip_Ensayo_Estado=? where Tip_ENS_ID=?";
            puente = conexion.prepareStatement(sql);
            puente.setString(1, Tip_Ens_Nombre);
            puente.setString(2, fk);
            puente.setString(3, Tip_Ens_Estado);
            puente.setString(4, Tip_Ens_ID);
            puente.executeUpdate();
            operacion = true;

        } catch (SQLException e) {
            Logger.getLogger(TipoEnsayoDAO.class.getName()).log(Level.SEVERE, null, e);
        } finally {
            try {
                this.cerrarConexión();
            } catch (SQLException e) {
                Logger.getLogger(TipoEnsayoDAO.class.getName()).log(Level.SEVERE, null, e);
            }
        }
        return operacion;
   
    }

    @Override
    public boolean eliminarRegistro() {
        try {
            sql = "UPDATE tipo_ensayo set Tip_Ensayo_Estado=? WHERE Tip_Ens_ID=?";
            puente = conexion.prepareStatement(sql);
            puente.setString(1,Tip_Ens_Estado );
            puente.setString(2, Tip_Ens_ID);
            puente.executeUpdate();
            operacion = true;

        } catch (SQLException e) {
            Logger.getLogger(TipoEnsayoDAO.class.getName()).log(Level.SEVERE, null, e);
        } finally {
            try {
                this.cerrarConexión();
            } catch (SQLException e) {
                Logger.getLogger(TipoEnsayoDAO.class.getName()).log(Level.SEVERE, null, e);

            }
        }
        return operacion;  
    }

    public TipoEnsayoVO consultarTipoEnsayo(String nombre) {
       TipoEnsayoVO tipensVO = null;
        try {

            conexion = this.obtenerConexión();
            sql = "select * from tipo_ensayo where TIP_ENS_NOMBRE =?";
            puente = conexion.prepareStatement(sql);
            puente.setString(1, nombre);
            mensajero = puente.executeQuery();
            while (mensajero.next()) {

                tipensVO = new TipoEnsayoVO(
                        mensajero.getString(1),
                        nombre,
                        mensajero.getString(3),
                        mensajero.getString(4)
                );
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
        return tipensVO;
    }
    
    public ArrayList<TipoEnsayoVO> listar() {

        ArrayList<TipoEnsayoVO> listaTipoEnsayo = new ArrayList<>();

        try {
            conexion = this.obtenerConexión();
            sql = "select * from tipo_ensayo";
            puente = conexion.prepareStatement(sql);
            mensajero = puente.executeQuery();
            
            while (mensajero.next()) {                
                
                TipoEnsayoVO tipensVO = new TipoEnsayoVO(mensajero.getString(1), mensajero.getString(2), 
                        mensajero.getString(3), mensajero.getString(4));
                
                    listaTipoEnsayo.add(tipensVO);
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

        return listaTipoEnsayo;
    }
}
