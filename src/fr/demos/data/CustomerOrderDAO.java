package fr.demos.data;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.util.HashMap;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.sql.DataSource;

import fr.demos.metier.Customer;
import fr.demos.metier.CustomerOrder;

public class CustomerOrderDAO implements ElementDAO {
	
	private DataSource ds = null;
	private String sqlBaseName="";





	public CustomerOrderDAO(String sqlBaseName)throws Exception {
		super();
		Context context = new InitialContext();
		this.sqlBaseName = sqlBaseName;
		this.ds = (DataSource) context.lookup(this.sqlBaseName);
	}

	@Override
	public void saveToDB(Object cl) throws Exception {
				CustomerOrder clientOrder = (CustomerOrder) cl;
				// On demande une connexion au pool
				Connection cx = this.ds.getConnection();
				//On va pouvoir preparer notre requette SQL
				PreparedStatement psmt = cx.prepareStatement("insert into customerorder values (?,?,?)");
				

				psmt.setInt(1, clientOrder.getAmount());
				psmt.setTimestamp(2, clientOrder.getDate_created());
				psmt.setLong(3, clientOrder.getConfirmationNum());
				
				psmt.executeUpdate();

				//on rend la connexion
				cx.close();
			}

	

	@Override
	public void deleteFromDB(String identifier) throws Exception {
		// TODO Auto-generated method stub

	}

	@Override
	public HashMap<String, Object> getAllDBElements() throws Exception {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public HashMap<String, Object> getDBElement(String identifier) throws Exception {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public int nombre(String identifier) {
		// TODO Auto-generated method stub
		return 0;
	}

}
