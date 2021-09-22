package abcjobs.action;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.apache.struts2.ServletActionContext;

import com.opensymphony.xwork2.ActionSupport;

import abcjobs.dao.UserDao;
import abcjobs.model.User;

public class AdminFetchData extends ActionSupport {

	private static final long serialVersionUID = 6409408049751872804L;
	ResultSet rs = null;
	User adbean = null;
	ArrayList<User> userList = null;
	UserDao dao = new UserDao();
	private boolean noData = false;

	public String execute() throws Exception{
		 HttpSession session=ServletActionContext.getRequest().getSession(false); 
		 
	        if(session==null || session.getAttribute("login")==null){  
	        	return "login";
	             
	        }  
	        else{  
		        	userList = new ArrayList<User>();
		        	rs = dao.adminview();
		        	int i = 0;
		        	if (rs != null) {
		        	while (rs.next()) {
		        	i++;
		        	adbean = new User();
		        	adbean.setId(i);
		        	adbean.setFirst(rs.getString(2));
		        	adbean.setLast(rs.getString(3));
		        	adbean.setEmail(rs.getString(4));
		        	adbean.setUsername(rs.getString(5));
		        	adbean.setPassword(rs.getString(6).replaceAll("(?s).", "*"));
		        	adbean.setJob(rs.getString(10));
					userList.add(adbean);
		        	}
		        	}
		        	if (i == 0) {
		        	noData = false;
		        	} else {
		        	noData = true;
		        	}
		        	System.out.println(i);
		            return "adView";  
		        }  
		}
	public boolean isNoData() {
		return noData;
	}

	public void setNoData(boolean noData) {
		this.noData = noData;
	}
	public ArrayList<User> getUserList() {
		return userList;
	}
	public void setUserList(ArrayList<User> userList) {
		this.userList = userList;
	}
}