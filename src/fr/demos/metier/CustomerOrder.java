package fr.demos.metier;


import java.sql.Timestamp;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.List;
import java.util.NoSuchElementException;

public class CustomerOrder {
    static int CLASS_ID_INCREMENT;
    static int CONFIRMATION_INCREMENT=10000;
	private int id;
	private Timestamp date_created;
	private int amount;
	private int ConfirmationNum;
	private List<Product> product;


	/*-----------------------------------------------------------------------------
	 * 1 Constructeur
	  ----------------------------------------------------------------------------*/
	public CustomerOrder() {
		super();
		this.id = CLASS_ID_INCREMENT;
		Calendar calendar = Calendar.getInstance();
	    Timestamp currentTimestamp = new Timestamp(calendar.getTime().getTime());
		
		this.date_created = currentTimestamp;
		this.amount = 0;
		ConfirmationNum = CONFIRMATION_INCREMENT;
		this.product = new ArrayList<Product>();
		
		// incrementation des variables de class pour la prochaine invocation
		CLASS_ID_INCREMENT++;
		CONFIRMATION_INCREMENT++;
		
		
	}
/* *** faire attention le ID et numéro de confirmation risque de ne pas etre unique 
* le mieux serait peut etre de les créer à partir des variables de class
**/	
	public CustomerOrder(Timestamp date_created, int amount, List<Product> product) {
		super();
		this.id = CLASS_ID_INCREMENT;
		this.date_created = date_created;
		this.amount = amount;
		ConfirmationNum = CONFIRMATION_INCREMENT;
		this.product = product;
			
		// incrementation des variables de class pour la prochaine invocation
		CLASS_ID_INCREMENT++;
		CONFIRMATION_INCREMENT++;
	}

	public CustomerOrder(int amount, List<Product> product) {
		super();
		this.id = CLASS_ID_INCREMENT;
		this.date_created = date_created;
		this.amount = amount;
		ConfirmationNum = CONFIRMATION_INCREMENT;
		this.product = product;
			
		// incrementation des variables de class pour la prochaine invocation
		CLASS_ID_INCREMENT++;
		CONFIRMATION_INCREMENT++;
	}
	
	
	
	
	
	public int productCardinale(Product oneProduct){
		int cardinale=0;
		if (this.amount==0||this.product.isEmpty()){
			cardinale=0;
		}
		else{
			for (Product p:this.product){
				if(p.equals(oneProduct)){
					cardinale++;
				}
				
			}
		}
		return cardinale;
	}

	public void addProduct(Product oneProduct){
	this.product.add(oneProduct);
	this.amount++;
	}
	
	public void removeProduct(Product oneProduct) throws Exception{
		if(this.product.isEmpty()||this.amount==0){ throw new NullPointerException();}
		boolean test =false;
		for(Product p:this.product){
			if(p.getId()==oneProduct.getId()){
				this.product.remove(p);
				this.amount--;
				test=true;
				break;
				}
			
		}
		if (test=false) {throw new  NoSuchElementException();}
	}
	/**
	 * Getter of date_created
	 */
	public Timestamp getDate_created() {
		return date_created; 
	}
	/**
	 * Setter of date_created
	 */
	public void setDate_created(Timestamp date_created) { 
		this.date_created = date_created; 
	}
	/**
	 * Getter of amount
	 */
	public int getAmount() {
		return amount; 
	}
	/**
	 * Setter of amount
	 */
	public void setAmount(int amount) { 
		this.amount = amount; 
	}
	/**
	 * Getter of ConfirmationNum
	 */
	public int getConfirmationNum() {
		return ConfirmationNum; 
	}
	/**
	 * Setter of ConfirmationNum
	 */
	public void setConfirmationNum(int ConfirmationNum) { 
		this.ConfirmationNum = ConfirmationNum; 
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
	/**
	 * Getter of product
	 */
	public List<Product> getProduct() {
		return product; 
	}
	/**
	 * Setter of product
	 */
	public void setProduct(List<Product> product) { 
		this.product = product; 
	} 

}