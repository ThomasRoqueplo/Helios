package helios.siteweb.dao;

import java.util.List;

import helios.siteweb.model.Article;

public interface ArticleDao {
	
	public List<Article> getArticleAccueil();
	
	public List<Article> getArticleAccueilTest();
	
	public List<Article> getArticle();
	
	public Article getArticle(Integer id);
	
	public List<Article> getArticleTest();
	
	public List<Article> getArticleCategorie(String categorie);
	
	public List<Article> getArticleCategorieTest(String categorie);
	
	public List<Article> getCategorie();
	
	public List<Article> getCategorieTest();
	
	public List<Article> getArticleRecherche(String texte);
	
	public List<Article> getArticleRechercheTest(String texte);

}
