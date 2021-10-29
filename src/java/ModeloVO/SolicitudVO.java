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
public class SolicitudVO {
    
    private String solId, solFechaInicio, solFechaFin, solNombre, clienteId, solEstado;

    public SolicitudVO() {
    }

    public SolicitudVO(String solId, String solFechaInicio, String solFechaFin, String solNombre,  String clienteId, String solEstado) {
        this.solId = solId;
        this.solFechaInicio = solFechaInicio;
        this.solFechaFin = solFechaFin;
        this.solNombre = solNombre;
        this.clienteId = clienteId;
        this.solEstado = solEstado;
    }

    public String getSolId() {
        return solId;
    }

    public void setSolId(String solId) {
        this.solId = solId;
    }

    public String getSolFechaInicio() {
        return solFechaInicio;
    }

    public void setSolFechaInicio(String solFechaInicio) {
        this.solFechaInicio = solFechaInicio;
    }

    public String getSolFechaFin() {
        return solFechaFin;
    }

    public void setSolFechaFin(String solFechaFin) {
        this.solFechaFin = solFechaFin;
    }

    public String getSolNombre() {
        return solNombre;
    }

    public void setSolNombre(String solNombre) {
        this.solNombre = solNombre;
    }
    public String getClienteId() {
        return clienteId;
    }

    public void setClienteId(String clienteId) {
        this.clienteId = clienteId;
    }
    
    public String getSolEstado() {
        return solEstado;
    }

    public void setSolEstado(String solEstado) {
        this.solEstado = solEstado;
    }
    
}
