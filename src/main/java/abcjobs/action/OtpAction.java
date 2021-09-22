package abcjobs.action;

import javax.servlet.http.HttpSession;

import org.apache.struts2.ServletActionContext;

import com.opensymphony.xwork2.ActionSupport;


public class OtpAction extends ActionSupport{

	private static final long serialVersionUID = -8195536003535012958L;
	
	
	int ctr = 0;
	private int opt;
	
	
	public int getOpt() {
		return opt;
	}
	public void setOpt(int opt) {
		this.opt = opt;
	}
	public int getCtr() {
		return ctr;
	}
	public void setCtr(int ctr) {
		this.ctr = ctr;
	}
	
	
	public String execute() throws Exception
	{
		HttpSession session = ServletActionContext.getRequest().getSession(false);
		if(session==null || session.getAttribute("mail")==null){  
	    	
			return "Failure";
	         
	    }  
		
			int otpvalue = (Integer) session.getAttribute("otpvalue");
			System.out.println(otpvalue);
			
			System.out.println(opt);
			
			if(otpvalue == opt)
			{
				
				System.out.println("Otp matches");
			}
			
			else
			{
				System.out.println("otp does not match");
				return "error";
			}
			
		
		
		return "otpsent";
	}
	}
