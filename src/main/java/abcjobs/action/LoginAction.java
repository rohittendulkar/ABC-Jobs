package abcjobs.action;

import java.sql.SQLException;
import java.util.Map;

import org.apache.struts2.dispatcher.SessionMap;
import org.apache.struts2.interceptor.SessionAware;

import com.opensymphony.xwork2.ActionSupport;

import abcjobs.dao.UserDao;

public class LoginAction extends ActionSupport implements SessionAware{

	private static final long serialVersionUID = 8034603313810259027L;
	private String username,password;  
	SessionMap<String,Object> sessionmap;  
	  
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
	public void setSession(Map<String, Object> map) {  
	    this.sessionmap=(SessionMap)map;  
	}
	
	public String execute() throws SQLException,Exception{  
		if(username != null) {
			UserDao dao = new UserDao();
			boolean check = dao.login(username,password);
			
			
			if(check == true)
			{
				String  messages = "Login is successfull";
						   
			}
			else {
				String messages = "Please Enter Valid Username and Password";
				return "error";
			}
			 sessionmap.put("login","true");  
			 sessionmap.put("username",username);  
		}
		
		return "login";
		}  
	  
	public String logout(){  
	    sessionmap.invalidate();  
	    return "success";  
	}   
	}  
