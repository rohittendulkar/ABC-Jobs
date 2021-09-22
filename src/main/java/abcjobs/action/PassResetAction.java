package abcjobs.action;

import java.sql.SQLException;

import javax.servlet.http.HttpSession;

import org.apache.struts2.ServletActionContext;

import com.opensymphony.xwork2.ActionSupport;

import abcjobs.dao.UserDao;

public class PassResetAction extends ActionSupport {
	
	private static final long serialVersionUID = -7244007336097269016L;
	
	private String password;
	
	public String execute() throws SQLException, Exception 
	{
		HttpSession session=ServletActionContext.getRequest().getSession(false); 
		 
        if(session==null || session.getAttribute("mail")==null){  
        	return "Failure";
             
        }  
        
        else 
        {
        	String email = (String) session.getAttribute("Email");
        	
        	
        	UserDao dao = new UserDao();
        	int insert = dao.updatePass(email, password);
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
        		return "updatepass";
        	
        }
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	
}

