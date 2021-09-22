package abcjobs.action;

import java.util.Properties;

import javax.mail.Message;
import javax.mail.MessagingException;
import javax.mail.PasswordAuthentication;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;

import com.opensymphony.xwork2.ActionSupport;

import abcjobs.dao.UserDao;

public class RegisterAction extends ActionSupport {
	private static final long serialVersionUID = -5723247855816278367L;
	private String first, last, email, username, password,whereabouts, age, job;
	private String msg = "";
	UserDao dao = null;
	int ctr = 0;

	@Override
	public String execute() throws Exception {
		dao = new UserDao();

		String to = getEmail();
	       Properties properties = new Properties();
	       properties.put("mail.smtp.host", "smtp.gmail.com");
	       properties.put("mail.smtp.socketFactory.port", "465");
	       properties.put("mail.smtp.socketFactory.class", "javax.net.ssl.SSLSocketFactory");
	       properties.put("mail.smtp.auth", "true");
	       properties.put("mail.smtp.port", "465");

	       Session session = Session.getDefaultInstance(properties, new javax.mail.Authenticator() {
	           protected PasswordAuthentication getPasswordAuthentication() {
	               return new PasswordAuthentication("rohit.abcjobs@gmail.com", "abcjobs123A");
	           }
	       });
	       try {
	           MimeMessage message = new MimeMessage(session);
	           message.setFrom(new InternetAddress("rohitfromabcjobs@gmail.com"));
	           message.addRecipient(Message.RecipientType.TO, new InternetAddress(to));
	           message.setSubject("Registration Confirmation");
	           message.setText("Hey" + " " + getFirst() + " " + "we are so happy to see you join our community, have fun. Please Login to your account to get started.");
	           Transport.send(message); 
	           System.out.println("message sent to " + getEmail());
	       }catch (MessagingException e) {
	           throw new RuntimeException(e);
	       }

		try {
			ctr = dao.registerUser(first, last , email , username , password, whereabouts, age, job);
			if (ctr > 0) {
				msg = "Registration Successfull";
				return "REGSUCCESS";
			} else {
				msg = "Some error";
				return "REGERROR";
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return "REGISTER";
	}

	public String getFirst() {
		return first;
	}

	public void setFirst(String first) {
		this.first = first;
	}

	public String getLast() {
		return last;
	}

	public void setLast(String last) {
		this.last = last;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getWhereabouts() {
		return whereabouts;
	}

	public void setWhereabouts(String whereabouts) {
		this.whereabouts = whereabouts;
	}

	public String getAge() {
		return age;
	}

	public void setAge(String age) {
		this.age = age;
	}

	public String getJob() {
		return job;
	}

	public void setJob(String job) {
		this.job = job;
	}

	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getMsg() {
		return msg;
	}

	public void setMsg(String msg) {
		this.msg = msg;
	}
}