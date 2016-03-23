package helios.siteweb.model;

public class Piece {
	
	String nomPiece;
	String descriptionPiece;
	String languePiece;
	
	public Piece(String nomPiece, String descriptionPiece,
			String languePiece){
		this.nomPiece = nomPiece;
		this.descriptionPiece = descriptionPiece;
		this.languePiece = languePiece;
	}

	public String getNomPiece() {
		return nomPiece;
	}

	public void setNomPiece(String nomPiece) {
		this.nomPiece = nomPiece;
	}

	public String getDescriptionPiece() {
		return descriptionPiece;
	}

	public void setDescriptionPiece(String descriptionPiece) {
		this.descriptionPiece = descriptionPiece;
	}

	public String getLanguePiece() {
		return languePiece;
	}

	public void setLanguePiece(String languePiece) {
		this.languePiece = languePiece;
	}
	
}
