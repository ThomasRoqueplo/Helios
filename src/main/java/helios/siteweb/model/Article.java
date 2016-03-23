package helios.siteweb.model;

public class Article {
	
	private Integer id;
	private String titreArticle;
	private String photoPresentation;
	private String textePresentation;
	private String texteArticle;
	private String photoArticle;
	private String dateArticle;
	private String categorieArticle;
	private String langueArticle;
	
	public Article(Integer id, String titreArticle, String photoPresentation,
			String textePresentation, String texteArticle,
			String photoArticle, String dateArticle, 
			String categorieArticle, String langueArticle){
		this.id = id;
		this.titreArticle = titreArticle;
		this.photoPresentation = photoPresentation;
		this.textePresentation = textePresentation;
		this.texteArticle = texteArticle;
		this.photoArticle = photoArticle;
		this.dateArticle = dateArticle;
		this.categorieArticle = categorieArticle;
		this.langueArticle = langueArticle;
	}
	
	public Article(Integer id, String titreArticle, String photoPresentation,
			String textePresentation, String texteArticle,
			String photoArticle, String dateArticle, 
			String langueArticle){
		this.id = id;
		this.titreArticle = titreArticle;
		this.photoPresentation = photoPresentation;
		this.textePresentation = textePresentation;
		this.texteArticle = texteArticle;
		this.photoArticle = photoArticle;
		this.dateArticle = dateArticle;
		this.langueArticle = langueArticle;
	}
	
	public Article(Integer id, String titreArticle, String photoPresentation){
		this.id = id;
		this.titreArticle = titreArticle;
		this.photoPresentation = photoPresentation;
	}
	
	public Article(Integer id, String titreArticle, String photoPresentation,
			String textePresentation, String dateArticle){
		this.id = id;
		this.titreArticle = titreArticle;
		this.photoPresentation = photoPresentation;
		this.textePresentation = textePresentation;
		this.dateArticle = dateArticle;
	}
	
	public Article(String categorieArticle){
		this.categorieArticle = categorieArticle;
	}

	public String getTitreArticle() {
		return titreArticle;
	}

	public void setTitreArticle(String titreArticle) {
		this.titreArticle = titreArticle;
	}

	public String getPhotoPresentation() {
		return photoPresentation;
	}

	public void setPhotoPresentation(String photoPresentation) {
		this.photoPresentation = photoPresentation;
	}

	public String getTextePresentation() {
		return textePresentation;
	}

	public void setTextePresentation(String textePresentation) {
		this.textePresentation = textePresentation;
	}

	public String getTexteArticle() {
		return texteArticle;
	}

	public void setTexteArticle(String texteArticle) {
		this.texteArticle = texteArticle;
	}

	public String getPhotoArticle() {
		return photoArticle;
	}

	public void setPhotoArticle(String photoArticle) {
		this.photoArticle = photoArticle;
	}

	public String getDateArticle() {
		return dateArticle;
	}

	public void setDateArticle(String dateArticle) {
		this.dateArticle = dateArticle;
	}

	public String getLangueArticle() {
		return langueArticle;
	}

	public void setLangueArticle(String langueArticle) {
		this.langueArticle = langueArticle;
	}

	public String getCategorieArticle() {
		return categorieArticle;
	}

	public void setCategorieArticle(String categorieArticle) {
		this.categorieArticle = categorieArticle;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}
	
}
