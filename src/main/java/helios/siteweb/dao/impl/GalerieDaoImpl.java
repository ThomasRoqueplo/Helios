package helios.siteweb.dao.impl;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import helios.siteweb.dao.GalerieDao;
import helios.siteweb.model.Photo;

public class GalerieDaoImpl implements GalerieDao {
	
	public List<Photo> getPhoto(){
		List<Photo> listePhoto = new ArrayList<Photo>();
		
		try {
			Connection connection = DataSourceProvider.getDataSource().getConnection();
			PreparedStatement stmt = connection.prepareStatement("SELECT * FROM photo WHERE categorie = ? ORDER BY datePhoto DESC");
			stmt.setString(1, "photo");
			
			ResultSet rs = stmt.executeQuery();
			while (rs.next()) {
				listePhoto.add(new Photo(rs.getString("articlePhoto"),rs.getString("titrePhoto"),
						rs.getString("commentairePhoto"), rs.getString("lienPhoto")));
			}
			
			rs.close();
			stmt.close();
			connection.close();

		} catch (SQLException e) {
			e.printStackTrace();
		}
		return listePhoto;
	}
	
	public List<Photo> getVideo(){
		List<Photo> listePhoto = new ArrayList<Photo>();
		
		try {
			Connection connection = DataSourceProvider.getDataSource().getConnection();
			PreparedStatement stmt = connection.prepareStatement("SELECT * FROM photo WHERE categorie = ? ORDER BY datePhoto DESC");
			stmt.setString(1, "video");
			
			ResultSet rs = stmt.executeQuery();
			while (rs.next()) {
				listePhoto.add(new Photo(rs.getString("articlePhoto"), rs.getString("titrePhoto"),
						rs.getString("commentairePhoto"), rs.getString("lienPhoto")));
			}
			
			rs.close();
			stmt.close();
			connection.close();

		} catch (SQLException e) {
			e.printStackTrace();
		}
		return listePhoto;
	}
	
	
}
