package helios.siteweb.webservice;

import javax.ws.rs.GET;
import javax.ws.rs.Path;
import javax.ws.rs.PathParam;
import helios.siteweb.metier.HeliosManager;

@Path("/article")
public class GetArticleService {


	@GET
	@Path("/{id}")
	public void getArticle(@PathParam("id") Integer id) {
		HeliosManager.getInstance().getArticle(id);

	}

}
