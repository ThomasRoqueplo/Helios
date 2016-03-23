package helios.siteweb.dao;

import java.util.List;

import helios.siteweb.model.Photo;

public interface GalerieDao {
	
	public List<Photo> getPhoto();
	
	public List<Photo> getVideo(); 

}
