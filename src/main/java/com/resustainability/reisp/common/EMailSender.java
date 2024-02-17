package com.resustainability.reisp.common;

import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.StringWriter;
import java.io.UnsupportedEncodingException;
import java.security.InvalidAlgorithmParameterException;
import java.security.InvalidKeyException;
import java.security.NoSuchAlgorithmException;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import java.util.Properties;
import java.util.StringTokenizer;

import javax.crypto.BadPaddingException;
import javax.crypto.IllegalBlockSizeException;
import javax.crypto.NoSuchPaddingException;
import javax.mail.Message;
import javax.mail.MessagingException;
import javax.mail.Multipart;
import javax.mail.PasswordAuthentication;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeBodyPart;
import javax.mail.internet.MimeMessage;
import javax.mail.internet.MimeMultipart;

import org.apache.log4j.Logger;
import org.apache.velocity.Template;
import org.apache.velocity.VelocityContext;
import org.apache.velocity.app.VelocityEngine;
import org.springframework.web.multipart.MultipartFile;

import com.resustainability.reisp.common.EMailSender;
import com.resustainability.reisp.model.BrainBox;
import com.resustainability.reisp.model.BrainBox;
import com.resustainability.reisp.model.RoleMapping;

public class EMailSender {

private static Logger logger = Logger.getLogger(EMailSender.class);

	/************** G Mail Server Credentials**************************************/
	private static String mailId = "businessapps.appworks@resustainability.com";
	private static String pass = "Appmint@321";
	
