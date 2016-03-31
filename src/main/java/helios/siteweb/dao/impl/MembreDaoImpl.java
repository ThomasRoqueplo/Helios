package helios.siteweb.dao.impl;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import helios.siteweb.dao.MembreDao;
import helios.siteweb.model.Membre;

public class MembreDaoImpl implements MembreDao {
	
	public List<Membre> getMembre(){
		List<Membre> listeMembre= new ArrayList<Membre>();
		
		try {
			Connection connection = DataSourceProvider.getDataSource().getConnection();
			PreparedStatement stmt = connection.prepareStatement("SELECT * FROM membre");
			
			ResultSet rs = stmt.executeQuery();
			while (rs.next()) {
				listeMembre.add(new Membre(rs.getString("nom_Membre"),
						rs.getString("prenom_Membre"), rs.getString("job_Membre"),
						rs.getString("photo_Membre"), rs.getString("description_Membre"), 
						rs.getString("facebook_Membre"), rs.getString("link_Membre"), 
						rs.getString("twitter_Membre"), rs.getString("insta_Membre"), 
						rs.getString("mail_Membre")));
			}
			
			rs.close();
			stmt.close();
			connection.close();

		} catch (SQLException e) {
			e.printStackTrace();
		}
		return listeMembre;
	}

}
