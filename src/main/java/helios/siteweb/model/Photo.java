package helios.siteweb.model;

import java.util.Date;

public class Photo {
	
	String articlePhoto;
	String titrePhoto;
	String commentairePhoto;
	Date datePhoto;
	String lienPhoto;
	String languePhoto;
	
	public Photo(String articlePhoto, String titrePhoto, 
			String commentairePhoto, Date datePhoto, 
			String lienPhoto, String languePhoto){
		this.articlePhoto = articlePhoto;
		this.titrePhoto = titrePhoto;
		this.commentairePhoto = commentairePhoto;
		this.datePhoto = datePhoto;
		this.lienPhoto = lienPhoto;
		this.languePhoto = languePhoto;
	}
	
	public Photo(String articlePhoto, String titrePhoto, 
			String commentairePhoto,String lienPhoto){
		this.articlePhoto = articlePhoto;
		this.titrePhoto = titrePhoto;
		this.commentairePhoto = commentairePhoto;
		this.lienPhoto = lienPhoto;
	}

	public String getTitrePhoto() {
		return titrePhoto;
	}

	public void setTitrePhoto(String titrePhoto) {
		this.titrePhoto = titrePhoto;
	}

	public String getCommentairePhoto() {
		return commentairePhoto;
	}

	public void setCommentairePhoto(String commentairePhoto) {
		this.commentairePhoto = commentairePhoto;
	}

	public Date getDatePhoto() {
		return datePhoto;
	}

	public void setDatePhoto(Date datePhoto) {
		this.datePhoto = datePhoto;
	}

	public String getlienPhoto() {
		return lienPhoto;
	}

	public void setlienPhoto(String lienPhoto) {
		this.lienPhoto = lienPhoto;
	}

	public String getLanguePhoto() {
		return languePhoto;
	}

	public void setLanguePhoto(String languePhoto) {
		this.languePhoto = languePhoto;
	}

	public String getArticlePhoto() {
		return articlePhoto;
	}

	public void setArticlePhoto(String articlePhoto) {
		this.articlePhoto = articlePhoto;
	}

	public String getLienPhoto() {
		return lienPhoto;
	}

	public void setLienPhoto(String lienPhoto) {
		this.lienPhoto = lienPhoto;
	}

}
