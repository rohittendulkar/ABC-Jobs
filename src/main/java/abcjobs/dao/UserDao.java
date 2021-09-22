package abcjobs.dao;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;
import abcjobs.model.User;
public class UserDao {
	
	public static Connection getConnection() {
		try {
			Class.forName("com.mysql.jdbc.Driver");
			return DriverManager.getConnection("jdbc:mysql://localhost:3306/in0719a31r?useTimezone=true&serverTimezone=GMT%2B8","IN0719A31R","0eswdaa7Z");
		}catch (Exception ex) {
			ex.printStackTrace();
			return null;
		}
	}
	
	public int registerUser(String first, String last, String email, String username, String password, String wherabouts, String age, String job) throws Exception {
		int i = 0;
		try {
			String sql = "INSERT INTO users(First_Name,Last_Name,Email,Username,Password,WhereAbouts,Age,Job) VALUES (?,?,?,?,?,?,?,?)";
			PreparedStatement ps = getConnection().prepareStatement(sql);
			ps.setString(1, first);
			ps.setString(2, last);
			ps.setString(3, email);
			ps.setString(4, username);
			ps.setString(5, password);
			ps.setString(6, wherabouts);
			ps.setString(7, age);
			ps.setString(8, job);
			i = ps.executeUpdate();
			return i;
		} catch (Exception e) {
			e.printStackTrace();
			return i;
		} finally {
			if (getConnection() != null) {
				getConnection().close();
			}
		}
	}

	
	public ResultSet report(String username) throws SQLException, Exception {
		ResultSet rs = null;
		try {
			String sql = "SELECT * FROM users where Username = ?";
			PreparedStatement ps = getConnection().prepareStatement(sql);
			ps.setString(1, username);
			rs = ps.executeQuery();
			return rs;
		} catch (Exception e) {
			e.printStackTrace();
			return null;
		} finally {
			if (getConnection() != null) {
				getConnection().close();
			}
		}
	}

	public int updateUserDetails(String first, String last, String email, String password, String whereabouts, String about, String age, String job, String username)
			throws SQLException, Exception {
		getConnection().setAutoCommit(false);
		int i = 0;
		try {
			String sql = "UPDATE users SET First_Name=?,Last_Name=?,Email=?,Password=?,WhereAbouts=?,About=?,Age=?,Job=? WHERE Username=?";
			PreparedStatement ps = getConnection().prepareStatement(sql);
			ps.setString(1, first);
			ps.setString(2, last);
			ps.setString(3, email);
			ps.setString(4, password);
			ps.setString(5, whereabouts);
			ps.setString(6, about);
			ps.setString(7, age);
			ps.setString(8, job);
			ps.setString(9, username);
			i = ps.executeUpdate();
			System.out.println("dao update works");
			System.out.println(first+email+password+whereabouts+about+age+job+username);
			System.out.println(i);
			return i;
			
		} 
		catch (Exception e) {
			e.printStackTrace();
			//getConnection().rollback();//
			return 0;
		} finally {
			if (getConnection() != null) {
				getConnection().close();
			}
		}
	}

	public int deleteUserDetails(String username) throws SQLException, Exception {
		getConnection().setAutoCommit(false);
		int i = 0;
		try {
			String sql = "DELETE FROM users WHERE username=?";
			PreparedStatement ps = getConnection().prepareStatement(sql);
			ps.setString(1, username);
			i = ps.executeUpdate();
			return i;
		} catch (Exception e) {
			e.printStackTrace();
			getConnection().rollback();
			return 0;
		} finally {
			if (getConnection() != null) {
				getConnection().close();
			}
		}
	}
	public boolean login(String username,String password){  
		 boolean status=false; 
		 try {
			 PreparedStatement ps=getConnection().prepareStatement(  
			     "select * from users where Username=? and Password=?");  
			   ps.setString(1,username);  
			   ps.setString(2,password);  
			   ResultSet rs=ps.executeQuery();  
			   status=rs.next();  
			  }catch(Exception e){e.printStackTrace();}  
			 return status;  
			} 
	
	public ResultSet searchList (String Search) throws SQLException,Exception{
		ResultSet rs =null;
		if (Search != "") {
			try {
				String sql = "SELECT * FROM users where First_Name Like ? or Last_Name Like ? or Email Like ?  or WhereAbouts Like ? or Username Like ?";
				PreparedStatement ps = getConnection().prepareStatement(sql);
				ps.setString(1, "%" +Search+ "%");
				ps.setString(2, "%" +Search+ "%");
				ps.setString(3, "%" +Search+ "%");
				ps.setString(4, "%" +Search+ "%");
				ps.setString(5, "%" +Search+ "%");
				
				rs = ps.executeQuery();
			System.out.println("search query works");
			}
			catch(Exception e)
			{
				e.printStackTrace();
				
			}
			finally {
				if (getConnection() != null) {
				getConnection().close();
				}
		
			}
		}
		return rs;
	}
	
	public ResultSet reportUser(String username) throws SQLException, Exception {
		ResultSet rs = null;
		try {
		String sql = "SELECT * FROM users where Username = ?";
		PreparedStatement ps = getConnection().prepareStatement(sql);
		ps.setString(1, username);
		rs = ps.executeQuery();
		return rs;
		} catch (Exception e) {
		e.printStackTrace();
		return null;
		} finally {
		if (getConnection() != null) {
		getConnection().close();
		}
		}
		}

		public int updatePass(String email, String password) throws SQLException, Exception
		{
		int i = 0;
		try {
		 String sqls = "Update users set Password = ? where Email = ?";
		 PreparedStatement ps = getConnection().prepareStatement(sqls);
		 ps.setString(1, password);
		 ps.setString(2, email);

		 i = ps.executeUpdate();
		}
		catch(SQLException e)
		{
		 e.printStackTrace();	
		}
		catch(Exception f)
		{
		f.printStackTrace();	 
		}
		 return i;
		}

		public ResultSet forgotPass(String email) throws SQLException {
			ResultSet rs = null;
			try {
			String sql = "SELECT * FROM users where Email = ?";
			PreparedStatement ps = getConnection().prepareStatement(sql);
			ps.setString(1, email);
			rs = ps.executeQuery();
			return rs;
			} catch (Exception e) {
			e.printStackTrace();
			return null;
			} finally {
			if (getConnection() != null) {
			getConnection().close();
			}
			}	
		}
		public boolean adminLogin(String username,String password){  
			 boolean status=false; 
			 try {
				 PreparedStatement ps=getConnection().prepareStatement(  
				     "select * from admins where Username=? and Password=?");  
				   ps.setString(1,username);  
				   ps.setString(2,password);  
				   ResultSet rs=ps.executeQuery();  
				   status=rs.next();  
				  }catch(Exception e){e.printStackTrace();}  
				 return status;  
				}

		public ResultSet adminview() throws SQLException {
			ResultSet rs = null;
			try {
			String sql = "SELECT * FROM users";
			PreparedStatement ps = getConnection().prepareStatement(sql);
			rs = ps.executeQuery();
			return rs;
			} catch (Exception e) {
			e.printStackTrace();
			return null;
			} finally {
			if (getConnection() != null) {
			getConnection().close();
			}
			} 
		} 
}
