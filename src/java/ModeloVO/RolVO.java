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
public class RolVO {

    private String RolId, RolNombre;

    public RolVO(String RolId, String RolNombre) {
        this.RolId = RolId;
        this.RolNombre = RolNombre;
    }

    public String getRolId() {
        return RolId;
    }

    public void setRolId(String RolId) {
        this.RolId = RolId;
    }

    public String getRolNombre() {
        return RolNombre;
    }

    public void setRolNombre(String RolNombre) {
        this.RolNombre = RolNombre;
    }

}
