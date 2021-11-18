/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package ModeloVO;

/**
 *
 * @author mella
 */
public class Aspe_PruVO {
    
     private String PRU_ASP_ID, FK_Prueba, FK_Aspecto, PRU_ASP_RESULTADO, PRU_ASP_ESTADO;
     
     public Aspe_PruVO() {
    }

    public Aspe_PruVO(String PRU_ASP_ID, String FK_Prueba, String FK_Aspecto, String PRU_ASP_RESULTADO, String PRU_ASP_ESTADO) {
        this.PRU_ASP_ID = PRU_ASP_ID;
        this.FK_Prueba = FK_Prueba;
        this.FK_Aspecto = FK_Aspecto;
        this.PRU_ASP_RESULTADO = PRU_ASP_RESULTADO;
        this.PRU_ASP_ESTADO = PRU_ASP_ESTADO;
    }

    public String getPRU_ASP_ID() {
        return PRU_ASP_ID;
    }

    public void setPRU_ASP_ID(String PRU_ASP_ID) {
        this.PRU_ASP_ID = PRU_ASP_ID;
    }

    public String getFK_Prueba() {
        return FK_Prueba;
    }

    public void setFK_Prueba(String FK_Prueba) {
        this.FK_Prueba = FK_Prueba;
    }

    public String getFK_Aspecto() {
        return FK_Aspecto;
    }

    public void setFK_Aspecto(String FK_Aspecto) {
        this.FK_Aspecto = FK_Aspecto;
    }

    public String getPRU_ASP_RESULTADO() {
        return PRU_ASP_RESULTADO;
    }

    public void setPRU_ASP_RESULTADO(String PRU_ASP_RESULTADO) {
        this.PRU_ASP_RESULTADO = PRU_ASP_RESULTADO;
    }

    public String getPRU_ASP_ESTADO() {
        return PRU_ASP_ESTADO;
    }

    public void setPRU_ASP_ESTADO(String PRU_ASP_ESTADO) {
        this.PRU_ASP_ESTADO = PRU_ASP_ESTADO;
    }
   
    
    
    
}
