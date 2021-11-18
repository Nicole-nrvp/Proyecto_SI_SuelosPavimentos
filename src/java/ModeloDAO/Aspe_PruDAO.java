/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package ModeloDAO;

import ModeloVO.Aspe_PruVO;
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
 * @author Jorgito Oooome
 */
@WebServlet(name = "Aspe_PruDAO", urlPatterns = {"/Aspe_PruDAO"})
public class Aspe_PruDAO extends  Conexion implements Crud  {  
    private Connection conexion;
    private PreparedStatement puente;
    private ResultSet mensajero;
    
    private boolean operacion = false;
    private String sql;
    
    private String PRU_ASP_ID, FK_Prueba, FK_Aspecto, PRU_ASP_RESULTADO, PRU_ASP_ESTADO;
    
   
    private int max_records = 1000;
    private Aspe_PruVO asprVO;
 
    public Aspe_PruDAO() {
        
        try {
            Class.forName("com.mysql.jdbc.Driver");
            conexion = DriverManager.getConnection("jdbc:mysql://localhost:3306/bdestudiosuelos", "root", "");
 
        } catch (Exception ex) {
            System.out.println(ex);
        }
    }
    public Aspe_PruDAO(Aspe_PruVO asprVO) {
         try {
            Class.forName("com.mysql.jdbc.Driver");
            conexion = DriverManager.getConnection("jdbc:mysql://localhost:3306/bdestudiosuelos", "root", "");
            PRU_ASP_ID = asprVO.getPRU_ASP_ID();
            FK_Prueba = asprVO.getFK_Prueba();
            FK_Aspecto = asprVO.getFK_Aspecto();
            PRU_ASP_RESULTADO = asprVO.getPRU_ASP_RESULTADO();
            PRU_ASP_ESTADO = asprVO.getPRU_ASP_ESTADO();
        } catch (Exception ex) {
            System.out.println(ex);
        }
        
        
    }
    
    public ArrayList<Aspe_PruVO> Listar() {
        ArrayList<Aspe_PruVO> listaAspe = new ArrayList<>();
        try {
            conexion = this.obtenerConexión();
            //SELECT muestra.MUE_ID, muestra.MUE_NOMBRE, muestra.MUE_OBSERVARCION, muestra.MUE_DESCRIPCION, muestra.MUE_ESTADO, TIP_MUE_NOMBRE FROM tipo_muestra INNER JOIN muestra ON tipo_muestra.TIP_MUE_ID=muestra.FK_tipo_muestra
            sql = "SELECT * FROM `listaraspectop`";

            puente = conexion.prepareStatement(sql);
            mensajero = puente.executeQuery();

            while (mensajero.next()) {
                Aspe_PruVO asprVO = new Aspe_PruVO(mensajero.getString(1), mensajero.getString(2), mensajero.getString(3),
                        mensajero.getString(4), mensajero.getString(5));

                listaAspe.add(asprVO);
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
        return listaAspe;
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

    private void processRequest(HttpServletRequest request, HttpServletResponse response) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public boolean agregarRegistro() {
      try {
            sql = "insert into aspecto_prueba(FK_Prueba,FK_Aspecto,PRU_ASP_RESULTADO,PRU_ASP_ESTADO) values(?,?,?,?)";
            puente = conexion.prepareStatement(sql);
            puente.setString(1, FK_Prueba);
            puente.setString(2, FK_Aspecto);
            puente.setString(3, PRU_ASP_RESULTADO);
            puente.setString(4, PRU_ASP_ESTADO);

            puente.executeUpdate();
            operacion = true;

        } catch (SQLException e) {
            Logger.getLogger(Aspe_PruDAO.class.getName()).log(Level.SEVERE, null, e);
       
          }
        return operacion;
   }   
    public boolean InactivarPrueba() {
        
        try {

            sql = "UPDATE aspecto_prueba SET PRU_ASP_ESTADO='INACTIVO' WHERE PRU_ASP_ID=? ";
            puente = conexion.prepareStatement(sql);
            
            puente.setString(1, PRU_ASP_ID);
            puente.executeUpdate();
            operacion = true;

        } catch (SQLException e) {
            Logger.getLogger(Aspe_PruDAO.class.getName()).log(Level.SEVERE, null, e);
       
        }
        return operacion; 
    }

    @Override
    public boolean actualizarRegistro() {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public boolean eliminarRegistro() {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }
}


