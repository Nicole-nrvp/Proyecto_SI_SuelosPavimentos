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
public class FuncionarioVO {

     private String FunId,FunNombre,FunApellido,FunTipoDoc,FunDoc,
            FunCelular,FunSexo,FechaNacimiento,FunDireccion,FunCorreo,FunPuesto,FunEstado;

    public FuncionarioVO() {
    }
   
    public FuncionarioVO(String FunId, String FunNombre, String FunApellido, String FunTipoDoc, String FunDoc, String FunCelular, String FunSexo, String FechaNacimiento, String FunDireccion, String FunCorreo, String FunPuesto,String FunEstado) {
        this.FunId = FunId;
        this.FunNombre = FunNombre;
        this.FunApellido = FunApellido;
        this.FunTipoDoc = FunTipoDoc;
        this.FunDoc = FunDoc;
        this.FunCelular = FunCelular;
        this.FunSexo = FunSexo;
        this.FechaNacimiento = FechaNacimiento;
        this.FunDireccion = FunDireccion;
        this.FunCorreo = FunCorreo;
        this.FunPuesto = FunPuesto;
        this.FunEstado = FunEstado;
    }

    public String getFunId() {
        return FunId;
    }

    public void setFunId(String FunId) {
        this.FunId = FunId;
    }

    public String getFunNombre() {
        return FunNombre;
    }

    public void setFunNombre(String FunNombre) {
        this.FunNombre = FunNombre;
    }

    public String getFunApellido() {
        return FunApellido;
    }

    public void setFunApellido(String FunApellido) {
        this.FunApellido = FunApellido;
    }

    public String getFunTipoDoc() {
        return FunTipoDoc;
    }

    public void setFunTipoDoc(String FunTipoDoc) {
        this.FunTipoDoc = FunTipoDoc;
    }

    public String getFunDoc() {
        return FunDoc;
    }

    public void setFunDoc(String FunDoc) {
        this.FunDoc = FunDoc;
    }

    public String getFunCelular() {
        return FunCelular;
    }

    public void setFunCelular(String FunCelular) {
        this.FunCelular = FunCelular;
    }

    public String getFunSexo() {
        return FunSexo;
    }

    public void setFunSexo(String FunSexo) {
        this.FunSexo = FunSexo;
    }

    public String getFechaNacimiento() {
        return FechaNacimiento;
    }

    public void setFechaNacimiento(String FechaNacimiento) {
        this.FechaNacimiento = FechaNacimiento;
    }

    public String getFunDireccion() {
        return FunDireccion;
    }

    public void setFunDireccion(String FunDireccion) {
        this.FunDireccion = FunDireccion;
    }

    public String getFunCorreo() {
        return FunCorreo;
    }

    public void setFunCorreo(String FunCorreo) {
        this.FunCorreo = FunCorreo;
    }

    public String getFunPuesto() {
        return FunPuesto;
    }

    public void setFunPuesto(String FunPuesto) {
        this.FunPuesto = FunPuesto;
    }
    public String getFunEstado() {
        return FunEstado;
    }

    public void setFunEstado(String FunEstado) {
        this.FunEstado = FunEstado;
    }
    
}
