package db;

public class DTOordaContent {
	private String oid;
	private String otitle;
	private String odesc;
	
	public String getOid() {
		return oid;
	}
	public void setOid(String oid) {
		this.oid = oid;
	}
	public String getOtitle() {
		return otitle;
	}
	public void setOtitle(String otitle) {
		this.otitle = otitle;
	}
	public String getOdesc() {
		return odesc;
	}
	public void setOdesc(String odesc) {
		this.odesc = odesc;
	}
	
	public DTOordaContent(String oid, String otitle, String odesc) {
		super();
		this.oid = oid;
		this.otitle = otitle;
		this.odesc = odesc;
	}
	
	
	
}
