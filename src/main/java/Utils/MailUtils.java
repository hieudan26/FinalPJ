package Utils;

import javax.mail.*;
import javax.mail.internet.AddressException;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;
import java.util.Properties;

import static Constant.WebConstant.*;

public class MailUtils {
    private String useremail;
    public MailUtils(String useremail) {
        this.useremail = useremail;
    }
    public void sendMail(String contentmail){
        String emailsender = MAIL_SENDER;
        String password  = PASS_MAIL_SENDER;
        Properties properties = this.propertiesMail();

        Session session = Session.getDefaultInstance(properties,new javax.mail.Authenticator(){
            protected PasswordAuthentication getPasswordAuthentication(){
                return new PasswordAuthentication(emailsender,password);
            }
        });

        try{
            MimeMessage message = new MimeMessage(session);
            message.setFrom(new InternetAddress(emailsender));
            message.addRecipient(Message.RecipientType.TO,new InternetAddress(useremail));
            message.setSubject("MIOCA shop in Email Vertication Link" );
            message.setContent(contentmail, "text/html");
            Transport.send(message);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    private Properties propertiesMail(){
        Properties properties = new Properties();

        properties.put("mail.smtp.auth",true);
        properties.put("mail.smtp.starttls.enable",true);
        properties.put("mail.smtp.host","smtp.gmail.com");
        properties.put("mail.smtp.port","587");
        properties.put("mail.smtp.ssl.trust", "smtp.gmail.com");
        properties.put("mail.smtp.ssl.protocols", "TLSv1.2");
        return properties;
    }

    public void sendMaiRegister(){
        String token = TokenUltils.getToken(useremail);
        String LinkSending = WEB_URL+"/ActiveAccount?key="+token;
        String content = "<h1>Vertication Link....</h1></br>" +
                "<b >Your Verification Link:</b> "+LinkSending;
        sendMail(LinkSending);
    }
    public void sendMaiForget(String password){
        String token = TokenUltils.getToken(useremail);
        String hashPassword = TokenUltils.getToken(password);
        String LinkSending = WEB_URL+"/forgetpass?mail="+token+"&newpass="+hashPassword;
        String content = "<h1>Confirm new password Link....</h1></br>" +
                "<b >Your Verification to change Password Link:</b> "+LinkSending;
        sendMail(LinkSending);
    }
}
