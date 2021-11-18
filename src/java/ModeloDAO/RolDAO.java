/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package ModeloDAO;

import ModeloVO.RolVO;
import Util.Conexion;
import Util.Crud;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author Camilo
 */
public class RolDAO extends Conexion{

     private Connection conexion;
    private PreparedStatement puente;
    private ResultSet mensajero;

    private String sql;
    
    private String CatId ="",CatTipo="";
    
    public ArrayList<RolVO> listar() {

        ArrayList<RolVO> listaRoles = new ArrayList<>();

        try {
            conexion = this.obtenerConexión();
            sql = "select * from rol";
            puente = conexion.prepareStatement(sql);
            mensajero = puente.executeQuery();

            while (mensajero.next()) {

                RolVO rolVO = new RolVO(mensajero.getString(1),mensajero.getString(2));                
                listaRoles.add(rolVO);

            }

        } catch (Exception e) {
            Logger.getLogger(RolVO.class.getName()).log(Level.SEVERE, null, e);

        }

        return listaRoles;
    }
}
