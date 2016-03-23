package helios.siteweb.model;

public class Voiture {
	
	String nomVoiture;
	String descriptionVoiture;
	String langueVoiture;
	
	public Voiture(String nomVoiture, String descriptionVoiture,
			String langueVoiture){
		this.nomVoiture = nomVoiture;
		this.descriptionVoiture = descriptionVoiture;
		this.langueVoiture = langueVoiture;
	}

	public String getNomVoiture() {
		return nomVoiture;
	}

	public void setNomVoiture(String nomVoiture) {
		this.nomVoiture = nomVoiture;
	}

	public String getDescriptionVoiture() {
		return descriptionVoiture;
	}

	public void setDescriptionVoiture(String descriptionVoiture) {
		this.descriptionVoiture = descriptionVoiture;
	}

	public String getLangueVoiture() {
		return langueVoiture;
	}

	public void setLangueVoiture(String langueVoiture) {
		this.langueVoiture = langueVoiture;
	}
	
	
}
