package abcjobs.action;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.apache.struts2.ServletActionContext;

import com.opensymphony.xwork2.ActionSupport;

import abcjobs.dao.UserDao;
import abcjobs.model.User;

public class FetchData extends ActionSupport {

	private static final long serialVersionUID = 6409408049751872804L;
	ResultSet rs = null;
	User bean = null;
	ArrayList<User> beanList = null;
	UserDao dao = new UserDao();
	private boolean noData = false;

	public String execute() throws Exception{
		 HttpSession session=ServletActionContext.getRequest().getSession(false); 
		 
	        if(session==null || session.getAttribute("login")==null){  
	        	addActionMessage("Login Before You View Profile");
	        	return "loginfirst";
	             
	        }  
	        else{  
	               String username = (String) session.getAttribute("username");
		        	
		        	beanList = new ArrayList<User>();
		        	rs = dao.report(username);
		        	int i = 0;
		        	if (rs != null) {
		        	while (rs.next()) {
		        	i++;
		        	bean = new User();
		        	bean.setId(i);
					bean.setFirst(rs.getString(2));
					bean.setLast(rs.getString(3));
					bean.setEmail(rs.getString(4));
					bean.setUsername(rs.getString(5));
					bean.setPassword(rs.getString(6).replaceAll("(?s).", "*"));
					bean.setWhereabouts(rs.getString(7));
					bean.setAbout(rs.getString(8));
					bean.setAge(rs.getString(9));
					bean.setJob(rs.getString(10));
					beanList.add(bean);
		        	}
		        	}
		        	if (i == 0) {
		        	noData = false;
		        	} else {
		        	noData = true;
		        	}
		        	System.out.println(i);
		            return "REPORT";  
		        }  
		}
	public boolean isNoData() {
		return noData;
	}

	public void setNoData(boolean noData) {
		this.noData = noData;
	}

	public ArrayList<User> getBeanList() {
		return beanList;
	}

	public void setBeanList(ArrayList<User> beanList) {
		this.beanList = beanList;
	}
}