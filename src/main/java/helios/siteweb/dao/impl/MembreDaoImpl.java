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
				listeMembre.add(new Membre(rs.getString("nomMembre"),
						rs.getString("prenomMembre"), rs.getString("jobMembre"),
						rs.getString("photoMembre"), rs.getString("descriptionMembre"), 
						rs.getString("facebookMembre"), rs.getString("linkMembre"), 
						rs.getString("twitterMembre"), rs.getString("instaMembre"), 
						rs.getString("mailMembre")));
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
