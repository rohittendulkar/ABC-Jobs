package abcjobs.action;

import java.sql.ResultSet;
import java.util.ArrayList;

import com.opensymphony.xwork2.ActionSupport;

import abcjobs.dao.UserDao;
import abcjobs.model.User;

public class SearchAction extends ActionSupport {

	private static final long serialVersionUID = 8732674573242370519L;
	private String Search;
	ResultSet rs = null;
	User bean = null;
	ArrayList<User> beanList = null;
	UserDao dao = new UserDao();
	private boolean noData = false;
	
	public String execute() throws Exception {
		beanList = new ArrayList<User>();
		rs = dao.searchList(Search);
		System.out.println(Search);
		int i = 0;
		
		while (rs.next()) {
			i++;
			bean = new User();
			bean.setFirst(rs.getString("First_Name"));
			bean.setLast(rs.getString("Last_Name"));
			bean.setEmail(rs.getString("Email"));
			bean.setUsername(rs.getString("Username"));
			beanList.add(bean);
		}
		System.out.println(i);
		if (i == 0) {
			noData = false;
		} else {
			noData = true;
		}
		return "search";
		}

	public String getSearch() {
		return Search;
	}

	public void setSearch(String search) {
		this.Search = search;
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
