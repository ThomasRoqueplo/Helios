package helios.siteweb.model;

public class Membre {
	
	String nomMembre;
	String prenomMembre;
	String jobMembre;
	String photoMembre;
	String descpritonMembre;
	String facebookMembre;
	String linkMembre;
	String twitterMembre;
	String instaMembre;
	String mailMembre;
	String langueMembre;
	
	public Membre(String nomMembre, String prenomMembre, 
			String jobMembre,String photoMembre, String descpritonMembre, 
			String facebookMembre, String linkMembre,
			String twitterMembre, String instaMembre,
			String mailMembre, String langueMembre){
		this.nomMembre = nomMembre;
		this.prenomMembre = prenomMembre;
		this.jobMembre = jobMembre;
		this.photoMembre = photoMembre;
		this.descpritonMembre = descpritonMembre;
		this.facebookMembre = facebookMembre;
		this.linkMembre = linkMembre;
		this.twitterMembre = twitterMembre;
		this.instaMembre = instaMembre;
		this.mailMembre = mailMembre;
		this.langueMembre = langueMembre;
	}
	
	public Membre(String nomMembre, String prenomMembre, 
			String jobMembre, String photoMembre, String descpritonMembre, 
			String facebookMembre, String linkMembre,
			String twitterMembre, String instaMembre,
			String mailMembre){
		this.nomMembre = nomMembre;
		this.prenomMembre = prenomMembre;
		this.jobMembre = jobMembre;
		this.photoMembre = photoMembre;
		this.descpritonMembre = descpritonMembre;
		this.facebookMembre = facebookMembre;
		this.linkMembre = linkMembre;
		this.twitterMembre = twitterMembre;
		this.instaMembre = instaMembre;
		this.mailMembre = mailMembre;
	}

	public String getPhotoMembre() {
		return photoMembre;
	}

	public void setPhotoMembre(String photoMembre) {
		this.photoMembre = photoMembre;
	}

	public String getNomMembre() {
		return nomMembre;
	}

	public void setNomMembre(String nomMembre) {
		this.nomMembre = nomMembre;
	}

	public String getPrenomMembre() {
		return prenomMembre;
	}

	public void setPrenomMembre(String prenomMembre) {
		this.prenomMembre = prenomMembre;
	}

	public String getJobMembre() {
		return jobMembre;
	}

	public void setJobMembre(String jobMembre) {
		this.jobMembre = jobMembre;
	}

	public String getDescpritonMembre() {
		return descpritonMembre;
	}

	public void setDescpritonMembre(String descpritonMembre) {
		this.descpritonMembre = descpritonMembre;
	}

	public String getFacebookMembre() {
		return facebookMembre;
	}

	public void setFacebookMembre(String facebookMembre) {
		this.facebookMembre = facebookMembre;
	}

	public String getLinkMembre() {
		return linkMembre;
	}

	public void setLinkMembre(String linkMembre) {
		this.linkMembre = linkMembre;
	}

	public String getTwitterMembre() {
		return twitterMembre;
	}

	public void setTwitterMembre(String twitterMembre) {
		this.twitterMembre = twitterMembre;
	}

	public String getInstaMembre() {
		return instaMembre;
	}

	public void setInstaMembre(String instaMembre) {
		this.instaMembre = instaMembre;
	}

	public String getMailMembre() {
		return mailMembre;
	}

	public void setMailMembre(String mailMembre) {
		this.mailMembre = mailMembre;
	}

	public String getLangueMembre() {
		return langueMembre;
	}

	public void setLangueMembre(String langueMembre) {
		this.langueMembre = langueMembre;
	}
	
}
