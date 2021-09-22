package abcjobs.action;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import com.opensymphony.xwork2.ActionSupport;

import abcjobs.dao.UserDao;
import abcjobs.model.User;

public class SearchProfileAction extends ActionSupport{

	private static final long serialVersionUID = 8858827888490547481L;
	private String username;
	ResultSet rs = null;
	User bean = null;
	ArrayList<User> beanList = null;
	UserDao dao = new UserDao();
	private boolean noData = false;
	
	public String execute() throws SQLException, Exception{
		
    	beanList = new ArrayList<User>();
    	rs = dao.reportUser(username);
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
        return "searched";
}

	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
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