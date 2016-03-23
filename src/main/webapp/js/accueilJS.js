var getArticleAccueil = function(){
	var requeteGetArticleAccueil = new XMLHttpRequest();
	requeteGetArticleAccueil.open("GET", "ws/article/accueil");
	requeteGetArticleAccueil.responseType = "json";
	requeteGetArticleAccueil.onload = function(){
		var a = this.response.length;
		for(var i=0; i<a; i++){
			var lienPage = "/helios/"+this.response[i].titreArticle;
			var lienImg = "img/"+this.response[i].photoPresentation;
			var divArticle = document.createElement('div');
			var divHover = document.createElement('div');
			var imgArticle = document.createElement('img');
			var divOverlay = document.createElement('div');
			var h2 = document.createElement('h2');
			var p = document.createElement('p');
			var aArticle = document.createElement('a');
			
			aArticle.innerHTML= "Voir l'article";
			aArticle.setAttribute("href", lienPage);
			aArticle.setAttribute("title", this.response[i].titreArticle);
			divArticle.setAttribute("class", "col-md-4 col-sm-6");
			divHover.setAttribute("class", "hovereffect");
			imgArticle.setAttribute("src", lienImg);
			imgArticle.setAttribute("class", "img-responsive");
			imgArticle.setAttribute("title", this.response[i].titreArticle);
			imgArticle.setAttribute("alt", "");
			divOverlay.setAttribute("class", "overlay");
			h2.textContent = this.response[i].titreArticle;
			
			divHover.appendChild(imgArticle);
			divOverlay.appendChild(h2);
			p.appendChild(aArticle);
			divOverlay.appendChild(p);
			divHover.appendChild(divOverlay);
			divArticle.appendChild(divHover);
			var id = "articleAccueil";
			document.getElementById(id).appendChild(divArticle);
		}
		
	}
	requeteGetArticleAccueil.send();
};

window.onload = function() {
	getArticleAccueil();
	
}