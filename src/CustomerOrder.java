

import java.sql.Timestamp;
import java.util.List;

public class CustomerOrder {

	/**
	 * 
	 */
	private Timestamp date_created;
	/**
	 * 
	 */
	private int amount;
	/**
	 * 
	 */
	private int ConfirmationNum;
	/**
	 * 
	 */
	private int id;
	/**
	 * 
	 */
	private List<Product> product;
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