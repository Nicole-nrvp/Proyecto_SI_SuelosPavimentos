/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Util;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

/**
 *
 * @author usuario
 */
public class Conexion {
    
    //primero declara variasbles y opbejtos
    private String driver, user, password, nombreBd, urlBd;
    //segundo creamos el obejto
    private Connection conexion;
    
    //metodo que va en mayuscula y el primero es el metodo constructor
    public Conexion (){
        
        //sacamos el driver con el controlador
        driver="com.mysql.jdbc.Driver";
        //llenamos los datos corresponientes
        user="root";
        password="";
<<<<<<< HEAD
        nombreBd="bdestudiosuelos";
=======
        nombreBd="dbestudiosuelos";
>>>>>>> 82062e218b7c8eaf0604d196a8b63f2cf1adf84a
        //url de la base de datos y siempre concatenamos el nombrebD
        urlBd="jdbc:mysql://localhost:3306/"+nombreBd;
        
        try {
            //tarer en esta clase el driver y una nueva instacia
            Class.forName(driver).newInstance();
            //hacemos la conexion a la BD
            conexion=DriverManager.getConnection(urlBd,user,password);
            System.out.println("Conexion okey");
            
        } catch (Exception e) {
            System.out.println("Error al conectarse " + e.toString());
        }
   
    }
   
  
   public Connection obtenerConexión (){
        return conexion;
    }
   
   public Connection cerrarConexión() throws SQLException{
        conexion.close();
        conexion= null;
        return conexion;
    }
  
    public static void main(String[] args){
    new Conexion();
}
}
