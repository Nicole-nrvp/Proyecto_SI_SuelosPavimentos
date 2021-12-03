 /*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package ModeloDAO;

import ModeloVO.AspectoVO;
import Util.Conexion;
import Util.Crud;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author laura
 */
@WebServlet(name = "AspectoDAO", urlPatterns = {"/AspectoDAO"})
public class AspectoDAO extends  Conexion implements Crud  {
    
    private Connection conexion;
    private PreparedStatement puente;
    private ResultSet mensajero;
    
    private boolean operacion = false;
    private String sql;
    
    private String ASP_ID, ASP_NOMBRE,  ASP_DESCRIPCION, FK_procedimiento, FK_Tipo_ensayo, ASP_ESTADO;
    
   
    private int max_records = 1000;
    private AspectoVO aspVO;
 
    public AspectoDAO() {
        
        try {
            Class.forName("com.mysql.jdbc.Driver");
            conexion = DriverManager.getConnection("jdbc:mysql://localhost:3306/bdestudiosuelos", "root", "");
 
        } catch (Exception ex) {
            System.out.println(ex);
        }
    }
    public AspectoDAO(AspectoVO aspVO) {
         try {
            Class.forName("com.mysql.jdbc.Driver");
            conexion = DriverManager.getConnection("jdbc:mysql://localhost:3306/bdestudiosuelos", "root", "");
            ASP_ID = aspVO.getASP_ID();
            ASP_NOMBRE = aspVO.getASP_NOMBRE();
            ASP_DESCRIPCION = aspVO.getASP_DESCRIPCION();
            FK_procedimiento = aspVO.getFK_procedimiento();
            FK_Tipo_ensayo = aspVO.getFK_Tipo_ensayo();
            ASP_ESTADO = aspVO.getASP_ESTADO();
            
        } catch (Exception ex) {
            System.out.println(ex);
        }
        
        
    }
    
     public ArrayList<AspectoVO> Listar() {
        ArrayList<AspectoVO> listaAspecto = new ArrayList<>();
        try {
            conexion = this.obtenerConexión();
            //SELECT muestra.MUE_ID, muestra.MUE_NOMBRE, muestra.MUE_OBSERVARCION, muestra.MUE_DESCRIPCION, muestra.MUE_ESTADO, TIP_MUE_NOMBRE FROM tipo_muestra INNER JOIN muestra ON tipo_muestra.TIP_MUE_ID=muestra.FK_tipo_muestra
            sql = "select * from listaraspecto";

            puente = conexion.prepareStatement(sql);
            mensajero = puente.executeQuery();

            while (mensajero.next()) {
                AspectoVO aspVO = new AspectoVO(mensajero.getString(1), mensajero.getString(2),mensajero.getString(3),mensajero.getString(4),mensajero.getString(5),mensajero.getString(6));
                listaAspecto.add(aspVO);
            }
        } catch (Exception e) {
            Logger.getLogger(PruebaDAO.class.getName()).log(Level.SEVERE, null, e);
        }
        return listaAspecto;
    } 
      public ArrayList<AspectoVO> Listar1() {
        ArrayList<AspectoVO> listaAspecto = new ArrayList<>();
        try {
            conexion = this.obtenerConexión();
            //SELECT muestra.MUE_ID, muestra.MUE_NOMBRE, muestra.MUE_OBSERVARCION, muestra.MUE_DESCRIPCION, muestra.MUE_ESTADO, TIP_MUE_NOMBRE FROM tipo_muestra INNER JOIN muestra ON tipo_muestra.TIP_MUE_ID=muestra.FK_tipo_muestra
            sql = "select * from aspecto";

            puente = conexion.prepareStatement(sql);
            mensajero = puente.executeQuery();

            while (mensajero.next()) {
                AspectoVO aspVO = new AspectoVO(mensajero.getString(1), mensajero.getString(2),mensajero.getString(3),mensajero.getString(4),mensajero.getString(5),mensajero.getString(6));
                listaAspecto.add(aspVO);
            }
        } catch (Exception e) {
            Logger.getLogger(PruebaDAO.class.getName()).log(Level.SEVERE, null, e);
        }
        return listaAspecto;
    }
      
      public AspectoVO consultarAspecto (String ASP_NOMBRE){

        AspectoVO aspVO = null;
        try {
            sql = "SELECT * FROM aspecto WHERE ASP_NOMBRE = ?;";
            puente = conexion.prepareStatement(sql);
            puente.setString(1, ASP_NOMBRE);
            mensajero = puente.executeQuery();
            while (mensajero.next()) {

                aspVO = new AspectoVO(mensajero.getString("ASP_ID"),
                        mensajero.getString("ASP_NOMBRE"),
                        mensajero.getString("ASP_DESCRIPCION"),
                        mensajero.getString("FK_procedimiento"),
                        mensajero.getString("FK_Tipo_ensayo"),
                        mensajero.getString("ASP_ESTADO"));
            }

        } catch (Exception e) {
            Logger.getLogger(PruebaDAO.class.getName()).log(Level.SEVERE, null, e);
        }
        return aspVO;
    }
    @Override
    public boolean agregarRegistro() {
        try {
            sql = "Call RegistrarAspecto (?,?,?,?,?)";
            puente = conexion.prepareStatement(sql);
            puente.setString(1, ASP_NOMBRE);
            puente.setString(2, ASP_DESCRIPCION);
            puente.setString(3, FK_procedimiento);
            puente.setString(4, FK_Tipo_ensayo);
            puente.setString(5, ASP_ESTADO);
            
            
            puente.executeUpdate();
            operacion = true;

        } catch (SQLException e) {
            Logger.getLogger(PruebaDAO.class.getName()).log(Level.SEVERE, null, e);
       
          }
        return operacion;
    }
        public boolean actualizarRegistro() {
            try {

            sql = "update aspecto set ASP_NOMBRE=?, ASP_DESCRIPCION=?, FK_Procedimiento=?, FK_Tipo_ensayo=? where ASP_ID= ?;";
            puente = conexion.prepareStatement(sql);
            puente.setString(1, ASP_NOMBRE);
            puente.setString(2, ASP_DESCRIPCION);
            puente.setString(3, FK_procedimiento);
            puente.setString(4, FK_Tipo_ensayo);
            puente.setString(5, ASP_ID);
            puente.executeUpdate();
            operacion = true;

        } catch (SQLException e) {
            Logger.getLogger(PruebaDAO.class.getName()).log(Level.SEVERE, null, e);
       
        }
        return operacion; 
    }  
 public boolean InactivarAspecto() {
        
        try {

            sql = "UPDATE aspecto SET ASP_ESTADO = 'INACTIVO' WHERE ASP_NOMBRE = ?;";
            puente = conexion.prepareStatement(sql);
            
            puente.setString(1, ASP_NOMBRE);
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