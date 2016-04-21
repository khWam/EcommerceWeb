package fr.demos.data;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.HashMap;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.sql.DataSource;

import fr.demos.metier.Customer;


public class CustomerDAO implements ElementDAO {
	
	private DataSource ds = null;
	private String sqlBaseName="";





	public CustomerDAO(String sqlBaseName)throws Exception {
		super();
		Context context = new InitialContext();
		this.sqlBaseName = sqlBaseName;
		this.ds = (DataSource) context.lookup(this.sqlBaseName);
	}


	@Override
	public void saveToDB(Object cl) throws Exception {
		// TODO Auto-generated method stub
		Customer client = (Customer) cl;
		// On demande une connexion au pool
		Connection cx = this.ds.getConnection();
		//On va pouvoir preparer notre requette SQL
		PreparedStatement psmt = cx.prepareStatement("insert into customer values (?,?,?,?,?,?,?,?)");

		psmt.setString(2, client.getName());
		psmt.setString(3, client.getEmail());
		psmt.setString(4, client.getPhone());
		psmt.setString(5, client.getAdress());
		psmt.setString(6, client.getCity());
		psmt.setInt(7, client.getCodePostal());
		psmt.setInt(8, client.getCustomerorder().getId());

		psmt.executeUpdate();

		//on rend la connexion
		cx.close();
	}

	@Override
	public void deleteFromDB(String identifier) throws Exception {

		// On demande une connexion au pool
		Connection cx = this.ds.getConnection();
		//On va pouvoir preparer notre requette SQL
		PreparedStatement psmt = cx.prepareStatement("delete * from customer where name= ?");
		psmt.setString(1, identifier);
		psmt.executeUpdate();

		//on rend la connexion
		cx.close();
	}

	@Override
	public HashMap<String, Object> getAllDBElements() throws Exception {
		Connection cx =ds.getConnection();
		PreparedStatement psmt = cx.prepareStatement("select * from customer");
		ResultSet rs = psmt.executeQuery();
		HashMap<String, Object> mapCustomer = new HashMap<>();
		while(rs.next()){
			int customer_id = rs.getInt(1);
			String customer_name = rs.getString(2);		
			String customer_email =rs.getString(3);
			String customer_phone =rs.getString(4);
			String customer_adress = rs.getString(5);
			String customer_city = rs.getString(6);
			int customer_codePostal=rs.getInt(7);
			int customer_order=rs.getInt(8);


			Customer client = new Customer(customer_id, customer_email, customer_name, customer_adress, 
					                       customer_codePostal, customer_phone, customer_city);
			Object obj = (Object) client;
			mapCustomer.put(client.getName(), obj);

		}
		return mapCustomer; 
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
