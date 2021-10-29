
import java.util.Date;
import java.util.Properties;
import javax.mail.Authenticator;
import javax.mail.Message;
import javax.mail.MessagingException;
import javax.mail.PasswordAuthentication;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.AddressException;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 *
 * @author Intel
 */
public class PropiedadesCorreo {
    
    public static void enviarCorreo (String host, String puerto, final String usuario,
            final String clave, String direccion, String asunto, String mensaje) throws AddressException, MessagingException {
        
            //CONFIGURACION SMTP
        //dentro deun objeto almacenar varias propiedades
        Properties propiedades = new Properties();
        //Empezamos con la configuracion smtp
        propiedades.put("mail.smtp.host", host);//El servidor SMTP de Google
        propiedades.put("mail.smtp.port", puerto);//El puerto SMTP seguro de Google
        
        propiedades.put("mail.smtp.auth", "true");//Usar autenticación mediante usuario y clave
        propiedades.put("mail.smtp.starttls.enable", "true");//Para conectar de manera segura al servidor SMTP
        
        
        //utilizar ya la libreria mail
        
        //invocar un metodo que existe dentro de el
        Authenticator autenticar = new Authenticator() {
            //para autenticar un correo que pertenece a alguien, le mandamos usuario y clave
            public PasswordAuthentication getPasswordAuthentication(){
                //retorna una autenticacion verdadera o falsa
                return new PasswordAuthentication(usuario, clave);
            }
          
        };
        //se crea una sesion para enviar un mensaje unico
        Session sesion = Session.getInstance(propiedades, autenticar);
        //objeto de mensaje que ya envia... pero comoparametro se puede hacer
        Message msg = new MimeMessage(sesion);
        //sale de una clausula de internet que me la genera en la variable usuario
        //ACA PIDE DOS CLAUSULAS SUPER IMPORTANTES SI NO SALE ERROR throws AddressException, MessagingException 
        msg.setFrom(new InternetAddress(usuario));
        //arreglo de direcciones
        InternetAddress[] direcciones = {new InternetAddress(direccion) };
        msg.setRecipients(Message.RecipientType.TO, direcciones);
        msg.setSubject(asunto);
        msg.setSentDate(new Date());
        msg.setText(mensaje);
        
        //enviar el mensaje
        Transport.send(msg);
                
                
    }
    
  
}
