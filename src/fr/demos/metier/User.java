package fr.demos.metier;
import java.util.ArrayList;

public abstract class User {

	private int id;
	private String email;
	private String name;

	/*-----------------------------------------------------------------------------
	 * 1-Constructeur
	 ----------------------------------------------------------------------------*/

	 protected User(int id, String email, String name) {
		 super();
		 this.id = id;
		 this.email = email;
		 this.name = name;
	 }

	 /*-----------------------------------------------------------------------------
	  * 2- les methodes
	  ----------------------------------------------------------------------------*/
	  // a method to save the User into DB
	  public ArrayList<Object>  saveUser(){
		  return null;}


	  //add a product to a CustomerOrder from the catalog
	  public void addProduct(Product product){}

	  //remove product from CustomerOrder
	  public void removeProduct(Product oneProduct)throws Exception {}

	  //pass order
	  public boolean passOrder() {
		  return false;
	  }
	  /*-----------------------------------------------------------------------------
	   * 3-Getters and seters
	  -------------------------------------------------------------------------- */

	   /**
	    * Getter of email
	    */
	   public String getEmail() {
		   return email; 
	   }

	   /**
	    * Setter of email
	    */
	   public void setEmail(String email) { 
		   this.email = email; 
	   }
	   /**
	    * Getter of name
	    */
	   public String getName() {
		   return name; 
	   }
	   /**
	    * Setter of name
	    */
	   public void setName(String name) { 
		   this.name = name; 
	   }
	   /**
	    * Getter of id
	    */
	   public int getId() {
		   return id; 
	   }
	   /**
	    * Setter of id
	    */
	   public void setId(int id) { 
		   this.id = id; 
	   } 

}