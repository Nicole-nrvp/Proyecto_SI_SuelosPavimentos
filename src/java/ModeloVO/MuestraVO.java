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
public class MuestraVO {
    
     private String mueId, mueNombre, mueObservacion, mueDescripcion, fkTipoMuestra, mueEstado;

    public MuestraVO() {
    }

    public MuestraVO(String mueId, String mueNombre, String mueObservacion, String mueDescripcion, String fkTipoMuestra, String mueEstado) {
        this.mueId = mueId;
        this.mueNombre = mueNombre;
        this.mueObservacion = mueObservacion;
        this.mueDescripcion = mueDescripcion;
        this.fkTipoMuestra = fkTipoMuestra;
        this.mueEstado = mueEstado;
    }

    public String getMueId() {
        return mueId;
    }

    public void setMueId(String mueId) {
        this.mueId = mueId;
    }

    public String getMueNombre() {
        return mueNombre;
    }

    public void setMueNombre(String mueNombre) {
        this.mueNombre = mueNombre;
    }

    public String getMueObservacion() {
        return mueObservacion;
    }

    public void setMueObservacion(String mueObservacion) {
        this.mueObservacion = mueObservacion;
    }

    public String getMueDescripcion() {
        return mueDescripcion;
    }

    public void setMueDescripcion(String mueDescripcion) {
        this.mueDescripcion = mueDescripcion;
    }

    public String getFkTipoMuestra() {
        return fkTipoMuestra;
    }

    public void setFkTipoMuestra(String fkTipoMuestra) {
        this.fkTipoMuestra = fkTipoMuestra;
    }
    
    public String getMueEstado() {
        return mueEstado;
    }

    public void setMueEstado(String mueEstado) {
        this.mueEstado = mueEstado;
    }
    
}
