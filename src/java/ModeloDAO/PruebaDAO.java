/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package ModeloDAO;

import ModeloVO.PruebaVO;
import Util.Conexion;
import Util.Crud;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author Jorgito Oooome
 */
public class PruebaDAO extends Conexion implements Crud {
    
    private Connection conexion;
    private PreparedStatement puente;
    private ResultSet mensajero;
    
    private boolean operacion = false;
    private String sql;
    
    private String pru_id= "", pru_fecha_inicio="", pru_fecha_fin="",pru_nombre="", FK_Usuario="", FK_Muestra="",FK_Solicitud="",PRU_ESTADO="";
    
   
    private int max_records = 1000;
    private PruebaVO pruVO;
 
    public PruebaDAO() {
        
        try {
            Class.forName("com.mysql.jdbc.Driver");
            conexion = DriverManager.getConnection("jdbc:mysql://localhost:3306/bdestudiosuelos", "root", "");
 
        } catch (Exception ex) {
            System.out.println(ex);
        }
    }

    public PruebaDAO(PruebaVO pruVO) {
         try {
            Class.forName("com.mysql.jdbc.Driver");
            conexion = DriverManager.getConnection("jdbc:mysql://localhost:3306/bdestudiosuelos", "root", "");
            pru_id = pruVO.getPru_id();
            pru_fecha_inicio = pruVO.getPru_fecha_inicio();
            pru_fecha_fin= pruVO.getPru_fecha_fin();
            pru_nombre= pruVO.getPru_nombre();
            FK_Usuario= pruVO.getFK_Usuario();
            FK_Muestra= pruVO.getFK_Muestra();
            FK_Solicitud = pruVO.getFK_Solicitud();
            PRU_ESTADO = pruVO.getPRU_ESTADO();
        } catch (Exception ex) {
            System.out.println(ex);
        }
        
        
    }
    public ArrayList<PruebaVO> Listar1() {
        ArrayList<PruebaVO> listaPrueba = new ArrayList<>();
        try {
            conexion = this.obtenerConexión();
            //SELECT muestra.MUE_ID, muestra.MUE_NOMBRE, muestra.MUE_OBSERVARCION, muestra.MUE_DESCRIPCION, muestra.MUE_ESTADO, TIP_MUE_NOMBRE FROM tipo_muestra INNER JOIN muestra ON tipo_muestra.TIP_MUE_ID=muestra.FK_tipo_muestra
            sql = "select * from prueba where PRU_ESTADO='ACTIVO'";

            puente = conexion.prepareStatement(sql);
            mensajero = puente.executeQuery();

            while (mensajero.next()) {
                PruebaVO pruVO = new PruebaVO(mensajero.getString(1), mensajero.getString(2),mensajero.getString(3), mensajero.getString(4),mensajero.getString(5), mensajero.getString(6),mensajero.getString(7),mensajero.getString(8));
                listaPrueba.add(pruVO);
            }
        } catch (Exception e) {
            Logger.getLogger(PruebaDAO.class.getName()).log(Level.SEVERE, null, e);
        }
        return listaPrueba;
    }
    public ArrayList<PruebaVO> Listar2() {
        ArrayList<PruebaVO> listaPrueba1 = new ArrayList<>();
        try {
            conexion = this.obtenerConexión();
            //SELECT muestra.MUE_ID, muestra.MUE_NOMBRE, muestra.MUE_OBSERVARCION, muestra.MUE_DESCRIPCION, muestra.MUE_ESTADO, TIP_MUE_NOMBRE FROM tipo_muestra INNER JOIN muestra ON tipo_muestra.TIP_MUE_ID=muestra.FK_tipo_muestra
            sql = "select * from prueba where PRU_ESTADO='INACTIVO'";

            puente = conexion.prepareStatement(sql);
            mensajero = puente.executeQuery();

            while (mensajero.next()) {
                PruebaVO pruVO = new PruebaVO(mensajero.getString(1), mensajero.getString(2),mensajero.getString(3), mensajero.getString(4),mensajero.getString(5), mensajero.getString(6),mensajero.getString(7),mensajero.getString(8));
                listaPrueba1.add(pruVO);
            }
        } catch (Exception e) {
            Logger.getLogger(PruebaDAO.class.getName()).log(Level.SEVERE, null, e);
        }
        return listaPrueba1;
    }
        
    
      public List<PruebaVO> Listar() throws SQLException {
        List<PruebaVO> res = new ArrayList<PruebaVO>();
        PruebaVO  red= null;
        
            sql = "SELECT * FROM `consultarrractivo`  \n" +
"ORDER BY `consultarrractivo`.`PRU_ID` ASC";

            puente = conexion.prepareStatement( "SELECT * FROM `consultarrractivo`  \n" +
"ORDER BY `consultarrractivo`.`PRU_ID` ASC");
            mensajero = puente.executeQuery();
            while (mensajero.next()) {
                red = new PruebaVO(mensajero.getString("pru_id"), mensajero.getString("pru_fecha_inicio"),mensajero.getString("pru_fecha_fin"), mensajero.getString("pru_nombre"),mensajero.getString("USU_NOMBRE"), mensajero.getString("MUE_NOMBRE"),mensajero.getString("SOL_NOMBRE"),mensajero.getString("PRU_ESTADO"));
                res.add(red);
            }
 
        return res;
    } 
      /* public List<PruebaVO> listarPorNombre() throws SQLException {
        List<PruebaVO> res = new ArrayList<PruebaVO>();
        PruebaVO  red= null;
        
            sql = "select * from prueba";

            puente = conexion.prepareStatement( "select * from  prueba ");
            mensajero = puente.executeQuery();
            while (mensajero.next()) {
                red = new PruebaVO(mensajero.getString("pru_id"), mensajero.getString("pru_fecha_inicio"),mensajero.getString("pru_fecha_fin"), mensajero.getString("pru_nombre"), mensajero.getString("FK_Usuario"), mensajero.getString("FK_muestra"),mensajero.getString("Fk_Solicitud"),mensajero.getString("PRU_ESTADO"));
                res.add(red);
            }
 
        return res;
    }
      */

