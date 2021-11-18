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
public class TipoMuestraVO {
    
    private String tipMueId, tipMueNombre, tipMueEstado;

    public TipoMuestraVO() {
    }

    public TipoMuestraVO(String tiMueId, String tipMueNombre, String tipMueEstado) {
        this.tipMueId = tiMueId;
        this.tipMueNombre = tipMueNombre;
        this.tipMueEstado = tipMueEstado;
    }

    public String getTipMueId() {
        return tipMueId;
    }

    public void setTipMueId(String tipMueId) {
        this.tipMueId = tipMueId;
    }

    public String getTipMueNombre() {
        return tipMueNombre;
    }

    public void setTipMueNombre(String tipMueNombre) {
        this.tipMueNombre = tipMueNombre;
    }
    
    public String getTipMueEstado() {
        return tipMueEstado;
    }

    public void setTipMueEstado(String tipMueEstado) {
        this.tipMueEstado = tipMueEstado;
    }
    
}
