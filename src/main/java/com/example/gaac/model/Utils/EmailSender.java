package com.example.gaac.model.Utils;

import org.apache.commons.mail.Email;
import org.apache.commons.mail.EmailException;
import org.apache.commons.mail.SimpleEmail;

public class EmailSender {
    public static boolean sendEmail(int statusId, String useremail, String code) throws EmailException {
        boolean result=false;
        Email email= new SimpleEmail();
        email.setHostName("smtp.googlemail.com");
        email.setSmtpPort(465);
        email.setAuthentication("rsevillar19@gmail.com","pkxyuvhqmlbwhkiv");
        email.setSSLOnConnect(true);
        email.setFrom("rsevillar19@gmail.com");
        email.setSubject("Comfirmar cuenta GAAC NO-REPLY ");
        email.setMsg("1.-Haga click en el siguiente enlace para continuar con su registro \nhttp://localhost:8080/GAAC_war_exploded/RegistroEstudianteDos\n " +
                " 2.- Ingrese el siguiente código: "+code);
        email.addTo(useremail);
        email.send();
        return result;
    }
}
