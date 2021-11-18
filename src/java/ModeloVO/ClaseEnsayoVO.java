/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package ModeloVO;

/**
 *
 * @author as
 */
public class ClaseEnsayoVO {

    public ClaseEnsayoVO() {
    }

    private String Cla_Ens_ID, Cla_Ens_Nombre, Cla_Ens_Estado;
    
    public ClaseEnsayoVO (String ClasEnsID, String ClasEnsNombre, String ClasEnsEstado){
        this.Cla_Ens_ID = ClasEnsID;
        this.Cla_Ens_Nombre = ClasEnsNombre;
        this.Cla_Ens_Estado = ClasEnsEstado;
    }
    //getter and setter
    public String getClasEnsID() {
        return Cla_Ens_ID;
    }

    public void setClasEnsID(String ClasEnsID) {
        this.Cla_Ens_ID = ClasEnsID;
    }

    public String getClasEnsNombre() {
        return Cla_Ens_Nombre;
    }

    public void setClasEnsNombre(String ClasEnsNombre) {
        this.Cla_Ens_Nombre = ClasEnsNombre;
    }
    public String getClasEnsEstado() {
        return Cla_Ens_Estado;
    }

    public void setClasEnsEstado(String ClasEnsEstado) {
        this.Cla_Ens_Estado = ClasEnsEstado;
    }
}
