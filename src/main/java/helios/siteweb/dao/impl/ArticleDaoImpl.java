package helios.siteweb.dao.impl;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import helios.siteweb.dao.ArticleDao;
import helios.siteweb.model.Article;

public class ArticleDaoImpl implements ArticleDao{

	public List<Article> getArticleAccueil() {
		List<Article> listeArticle = new ArrayList<Article>();
		
		try {
			Connection connection = DataSourceProvider.getDataSource().getConnection();
			PreparedStatement stmt = connection.prepareStatement("SELECT idArticle, titreArticle, photoPresentation FROM article ORDER BY dateArticle DESC");
			
			ResultSet rs = stmt.executeQuery();
			while (rs.next()) {
				listeArticle.add(new Article(rs.getInt("idArticle"), rs.getString("titreArticle"), 
						rs.getString("photoPresentation")));
			}
			
			rs.close();
			stmt.close();
			connection.close();

		} catch (SQLException e) {
			e.printStackTrace();
		}
		return listeArticle;
	}
	
	public List<Article> getArticleAccueilTest() {
		List<Article> listeArticle = new ArrayList<Article>();
		
		try {
			Connection connection = DataSourceProviderTest.getDataSource().getConnection();
			PreparedStatement stmt = connection.prepareStatement("SELECT idArticle, titreArticle, photoPresentation FROM article ORDER BY dateArticle DESC");
			
			ResultSet rs = stmt.executeQuery();
			while (rs.next()) {
				listeArticle.add(new Article(rs.getInt("idArticle"), rs.getString("titreArticle"), 
						rs.getString("photoPresentation")));
			}
			
			rs.close();
			stmt.close();
			connection.close();

		} catch (SQLException e) {
			e.printStackTrace();
		}
		return listeArticle;
	}
	
	public List<Article> getArticle() {
		List<Article> listeArticle = new ArrayList<Article>();
		
		try {
			Connection connection = DataSourceProvider.getDataSource().getConnection();
			PreparedStatement stmt = connection.prepareStatement("SELECT * FROM article ORDER BY dateArticle DESC");
			
			ResultSet rs = stmt.executeQuery();
			while (rs.next()) {
				listeArticle.add(new Article(rs.getInt("idArticle"), rs.getString("titreArticle"), 
						rs.getString("photoPresentation"), rs.getString("textePresentation"),
						rs.getString("dateArticle")));
			}
			
			rs.close();
			stmt.close();
			connection.close();

		} catch (SQLException e) {
			e.printStackTrace();
		}
		return listeArticle;
	}
	
	public List<Article> getArticleTest() {
		List<Article> listeArticle = new ArrayList<Article>();
		
		try {
			Connection connection = DataSourceProviderTest.getDataSource().getConnection();
			PreparedStatement stmt = connection.prepareStatement("SELECT * FROM article ORDER BY dateArticle DESC");
			
			ResultSet rs = stmt.executeQuery();
			while (rs.next()) {
				listeArticle.add(new Article(rs.getInt("idArticle"), rs.getString("titreArticle"), 
						rs.getString("photoPresentation"), rs.getString("textePresentation"),
						rs.getString("dateArticle")));
			}
			
			rs.close();
			stmt.close();
			connection.close();

		} catch (SQLException e) {
			e.printStackTrace();
		}
		return listeArticle;
	}
	
	public List<Article> getArticleCategorie(String categorie) {
		List<Article> listeArticle = new ArrayList<Article>();
		
		try {
			Connection connection = DataSourceProvider.getDataSource().getConnection();
			PreparedStatement stmt = connection.prepareStatement("SELECT * FROM article WHERE categorieArticle = ? ORDER BY dateArticle DESC");
			stmt.setString(1, categorie);
			
			ResultSet rs = stmt.executeQuery();
			while (rs.next()) {
				listeArticle.add(new Article(rs.getInt("idArticle"), rs.getString("titreArticle"), 
						rs.getString("photoPresentation"), rs.getString("textePresentation"),
						rs.getString("dateArticle")));
			}
			
			rs.close();
			stmt.close();
			connection.close();

		} catch (SQLException e) {
			e.printStackTrace();
		}
		return listeArticle;
	}
	
