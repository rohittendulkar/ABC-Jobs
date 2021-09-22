package abcjobs.action;

import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.http.HttpSession;

import org.apache.struts2.ServletActionContext;

import com.opensymphony.xwork2.ActionSupport;

import abcjobs.dao.UserDao;

public class UpdateAction extends ActionSupport{

	private static final long serialVersionUID = 2247515766586874605L;
	private String first= "", last= "", email= "", password = "", whereabouts = "", about = "", age = "", job = "" ;
	private String msgs = "";
	ResultSet rs = null;
	UserDao dao = new UserDao();
	String submitType;
	
	public String execute() throws SQLException,Exception {
		{
			HttpSession session=ServletActionContext.getRequest().getSession(false); 
			 
	        if(session==null || session.getAttribute("login")==null){  
	        	return "Failure";
	             
	        }  
	        
	        else 
	        {
	        	String username = (String) session.getAttribute("username");
	        	System.out.println(username);
	        	UserDao dao = new UserDao();
	        	
	        	int insert = dao.updateUserDetails(first, last, email, password, whereabouts , about, age , job ,  username );
	        	String msgs;
	        	if (insert > 0) 
	        	{
	        		msgs = "Update Successfull";
	        	} 
	        	else
	        	{
	        		msgs = "Some error";
	        	}
	         } 
	        
			/* System.out.println(first+email+password+whereabouts+about+age+job); */
	        		return "UPDATE";
		}
	        	
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


	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getWhereabouts() {
		return whereabouts;
	}

	public void setWhereabouts(String whereabouts) {
		this.whereabouts = whereabouts;
	}

	public String getAbout() {
		return about;
	}

	public void setAbout(String about) {
		this.about = about;
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

	public String getMsgs() {
		return msgs;
	}

	public void setMsgs(String msgs) {
		this.msgs = msgs;
	}	
	}

