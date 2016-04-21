package fr.demos.data;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Timestamp;
import java.util.ArrayList;
import java.util.HashMap;

import javax.naming.Context;
import javax.naming.InitialContext;

import javax.sql.DataSource;

import fr.demos.metier.Category;
import fr.demos.metier.Livre;
import fr.demos.metier.MessageException;
import fr.demos.metier.Product;

public class ProductLivreDAO implements ElementDAO {


	private DataSource ds = null;
	private String sqlBaseName="";





	public ProductLivreDAO(String sqlBaseName)throws Exception {
		super();
		Context context = new InitialContext();
		this.sqlBaseName = sqlBaseName;
		this.ds = (DataSource) context.lookup(this.sqlBaseName);
	}


	// Methods
	//----------------------------------------------------------

	@Override
	public void saveToDB(Object cl) throws Exception {
		Livre prod = (Livre) cl;
		// On demande une connexion au pool
		Connection cx = this.ds.getConnection();
		//On va pouvoir preparer notre requette SQL
		PreparedStatement psmt = cx.prepareStatement("insert into product values (?,?,?,?,?,?,?,?,?,?)");

		psmt.setString(2, prod.getName());
		psmt.setString(3, prod.getDescription());
		psmt.setInt(4, prod.getPrice());
		psmt.setTimestamp(5, prod.getLast_update());
		psmt.setInt(6,prod.getQuantity() );
		psmt.setInt(7, prod.getCategory().getId());
		psmt.setString(8, prod.getIsbn());
		psmt.setString(9, prod.getAuthor());
		psmt.setString(10, prod.getGenre());

		psmt.executeUpdate();

		//on rend la connexion
		cx.close();
	}

	@Override
	public void deleteFromDB(String identifier) throws Exception {

		// On demande une connexion au pool
		Connection cx = this.ds.getConnection();
		//On va pouvoir preparer notre requette SQL
		PreparedStatement psmt = cx.prepareStatement("delete from product where name= ?");
		psmt.setString(1, identifier);
		psmt.executeUpdate();

		//on rend la connexion
		cx.close();
	}

	@Override
	public HashMap<String, Object> getAllDBElements() throws Exception {
		Connection cx =ds.getConnection();
		PreparedStatement psmt = cx.prepareStatement("select * from product");
		ResultSet rs = psmt.executeQuery();
		HashMap<String, Object> mapProduct = new HashMap<>();
		while(rs.next()){
			int product_id = rs.getInt(1);
			String product_name = rs.getString(2);		
			String product_discreption =rs.getString(3);
			int product_price =rs.getInt(4);
			Timestamp product_date = rs.getTimestamp(5);
			int product_quantity = rs.getInt(6);
			int product_category_id=rs.getInt(7);
			String product_isbn=rs.getString(8);
			String product_author=rs.getString(9);
			String product_genre=rs.getString(10);
			String product_edition = rs.getString(11);

			Livre prod = new Livre(product_id,product_name,product_discreption,product_price,product_date
					, product_quantity,new Category(product_category_id),product_isbn,product_author,
					product_edition,product_genre);
			Object obj = (Object) prod;
			mapProduct.put(prod.getName(), obj);

		}
		return mapProduct; 


	}

	@Override
	public Object getDBElement(String identifier) throws Exception {
		HashMap<String, Object> mapProduct= this.getAllDBElements();
		Object product;
		
		try{
			product = mapProduct.get(identifier);
			
		}catch(NullPointerException e){throw new MessageException("the product database is empty!");}
//		// On demande une connexion au pool
//		Connection cx = this.ds.getConnection();
//		//On va pouvoir preparer notre requette SQL
//		PreparedStatement psmt = cx.prepareStatement("select product_id, name, descreption,price, last_update,"
//				+ "quantity,category_id, isbn,author,genre,edition from product where name= ?");
//		psmt.setString(1, identifier);
//		ResultSet rs = psmt.executeQuery();
//
//		int product_id = rs.getInt(1);
//		String product_name = rs.getString(2);		
//		String product_discreption =rs.getString(3);
//		int product_price =rs.getInt(4);
//		Timestamp product_date = rs.getTimestamp(5);
//		int product_quantity = rs.getInt(6);
//		int product_category_id=rs.getInt(7);
//		String product_isbn=rs.getString(8);
//		String product_author=rs.getString(9);
//		String product_genre=rs.getString(10);
//		String product_edition = rs.getString(11);
//		Livre prod = new Livre(product_id,product_name,product_discreption,product_price,product_date
//				, product_quantity,new Category(product_category_id),product_isbn,product_author,
//				product_edition,product_genre);
//		Object obj = (Object) prod;
//		HashMap<String, Object> mapProduct = new HashMap<>();
//		mapProduct.put(prod.getName(), obj);	

		return product;
	}

	@Override
	public int nombre(String identifier) {
		// TODO Auto-generated method stub
		return 0;
	}


	public void decrementFromDB(String identifier, int quantiteAcheter) throws Exception {
		Livre livre;
		livre =(Livre)this.getDBElement(identifier);
		if (livre.getQuantity()>quantiteAcheter){
			// On demande une connexion au pool
			Connection cx = this.ds.getConnection();
			//On va pouvoir preparer notre requette SQL
			PreparedStatement psmt = cx.prepareStatement("update product set quantity=? where name= ?");
			int newQuantity = livre.getQuantity()-quantiteAcheter;
			psmt.setInt(1, newQuantity);
			psmt.setString(2, identifier);

			psmt.executeUpdate();

			//on rend la connexion
			cx.close();}
		else { throw new MessageException("la quantite demande pour le produit: "+identifier+" est supérieur au stock disponible");}
	}


}
