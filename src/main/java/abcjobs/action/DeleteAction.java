package abcjobs.action;

import com.opensymphony.xwork2.ActionSupport;

import abcjobs.dao.UserDao;

public class DeleteAction extends ActionSupport {

	private static final long serialVersionUID = 2527940264047177347L;
	String username, msg;
	UserDao dao = new UserDao();
	
	public String execute() throws Exception {
		try {
			int isDeleted = dao.deleteUserDetails(username);
			if (isDeleted > 0) {
				msg = "Record deleted successfully";
			} else {
				msg = "Some error";
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return "DELETE";
	}

	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public String getMsg() {
		return msg;
	}

	public void setMsg(String msg) {
		this.msg = msg;
	}
}
