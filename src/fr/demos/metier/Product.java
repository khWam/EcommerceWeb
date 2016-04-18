package fr.demos.metier;
import java.sql.Timestamp;
import java.util.Calendar;

public class Product {

	private int id;
	private String name;
	private String description;
	private int price;
	private Timestamp last_update;
	private int quantity;
	private Category category;
	
	
	
	
	
	
	
	public Product(String name, String description, int price, Timestamp last_update, int quantity,
			Category category) {
		super();
		//this.id = id;
		this.name = name;
		this.description = description;
		this.price = price;
		this.last_update = last_update;
		this.quantity = quantity;
		this.category = category;

	}
	
	
	
	public Product( String name, String description, int price, Category category, int quantity) {
		super();
		//this.id = id;
		this.name = name;
		this.description = description;
		this.price = price;
		this.category = category;
		this.quantity=quantity;
		Calendar calendar = Calendar.getInstance();
	    this.last_update = new Timestamp(calendar.getTime().getTime());	
	    }
	
	public Product( String name, String description, int price, Category category) {
		super();
		//this.id = id;
		this.name = name;
		this.description = description;
		this.price = price;
		this.category = category;
		this.quantity=0;
		Calendar calendar = Calendar.getInstance();
	    this.last_update = new Timestamp(calendar.getTime().getTime());	
	    }

	
	public void increment(){
		this.quantity++;
	}
	public void decrement(){
		this.quantity--;
	}
	

	/**
	 * Getter of description
	 */
	public String getDescription() {
	 	 return description; 
	}
	/**
	 * Setter of description
	 */
	public void setDescription(String description) { 
		 this.description = description; 
	}
	/**
	 * Getter of price
	 */
	public int getPrice() {
	 	 return price; 
	}
	/**
	 * Setter of price
	 */
	public void setPrice(int price) { 
		 this.price = price; 
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
	/**
	 * Getter of last_update
	 */
	public Timestamp getLast_update() {
	 	 return last_update; 
	}
	/**
	 * Setter of last_update
	 */
	public void setLast_update(Timestamp last_update) { 
		 this.last_update = last_update; 
	}
	/**
	 * Getter of quantity
	 */
	public int getQuantity() {
	 	 return quantity; 
	}
	/**
	 * Setter of quantity
	 */
	public void setQuantity(int quantity) { 
		 this.quantity = quantity; 
	}
	/**
	 * Getter of category
	 */
	public Category getCategory() {
	 	 return category; 
	}
	/**
	 * Setter of category
	 */
	public void setCategory(Category category) { 
		 this.category = category; 
	} 

}