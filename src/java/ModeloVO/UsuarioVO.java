/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package ModeloVO;

/**
 *
 * @author Camilo
 */
public class UsuarioVO {

    

    

    
    private String usuId, UsuNombre, UsuPassword, UsuRol,UsuCorreo,UsuEstado,UsuVerificacion;

    

    public UsuarioVO() {
    }
    
    //Constructores
    public UsuarioVO(String usuId, String UsuNombre, String UsuPassword, String UsuRol, String UsuCorreo,String UsuEstado) {
        this.usuId = usuId;
        this.UsuNombre = UsuNombre;
        this.UsuPassword = UsuPassword;
        this.UsuRol = UsuRol;
        this.UsuCorreo = UsuCorreo;
        this.UsuEstado = UsuEstado;
        
    }
    public UsuarioVO(String usuId, String UsuNombre, String UsuPassword, String UsuRol, String UsuCorreo, String UsuEstado, String UsuVerificacion) {
        this.usuId = usuId;
        this.UsuNombre = UsuNombre;
        this.UsuPassword = UsuPassword;
        this.UsuRol = UsuRol;
        this.UsuCorreo = UsuCorreo;
        this.UsuEstado = UsuEstado;
        this.UsuVerificacion = UsuVerificacion;
    }
    public UsuarioVO(String UsuPassword) {
        this.UsuPassword = UsuPassword;
    }
    
    public UsuarioVO(String usuId, String UsuRol) {
        this.usuId = usuId;
        this.UsuRol = UsuRol;
    }
    //Encapsulamiento
    
    
    
    public String getUsuVerificacion() {
        return UsuVerificacion;
    }

    public void setUsuVerificacion(String UsuVerificacion) {
        this.UsuVerificacion = UsuVerificacion;
    }

        
    public String getUsuEstado() {
        return UsuEstado;
    }

    public void setUsuEstado(String UsuEstado) {
        this.UsuEstado = UsuEstado;
    }
     

    public String getUsuRol() {
        return UsuRol;
    }

    public void setUsuRol(String UsuRol) {
        this.UsuRol = UsuRol;
    }

    public String getUsuId() {
        return usuId;
    }

    public void setUsuId(String usuId) {
        this.usuId = usuId;
    }
    public String getUsuPassword() {
        return UsuPassword;
    }

    public void setUsuPassword(String UsuPassword) {
        this.UsuPassword = UsuPassword;
    }
    public String getUsuCorreo() {
        return UsuCorreo;
    }

    public void setUsuCorreo(String UsuCorreo) {
        this.UsuCorreo = UsuCorreo;
    }
        public String getUsuNombre() {
        return UsuNombre;
    }

    public void setUsuNombre(String UsuNombre) {
        this.UsuNombre = UsuNombre;
    }

}
