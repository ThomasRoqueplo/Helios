package helios.siteweb.model;

public class Evenement {
	
	String articleEvenement;
	String nomEvenement;
	String descriptionEvenement;
	String dateEvenement;
	String photoEvenement;
	
	public Evenement(String articleEvenement, String nomEvenement ,String descriptionEvenement, 
			String dateEvenement,	String photoEvenement){
		this.articleEvenement = articleEvenement;
		this.nomEvenement = nomEvenement;
		this.descriptionEvenement = descriptionEvenement;
		this.dateEvenement = dateEvenement;
		this.photoEvenement = photoEvenement;
	}

	public String getNomEvenement() {
		return nomEvenement;
	}

	public void setNomEvenement(String nomEvenement) {
		this.nomEvenement = nomEvenement;
	}

	public String getDescriptionEvenement() {
		return descriptionEvenement;
	}

	public void setDescriptionEvenement(String descriptionEvenement) {
		this.descriptionEvenement = descriptionEvenement;
	}

	public String getDateEvenement() {
		return dateEvenement;
	}

	public void setDateEvenement(String dateEvenement) {
		this.dateEvenement = dateEvenement;
	}

	public String getPhotoEvenement() {
		return photoEvenement;
	}

	public void setPhotoEvenement(String photoEvenement) {
		this.photoEvenement = photoEvenement;
	}

	public String getArticleEvenement() {
		return articleEvenement;
	}

	public void setArticleEvenement(String articleEvenement) {
		this.articleEvenement = articleEvenement;
	}
	
}
