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
public class TipoEnsayoVO {
    
    public TipoEnsayoVO() {
    }
    
    private String Tip_Ens_ID, Tip_Ens_Nombre, FK_Clas_Ensayo, Tip_Ens_Estado;

    public TipoEnsayoVO (String Tip_Ens_ID, String Tip_Ens_Nombre, String FK_Clas_Ensayo, String Tip_Ens_Estado){
        this.Tip_Ens_ID = Tip_Ens_ID;
        this.Tip_Ens_Nombre = Tip_Ens_Nombre;
        this.FK_Clas_Ensayo = FK_Clas_Ensayo;
        this.Tip_Ens_Estado = Tip_Ens_Estado;
    }

    //getter and setter
    public String getTip_Ens_ID() {
        return Tip_Ens_ID;
    }

    public void setTip_Ens_ID(String Tip_Ens_ID) {
        this.Tip_Ens_ID = Tip_Ens_ID;
    }

    public String getTip_Ens_Nombre() {
        return Tip_Ens_Nombre;
    }

    public void setTip_Ens_Nombre(String Tip_Ens_Nombre) {
        this.Tip_Ens_Nombre = Tip_Ens_Nombre;
    }

    public String getFK_Clas_Ensayo() {
        return FK_Clas_Ensayo;
    }

    public void setFK_Clas_Ensayo(String FK_Clas_Ensayo) {
        this.FK_Clas_Ensayo = FK_Clas_Ensayo;
    }
    public String getTip_Ens_Estado() {
        return Tip_Ens_Estado;
    }

    public void setTip_Ens_Estado(String Tip_Ens_Estado) {
        this.Tip_Ens_Estado = Tip_Ens_Estado;
    }
}
