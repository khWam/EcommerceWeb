package fr.demos.metier;
import java.sql.Timestamp;

public class Product {

	/**
	 * 
	 */
	private String description;
	/**
	 * 
	 */
	private int price;
	/**
	 * 
	 */
	private String name;
	/**
	 * 
	 */
	private int id;
	/**
	 * 
	 */
	private Timestamp last_update;
	/**
	 * 
	 */
	private String quantity;
	/**
	 * 
	 */
	public Category category;
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
	public String getQuantity() {
	 	 return quantity; 
	}
	/**
	 * Setter of quantity
	 */
	public void setQuantity(String quantity) { 
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