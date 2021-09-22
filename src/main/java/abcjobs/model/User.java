package abcjobs.model;

public class User {
	private int id;
	private String first,last,email,username,password,whereabouts,about,age,job;
	private int otpnum;
	private int otpvalue;
	
	public User() {
		
	}
	
	public User(String first, String last, String email, String username, String password, String whereabouts, String about, String age ,String job ) {
		
		this.first = first;
		this.last = last;
		this.email = email;
		this.username = username;
		this.password = password;
		this.about = about;
		this.age = age;
		this.job = job;
		
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
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

	public int getOtpnum() {
		return otpnum;
	}

	public void setOtpnum(int otpnum) {
		this.otpnum = otpnum;
	}

	public int getOtpvalue() {
		return otpvalue;
	}

	public void setOtpvalue(int otpvalue) {
		this.otpvalue = otpvalue;
	}
	
}
