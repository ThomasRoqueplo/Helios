package helios.siteweb.webservice;

import java.util.List;

import javax.ws.rs.GET;
import javax.ws.rs.Path;
import javax.ws.rs.core.Response;

import com.google.gson.Gson;

import helios.siteweb.metier.HeliosManager;
import helios.siteweb.model.Membre;

@Path("/membre")
public class MembreService {
	private List<Membre> liste;
	private Gson gson = new Gson();
	
	@Path("")
	@GET
	public Response recupMembre(){
		this.liste = HeliosManager.getInstance().getMembre();
		String listeString = gson.toJson(this.liste);
		return Response.status(200).entity(listeString).build();
	}

}