	public List<Article> getArticleCategorieTest(String categorie) {
		List<Article> listeArticle = new ArrayList<Article>();
		
		try {
			Connection connection = DataSourceProviderTest.getDataSource().getConnection();
			PreparedStatement stmt = connection.prepareStatement("SELECT * FROM article WHERE categorieArticle = ? ORDER BY dateArticle DESC");
			stmt.setString(1, categorie);
			
			ResultSet rs = stmt.executeQuery();
			while (rs.next()) {
				listeArticle.add(new Article(rs.getInt("idArticle"), rs.getString("titreArticle"), 
						rs.getString("photoPresentation"), rs.getString("textePresentation"),
						rs.getString("dateArticle")));
			}
			
			rs.close();
			stmt.close();
			connection.close();

		} catch (SQLException e) {
			e.printStackTrace();
		}
		return listeArticle;
	}
	
	public List<Article> getCategorie() {
		List<Article> listeArticle = new ArrayList<Article>();
		
		try {
			Connection connection = DataSourceProvider.getDataSource().getConnection();
			PreparedStatement stmt = connection.prepareStatement("SELECT DISTINCT categorieArticle FROM article ORDER BY categorieArticle");
			
			ResultSet rs = stmt.executeQuery();
			while (rs.next()) {
				listeArticle.add(new Article(rs.getString("categorieArticle")));
			}
			
			rs.close();
			stmt.close();
			connection.close();

		} catch (SQLException e) {
			e.printStackTrace();
		}
		return listeArticle;
	}
	
	public List<Article> getCategorieTest() {
		List<Article> listeArticle = new ArrayList<Article>();
		
		try {
			Connection connection = DataSourceProviderTest.getDataSource().getConnection();
			PreparedStatement stmt = connection.prepareStatement("SELECT DISTINCT categorieArticle FROM article ORDER BY categorieArticle");
			
			ResultSet rs = stmt.executeQuery();
			while (rs.next()) {
				listeArticle.add(new Article(rs.getString("categorieArticle")));
			}
			
			rs.close();
			stmt.close();
			connection.close();

		} catch (SQLException e) {
			e.printStackTrace();
		}
		return listeArticle;
	}
	
	public List<Article> getArticleRecherche(String texte) {
		List<Article> listeArticle = new ArrayList<Article>();
		
		try {
			Connection connection = DataSourceProvider.getDataSource().getConnection();
			PreparedStatement stmt = connection.prepareStatement("SELECT * FROM article WHERE CONCAT(titreArticle, ' ',textePresentation, ' ', texteArticle, ' ',categorieArticle) LIKE ?");
			stmt.setString(1, "%"+texte+"%");
			
			ResultSet rs = stmt.executeQuery();
			while (rs.next()) {
				listeArticle.add(new Article(rs.getInt("idArticle"), rs.getString("titreArticle"), 
						rs.getString("photoPresentation"), rs.getString("textePresentation"),
						rs.getString("dateArticle")));
			}
			
			rs.close();
			stmt.close();
			connection.close();

		} catch (SQLException e) {
			e.printStackTrace();
		}
		return listeArticle;
	}
	
	public List<Article> getArticleRechercheTest(String texte) {
		List<Article> listeArticle = new ArrayList<Article>();
		
		try {
			Connection connection = DataSourceProviderTest.getDataSource().getConnection();
			PreparedStatement stmt = connection.prepareStatement("SELECT * FROM article WHERE CONCAT(titreArticle, ' ',textePresentation, ' ', texteArticle, ' ',categorieArticle) LIKE ?");
			stmt.setString(1, "%"+texte+"%");
			
			ResultSet rs = stmt.executeQuery();
			while (rs.next()) {
				listeArticle.add(new Article(rs.getInt("idArticle"), rs.getString("titreArticle"), 
						rs.getString("photoPresentation"), rs.getString("textePresentation"),
						rs.getString("dateArticle")));
			}
			
			rs.close();
			stmt.close();
			connection.close();

		} catch (SQLException e) {
			e.printStackTrace();
		}
		return listeArticle;
	}
	
	public Article getArticle(Integer id) {
		Article a = new Article(null, null, null, null, null, null, null, null);
		try {
			Connection connection = DataSourceProvider.getDataSource().getConnection();
			PreparedStatement stmt = connection.prepareStatement(
					"SELECT * FROM article WHERE idArticle = ?");
			stmt.setInt(1, id);
			ResultSet resultSet = stmt.executeQuery();
			if (resultSet.next()) {
				a = new Article(resultSet.getInt("idArticle"), resultSet.getString("titreArticle"),
						resultSet.getString("photoPresentation"), resultSet.getString("textePresentation"), 
						resultSet.getString("texteArticle"), resultSet.getString("photoArticle"),
						resultSet.getString("dateArticle"),resultSet.getString("langueArticle"));
			}
			stmt.close();
			connection.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return a;
	}
}
