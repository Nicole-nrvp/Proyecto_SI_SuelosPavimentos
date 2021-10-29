/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package ModeloDAO;

import ModeloVO.ClienteVO;
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
public class ClienteDAO extends Conexion implements Crud {

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
    private String cliId = "", cliNombre = "", cliApellido = "", cliDocumento = "", cliTipoDoc = "", cliCorreo = "", cliCelular = "", cliEstado = "";

    public ClienteDAO() {
    }

    //2. EL METODO PRINCIPAL PARA RECIBIR LOS DATOS DEL VO (CONSTRUCTOR) ///////////////CUANDO SE EJECUTA LA CLASE Y SE LLAMA IGUAL A LA CLASE/////////////
    //usuVO ES LO QUE TRAEMOS DEL VO
    public ClienteDAO(ClienteVO cliVO) {
        //EL VO ES UNA SUPER CLASE
        super();

        //3. ME CONECTO A LA BASE DE DATOS    
        try {
            conexion = this.obtenerConexión();

            //4. TRAER AL DAO LOS DATOS DEL VO PARA HACER LAS OPERACIONES
            cliId = cliVO.getCliId();
            cliNombre = cliVO.getCliNombre();
            cliApellido = cliVO.getCliApellido();
            cliDocumento = cliVO.getCliDocumento();
            cliTipoDoc = cliVO.getCliTipoDoc();
            cliCorreo = cliVO.getCliCorreo();
            cliCelular = cliVO.getCliCelular();
            cliEstado = cliVO.getCliEstado();

        } catch (Exception e) {
            //5. CREAR EL LOGGER EXCEPCIÓN
            //excepcion optima se crearon 2 import COPIAR Y PEGAR EN TODOS
            //LOGG ES LA SECUENCIA COMPLETA DE TODO LO QUE PASA NS IMPRIME EL ERROR 
            Logger.getLogger(ClienteDAO.class.getName()).log(Level.SEVERE, null, e);

        }

    }

    public ArrayList<ClienteVO> listar() {
        ArrayList<ClienteVO> listaClientes = new ArrayList<>();
        try {
            conexion = this.obtenerConexión();
            //select * from cliente where CLI_ESTADO='ACTIVO';
            sql = "select * from cliente where CLI_ESTADO='ACTIVO' ";
            puente = conexion.prepareStatement(sql);
            mensajero = puente.executeQuery();

            while (mensajero.next()) {
                ClienteVO vehVO = new ClienteVO(mensajero.getString(1), mensajero.getString(2), mensajero.getString(3),
                        mensajero.getString(4), mensajero.getString(5), mensajero.getString(6),
                        mensajero.getString(7), mensajero.getString(8));

                listaClientes.add(vehVO);
            }
        } catch (Exception e) {
            Logger.getLogger(ClienteDAO.class.getName()).log(Level.SEVERE, null, e);
        }
//        }finally{
//            try {
//                this.cerrarConexión();
//                
//            } catch (SQLException e) {
//             Logger.getLogger(VehiculoDAO.class.getName()).log(Level.SEVERE, null,e);
//            }
//        }
        return listaClientes;
    }

    public ClienteVO consultarCliente(String nombre) {

        ClienteVO cliVO = null;
        try {
            conexion = this.obtenerConexión();
            sql = "select * from CLIENTE where CLI_NOMBRE= ?";
            puente = conexion.prepareStatement(sql);
            puente.setString(1, nombre);
            mensajero = puente.executeQuery();
            while (mensajero.next()) {

                cliVO = new ClienteVO(mensajero.getString(1), mensajero.getString(2), mensajero.getString(3),
                        mensajero.getString(4), mensajero.getString(5), mensajero.getString(6),
                        mensajero.getString(7), mensajero.getString(8));
            }

        } catch (Exception e) {
            Logger.getLogger(ClienteDAO.class.getName()).log(Level.SEVERE, null, e);
        }
//        finally{
//            try {
//                this.cerrarConexión();
//                
//            } catch (SQLException e) {
//             Logger.getLogger(ClienteDAO.class.getName()).log(Level.SEVERE, null,e);
//            }
//        }
        return cliVO;

    }

    @Override
    public boolean agregarRegistro() {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public boolean actualizarRegistro() {
        try {
            //UPDATE `cliente` SET `CLI_APELLIDO` = 'ELITEEE' WHERE `cliente`.`CLI_ID` = 1;
            sql = "update cliente set CLI_NOMBRE=?, CLI_APELLIDO=?, CLI_DOCUMENTO=?, CLI_TIPO_DOCUMENTO=?, CLI_CORREO=?, CLI_CELULAR=? WHERE CLI_ID=?";
            //crear un puente para la conexion y envia la setencia sql 
            puente = conexion.prepareStatement(sql);
            ///envia atributos por set 
            puente.setString(1, cliNombre);
            puente.setString(2, cliApellido);
            puente.setString(3, cliDocumento);
            puente.setString(4, cliTipoDoc);
            puente.setString(5, cliCorreo);
            puente.setString(6, cliCelular);
            puente.setString(7, cliId);

            //YA EJECUTO ESTO
            puente.executeUpdate();
            operaciones = true;

        } catch (SQLException e) {
            Logger.getLogger(ClienteDAO.class.getName()).log(Level.SEVERE, null, e);
        } finally {
            try {

                this.cerrarConexión();

            } catch (SQLException e) {
                Logger.getLogger(ClienteDAO.class.getName()).log(Level.SEVERE, null, e);
            }
        }
        return operaciones;
    }

    @Override
    public boolean eliminarRegistro() {
        try {
            sql = "UPDATE cliente set CLI_ESTADO=? WHERE CLI_ID=?";
            puente = conexion.prepareStatement(sql);
            puente.setString(1,cliEstado );
            puente.setString(2, cliId);
            puente.executeUpdate();
            operaciones = true;

        } catch (SQLException e) {
            Logger.getLogger(ClienteDAO.class.getName()).log(Level.SEVERE, null, e);
        } finally {
            try {
                this.cerrarConexión();
            } catch (SQLException e) {
                Logger.getLogger(ClienteDAO.class.getName()).log(Level.SEVERE, null, e);

            }
        }
        return operaciones;

    }

    
     public ClienteVO consultarClienteDoc(String documento) {

        ClienteVO cliVO = null;
        try {
            conexion = this.obtenerConexión();
            sql = "select * from CLIENTE where CLI_DOCUMENTO= ?";
            puente = conexion.prepareStatement(sql);
            puente.setString(1, documento);
            mensajero = puente.executeQuery();
            while (mensajero.next()) {

                cliVO = new ClienteVO(mensajero.getString(1), mensajero.getString(2), mensajero.getString(3),
                        mensajero.getString(4), mensajero.getString(5), mensajero.getString(6),
                        mensajero.getString(7), mensajero.getString(8));
            }

        } catch (Exception e) {
            Logger.getLogger(ClienteDAO.class.getName()).log(Level.SEVERE, null, e);
        }
//        finally{
//            try {
//                this.cerrarConexión();
//                
//            } catch (SQLException e) {
//             Logger.getLogger(ClienteDAO.class.getName()).log(Level.SEVERE, null,e);
//            }
//        }
        return cliVO;

    }
}
