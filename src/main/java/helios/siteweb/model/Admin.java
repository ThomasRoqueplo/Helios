package helios.siteweb.model;

public class Admin {

	private String nomAdmin;
	private String loginAdmin;
	private String mdpAdmin;
	
	public Admin(String nomAdmin, String loginAdmin, String mdpAdmin){
		this.nomAdmin = nomAdmin;
		this.loginAdmin = loginAdmin;
		this.mdpAdmin = mdpAdmin;
	}

	public String getNomAdmin() {
		return nomAdmin;
	}

	public void setNomAdmin(String nomAdmin) {
		this.nomAdmin = nomAdmin;
	}

	public String getLoginAdmin() {
		return loginAdmin;
	}

	public void setLoginAdmin(String loginAdmin) {
		this.loginAdmin = loginAdmin;
	}

	public String getMdpAdmin() {
		return mdpAdmin;
	}

	public void setMdpAdmin(String mdpAdmin) {
		this.mdpAdmin = mdpAdmin;
	}
	
	
}