   public boolean agregarRegistro() {
        
      try {
            sql = "call RegistrarPrueba (?,?,?,?,?,?)";
            puente = conexion.prepareStatement(sql);
            puente.setString(1, pru_fecha_fin);
            puente.setString(1, pru_fecha_fin);
            puente.setString(2, pru_nombre);
            puente.setString(3, FK_Usuario);
            puente.setString(4, FK_Muestra);
            puente.setString(5, FK_Solicitud);
            puente.setString(6, PRU_ESTADO);


            puente.executeUpdate();
            operacion = true;

        } catch (SQLException e) {
            Logger.getLogger(PruebaDAO.class.getName()).log(Level.SEVERE, null, e);
       
          }
        return operacion;
   }     
     

    @Override
    public boolean actualizarRegistro() {
        
        
       try {
            sql = "update prueba set PRU_FECHA_FIN=?, PRU_NOMBRE=?,  FK_Muestra=? where PRU_ID= ?";
            puente = conexion.prepareStatement(sql);
            
            puente.setString(1, pru_fecha_fin);
            puente.setString(2, pru_nombre);
            puente.setString(3, FK_Muestra);
            puente.setString(4, pru_id);
            puente.executeUpdate();
            operacion = true;
        } catch (SQLException e) {
            Logger.getLogger(UsuarioDAO.class.getName()).log(Level.SEVERE, null, e);
        } finally {
           
        }
        return operacion;
        
    
    }
  /*      
        try {

            sql = "update prueba set PRU_FECHA_INICIO=?,PRU_FECHA_FIN=?, PRU_NOMBRE=?, FK_Usuario=?, FK_Muestra=?, Fk_Solicitud=?, PRU_ESTADO=? where PRU_ID= ?";
            puente = conexion.prepareStatement(sql);
            
            
            puente.setString(1, pru_fecha_inicio);
            puente.setString(2, pru_fecha_fin);
            puente.setString(3, pru_nombre);
            puente.setString(4, FK_Usuario);
            puente.setString(5, FK_Muestra);
            puente.setString(6, FK_Solicitud);
            puente.setString(7, PRU_ESTADO);
            puente.setString(8, pru_id);
            puente.executeUpdate();
            operacion = true;

        } catch (SQLException e) {
            Logger.getLogger(PruebaDAO.class.getName()).log(Level.SEVERE, null, e);
       
        }
        return operacion; 
   }
*/

    public PruebaVO consultarPrueba(String pru_id){
        
            try {
            sql = "CALL ConsultarPrueba (?)";
            puente = conexion.prepareStatement(sql);
            puente.setString(1, pru_id);
            mensajero = puente.executeQuery();
            while (mensajero.next()) {

                pruVO = new PruebaVO(mensajero.getString("pru_id"), 
                        mensajero.getString("pru_fecha_inicio"),
                        mensajero.getString("pru_fecha_fin"), 
                        mensajero.getString("pru_nombre"), 
                        mensajero.getString("FK_Usuario"), 
                        mensajero.getString("FK_Muestra"),
                        mensajero.getString("FK_Solicitud"),
                        mensajero.getString("PRU_ESTADO"));
            }

        } catch (Exception e) {
            Logger.getLogger(PruebaDAO.class.getName()).log(Level.SEVERE, null, e);
        }
        return pruVO;
    }
/*
    public PruebaVO consultarPruebaNombre(String pru_nombre){
        
            try {
            sql = "CALL ConsultarPorNombrePrueba (?)";
            puente = conexion.prepareStatement(sql);
            puente.setString(1, pru_nombre);
            mensajero = puente.executeQuery();
            while (mensajero.next()) {

                pruVO = new PruebaVO(mensajero.getString("pru_id"), 
                        mensajero.getString("pru_fecha_inicio"),
                        mensajero.getString("pru_fecha_fin"), 
                        mensajero.getString("pru_nombre"), 
                        mensajero.getString("FK_Usuario"), 
                        mensajero.getString("FK_Muestra"),
                        mensajero.getString("FK_Solicitud"),
                        mensajero.getString("PRU_ESTADO"));
            }

        } catch (Exception e) {
            Logger.getLogger(PruebaDAO.class.getName()).log(Level.SEVERE, null, e);
        }
        return pruVO;
    }
    */
      public boolean InactivarPrueba() {
        
        try {

            sql = "Call InactivarPrueba (?)";
            puente = conexion.prepareStatement(sql);
            
            puente.setString(1, pru_id);
            puente.executeUpdate();
            operacion = true;

        } catch (SQLException e) {
            Logger.getLogger(PruebaDAO.class.getName()).log(Level.SEVERE, null, e);
       
        }
        return operacion; 
    }

    @Override
    public boolean eliminarRegistro() {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }
}





