/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package ModeloVO;

/**
 *
 * @author Intel
 */
public class ClienteVO {
    private String cliId, cliNombre, cliApellido, cliDocumento, cliTipoDoc, cliCorreo, cliCelular, cliEstado;

    public ClienteVO() {
    }

    public ClienteVO(String cliId, String cliNombre, String cliApellido, String cliDocumento, String cliTipoDoc, String cliCorreo, String cliCelular, String cliEstado) {
        this.cliId = cliId;
        this.cliNombre = cliNombre;
        this.cliApellido = cliApellido;
        this.cliDocumento = cliDocumento;
        this.cliTipoDoc = cliTipoDoc;
        this.cliCorreo = cliCorreo;
        this.cliCelular = cliCelular;
        this.cliEstado = cliEstado;
    }

    public String getCliId() {
        return cliId;
    }

    public void setCliId(String cliId) {
        this.cliId = cliId;
    }

    public String getCliNombre() {
        return cliNombre;
    }

    public void setCliNombre(String cliNombre) {
        this.cliNombre = cliNombre;
    }

    public String getCliApellido() {
        return cliApellido;
    }

    public void setCliApellido(String cliApellido) {
        this.cliApellido = cliApellido;
    }

    public String getCliDocumento() {
        return cliDocumento;
    }

    public void setCliDocumento(String cliDocumento) {
        this.cliDocumento = cliDocumento;
    }

    public String getCliTipoDoc() {
        return cliTipoDoc;
    }

    public void setCliTipoDoc(String cliTipoDoc) {
        this.cliTipoDoc = cliTipoDoc;
    }

    public String getCliCorreo() {
        return cliCorreo;
    }

    public void setCliCorreo(String cliCorreo) {
        this.cliCorreo = cliCorreo;
    }

    public String getCliCelular() {
        return cliCelular;
    }

    public void setCliCelular(String cliCelular) {
        this.cliCelular = cliCelular;
    }
    
     public String getCliEstado() {
        return cliEstado;
    }

    public void setCliEstado(String cliEstado) {
        this.cliEstado = cliEstado;
    }
    
    
    
}
