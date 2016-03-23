package helios.siteweb.webservice;

import java.util.List;

import javax.ws.rs.GET;
import javax.ws.rs.Path;
import javax.ws.rs.core.Response;

import com.google.gson.Gson;

import helios.siteweb.metier.HeliosManager;
import helios.siteweb.model.Photo;

@Path("/galerie")
public class GalerieService {
	private List<Photo> liste;
	private Gson gson = new Gson();
	
	@Path("/photo")
	@GET
	public Response recupPhoto(){
		this.liste = HeliosManager.getInstance().getPhoto();
		String listeString = gson.toJson(this.liste);
		return Response.status(200).entity(listeString).build();
	}
	
	@Path("/video")
	@GET
	public Response recupVideo(){
		this.liste = HeliosManager.getInstance().getVideo();
		String listeString = gson.toJson(this.liste);
		return Response.status(200).entity(listeString).build();
	}

}