	public static Session getSession() {
		Properties prop = new Properties();
		
	
		
		/************** GMAIL Server Starts**************************************/
		prop.put("mail.smtp.host", "smtp.gmail.com");
        prop.put("mail.smtp.port", "587");
        prop.put("mail.smtp.auth", "true");
        prop.put("mail.smtp.starttls.enable", "true"); //TLS
		/************** GMAIL Server ends*************************************/
		
		Session session = Session.getInstance(prop,
		  new javax.mail.Authenticator() {
			protected PasswordAuthentication getPasswordAuthentication() {
				return new PasswordAuthentication(mailId, pass);
			}
		  });
		return session;
	}
	public boolean send(String toAddress, String subject, String body, BrainBox obj, String subject2) throws UnsupportedEncodingException, InvalidKeyException, NoSuchPaddingException, NoSuchAlgorithmException, InvalidAlgorithmParameterException, BadPaddingException, IllegalBlockSizeException, NullPointerException {
		boolean isSend = false;		
		try {
			MimeMessage message = new MimeMessage(getSession());
			message.setFrom(new InternetAddress(mailId, subject2));
			message.setRecipients(Message.RecipientType.TO,InternetAddress.parse(toAddress));
			message.setRecipients(Message.RecipientType.CC,InternetAddress.parse("saidileep.p@resustainability.com"));
			message.setRecipients(Message.RecipientType.BCC,InternetAddress.parse("finance.mswnoida@resustainability.com"));
			//message.setRecipients(Message.RecipientType.BCC,InternetAddress.parse(mailId));
			message.setSubject(subject,"UTF-8");
			Multipart mp = new MimeMultipart();
			MimeBodyPart htmlPart = new MimeBodyPart();
			
			htmlPart.setContent(message, "text/html");
			mp.addBodyPart(htmlPart);
			message.setContent(mp);
			message.setText( body,"utf-8", "html");
			
			Transport.send(message);
			logger.info("Email sent successfully");
			isSend = true;
		} catch (MessagingException e) {
			e.printStackTrace();
			logger.error("Exception occured while sending an email: "+e.getMessage());			
		}
		return isSend;
	}
	public boolean sendReInitiate(String toAddress, String subject, String body, RoleMapping obj) throws UnsupportedEncodingException {
		boolean isSend = false;		
		try {
			MimeMessage message = new MimeMessage(getSession());
			message.setFrom(new InternetAddress(mailId, "Safety Approver"));
			message.setRecipients(Message.RecipientType.TO,InternetAddress.parse(toAddress));
			//message.setRecipients(Message.RecipientType.CC,InternetAddress.parse(mailId));
			message.setRecipients(Message.RecipientType.BCC,InternetAddress.parse(mailId));
			message.setSubject(subject,"UTF-8");
			Multipart mp = new MimeMultipart();
			MimeBodyPart htmlPart = new MimeBodyPart();
			
			htmlPart.setContent(message, "text/html");
			mp.addBodyPart(htmlPart);
			message.setContent(mp);
			message.setText( body,"utf-8", "html");
			
			Transport.send(message);
			logger.info("Email sent successfully");
			isSend = true;
		} catch (MessagingException e) {
			e.printStackTrace();
			logger.error("Exception occured while sending an email: "+e.getMessage());			
		}
		return isSend;
	}
	public static File convert(MultipartFile file) throws IOException {
	    File convFile = new File(file.getOriginalFilename());
	    convFile.createNewFile();
	    FileOutputStream fos = new FileOutputStream(convFile);
	    fos.write(file.getBytes());
	    fos.close();
	    return convFile;
	}
	public boolean send(String mailTo,  String bcc_mailTo,String mailSubject, String body, BrainBox obj, String subject) throws UnsupportedEncodingException {
		boolean isSend = false;		
		try {
			MimeMessage message = new MimeMessage(getSession());
			message.setFrom(new InternetAddress(mailId, subject));
			message.setRecipients(Message.RecipientType.TO,InternetAddress.parse(mailTo));
			//message.setRecipients(Message.RecipientType.CC,InternetAddress.parse(mailId));
			message.setRecipients(Message.RecipientType.BCC,InternetAddress.parse(bcc_mailTo));
			message.setSubject(mailSubject,"UTF-8");
			Multipart mp = new MimeMultipart();
			MimeBodyPart htmlPart = new MimeBodyPart();
			
			htmlPart.setContent(message, "text/html");
			mp.addBodyPart(htmlPart);
			message.setContent(mp);
			message.setText( body,"utf-8", "html");
			
			Transport.send(message);
			logger.info("Email sent successfully");
			isSend = true;
		} catch (MessagingException e) {
			e.printStackTrace();
			logger.error("Exception occured while sending an email: "+e.getMessage());			
		}
		return isSend;
		
	}
	public boolean sendAdd(String mailTo, String mailSubject, String body, BrainBox obj, String subject) throws UnsupportedEncodingException {
		boolean isSend = false;		
		try {
			MimeMessage message = new MimeMessage(getSession());
			message.setFrom(new InternetAddress(mailId, subject));
			message.setRecipients(Message.RecipientType.TO,InternetAddress.parse(mailTo));
			//message.setRecipients(Message.RecipientType.CC,InternetAddress.parse(mailId));
			message.setSubject(mailSubject,"UTF-8");
			Multipart mp = new MimeMultipart();
			MimeBodyPart htmlPart = new MimeBodyPart();
			
			htmlPart.setContent(message, "text/html");
			mp.addBodyPart(htmlPart);
			message.setContent(mp);
			message.setText( body,"utf-8", "html");
			
			Transport.send(message);
			logger.info("Email sent successfully");
			isSend = true;
		} catch (MessagingException e) {
			e.printStackTrace();
			logger.error("Exception occured while sending an email: "+e.getMessage());			
		}
		return isSend;
		
	}
	public void sendIRMEmailAlerts(Mail mail, Map<String, List<BrainBox>> alerts, String today_date, String yesterday_date,
			String current_year, Map<String, List<BrainBox>> heading, String emailSubjec2) throws Exception {
		boolean isSend = false;		
		try {
			MimeMessage message = new MimeMessage(getSession());
			 Multipart multipart = new MimeMultipart( "alternative" );
			 VelocityEngine velocityEngine = new VelocityEngine();
			  Properties p = new Properties();
			  //p.setProperty("resource.loader", "class");
			  //p.setProperty("class.resource.loader.class", "org.apache.velocity.runtime.resource.loader.ClasspathResourceLoader");
			  
			  p.setProperty("resource.loader", "class");
			  p.setProperty("class.resource.loader.description", "Velocity Classpath Resource Loader");
			  p.setProperty("class.resource.loader.class", "org.apache.velocity.runtime.resource.loader.ClasspathResourceLoader");
			  
			  p.setProperty("runtime.log.logsystem.class", "org.apache.velocity.runtime.log.NullLogSystem");
			  
			  //p.setProperty(Velocity.RUNTIME_LOG_LOGSYSTEM_CLASS,    NullLogChute.class.getName());
			  try {
				  velocityEngine.init( p );    
			  }catch (Exception e) {
				  throw new Exception(e);
			  }
			     
			  Template template = velocityEngine.getTemplate("templates/"+ mail.getTemplateName());
				
			  VelocityContext velocityContext = new VelocityContext();
			  velocityContext.put("alerts", alerts);
			  velocityContext.put("heading", heading);
			  velocityContext.put("today_date", today_date);
			  velocityContext.put("yes_date", yesterday_date);
			  velocityContext.put("current_year", current_year);
			  
			  StringWriter stringWriter = new StringWriter();
			  
			  template.merge(velocityContext, stringWriter);
			  MimeBodyPart htmlPart = new MimeBodyPart();
			  htmlPart.setContent( stringWriter.toString(), "text/html; charset=utf-8" );
			  
			  ArrayList<String> recipientsArray = new ArrayList<String>();
			  StringTokenizer stringTokenizer = new StringTokenizer(mail.getMailTo(), ",");
			  message.setFrom(new InternetAddress(mailId, emailSubjec2));
			  while (stringTokenizer.hasMoreTokens()) {
				 recipientsArray.add(stringTokenizer.nextToken());
			  }
			  int sizeTo = recipientsArray.size();
			  InternetAddress[] addressTo = new InternetAddress[sizeTo];
			  for (int i = 0; i < sizeTo; i++) {
				 addressTo[i] = new InternetAddress(recipientsArray.get(i).toString());
			  }	 
			  message.setRecipients(Message.RecipientType.TO, addressTo);
			
			message.setSubject("BrainBox Report","UTF-8");
			Multipart mp = new MimeMultipart();
			
			mp.addBodyPart(htmlPart);
			message.setContent(mp);
			message.setSubject(mail.getMailSubject());

			Transport.send(message);
			logger.info("Email sent successfully");
			isSend = true;
		} catch (MessagingException e) {
			e.printStackTrace();
			logger.error("Exception occured while sending an email: "+e.getMessage());			
		}
		
	}
	
	
}
