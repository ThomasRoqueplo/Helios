package helios.siteweb.model;

public class Partenaire {
	
	String nomPartenaire;
	String descriptionPartenaire;
	String photoPartenaire;
	String lienPartenaire;
	String languePartenaire;
	int importancePartenaire;
	
	public Partenaire(String nomPartenaire, String descriptionPartenaire,
			String photoPartenaire, String lienPartenaire, String languePartenaire, 
			int importancePartenaire){
		this.nomPartenaire = nomPartenaire;
		this.descriptionPartenaire = descriptionPartenaire;
		this.lienPartenaire= lienPartenaire;
		this.languePartenaire = languePartenaire;
		this.importancePartenaire = importancePartenaire;
	}
	
	public Partenaire(String nomPartenaire, String descriptionPartenaire,
			String photoPartenaire, String lienPartenaire){
		this.nomPartenaire = nomPartenaire;
		this.descriptionPartenaire = descriptionPartenaire;
		this.photoPartenaire = photoPartenaire;
		this.lienPartenaire = lienPartenaire;
	}

	public String getNomPartenaire() {
		return nomPartenaire;
	}

	public void setNomPartenaire(String nomPartenaire) {
		this.nomPartenaire = nomPartenaire;
	}

	public String getDescriptionPartenaire() {
		return descriptionPartenaire;
	}

	public void setDescriptionPartenaire(String descriptionPartenaire) {
		this.descriptionPartenaire = descriptionPartenaire;
	}

	public String getLanguePartenaire() {
		return languePartenaire;
	}

	public void setLanguePartenaire(String languePartenaire) {
		this.languePartenaire = languePartenaire;
	}

	public int getImportancePartenaire() {
		return importancePartenaire;
	}

	public void setImportancePartenaire(int importancePartenaire) {
		this.importancePartenaire = importancePartenaire;
	}
	
}
