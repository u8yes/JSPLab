package db;

public class DTOMember {
	private String pid; 
	private String pname; 
	private String pdesc; 
	private String pprice; 
	private String pfilename;
	
	
	
	public String getPid() {
		return pid;
	}
	public void setPid(String pid) {
		this.pid = pid;
	}
	public String getPname() {
		return pname;
	}
	public void setPname(String pname) {
		this.pname = pname;
	}
	public String getPdesc() {
		return pdesc;
	}
	public void setPdesc(String pdesc) {
		this.pdesc = pdesc;
	}
	public String getPprice() {
		return pprice;
	}
	public void setPprice(String pprice) {
		this.pprice = pprice;
	}
	public String getPfilename() {
		return pfilename;
	}
	public void setPfilename(String pfilename) {
		this.pfilename = pfilename;
	}
	
	public DTOMember(String pid, String pname, String pdesc, String pprice, String pfilename) {
		super();
		this.pid = pid;
		this.pname = pname;
		this.pdesc = pdesc;
		this.pprice = pprice;
		this.pfilename = pfilename;
	} 
	
	

}
