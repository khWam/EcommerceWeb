package fr.demos.metier;
import java.util.ArrayList;
import java.util.List;

public class Customer extends User {
	static int CLASS_ID_INCREMENT;
	private String adress;
	private int codePostal;
	private String phone;
	private String city;
	public CustomerOrder customerorder;



	/*-----------------------------------------------------------------------------
	 * 1 Constructeur
	  ----------------------------------------------------------------------------*/

	// *** A voir par la suite si on doit instensier le customer order
	public Customer(String email, String name, String adress, int codePostal, String phone, String city,
			CustomerOrder customerorder) {
		super(email, name);
		this.adress = adress;
		this.codePostal = codePostal;
		this.phone = phone;
		this.city = city;
		this.customerorder = customerorder;
		//CLASS_ID_INCREMENT++;
	}


	public Customer(String email, String name, String adress, int codePostal, String phone, String city) {
		super(email, name);
		this.adress = adress;
		this.codePostal = codePostal;
		this.phone = phone;
		this.city = city;
		//CLASS_ID_INCREMENT++;
	}

	/*-----------------------------------------------------------------------------
	 * 2- les methodes
	----------------------------------------------------------------------------*/




	public Customer(int id, String email, String name, String adress, int codePostal, String phone, String city) {
		super(id, email, name);
		this.adress = adress;
		this.codePostal = codePostal;
		this.phone = phone;
		this.city = city;	
		}


	@Override
	public ArrayList<Object> saveUser() {
		ArrayList<Object> listCustomerAtrib = new ArrayList<Object>();
		//listCustomerAtrib.add(this.getId());
		listCustomerAtrib.add(this.getName());
		listCustomerAtrib.add(this.getEmail());
		listCustomerAtrib.add(this.getPhone());
		listCustomerAtrib.add(this.getAdress());
		listCustomerAtrib.add(this.getCodePostal());
		listCustomerAtrib.add(this.getCity());
		listCustomerAtrib.add(this.getCustomerorder());
		return listCustomerAtrib;
	}


	@Override
	public void addProduct(Product oneProduct) throws Exception{
		if(customerorder==null){
			this.customerorder = new CustomerOrder(); // faire très attention à la definition de customer order 
		}
		this.customerorder.addProduct(oneProduct);

	}


	@Override
	public void removeProduct(Product oneProduct) throws Exception {
		if(customerorder==null){throw new MessageException("le panier n'est pas défini (null)!");}
		else{this.customerorder.removeProduct(oneProduct);}


	}




	@Override
	public boolean passOrder() {
		boolean test = false;
		if (!this.saveUser().isEmpty()&&this.customerorder.getProduct().size()>0){
			test =true;
		};
		return test;
	}

	/*-----------------------------------------------------------------------------
	 * 3-Getters and Setters
	  ----------------------------------------------------------------------------*/


	/**
	 * Getter of adress
	 */
	public String getAdress() {
		return adress; 
	}
	/**
	 * Setter of adress
	 */
	public void setAdress(String adress) { 
		this.adress = adress; 
	}
	/**
	 * Getter of codePostal
	 */
	public int getCodePostal() {
		return codePostal; 
	}
	/**
	 * Setter of codePostal
	 */
	public void setCodePostal(int codePostal) { 
		this.codePostal = codePostal; 
	}
	/**
	 * Getter of phone
	 */
	public String getPhone() {
		return phone; 
	}
	/**
	 * Setter of phone
	 */
	public void setPhone(String phone) { 
		this.phone = phone; 
	}
	/**
	 * Getter of city
	 */
	public String getCity() {
		return city; 
	}
	/**
	 * Setter of city
	 */
	public void setCity(String city) { 
		this.city = city; 
	}
	/**
	 * Getter of customerorder
	 */
	public CustomerOrder getCustomerorder() {
		return customerorder; 
	}
	/**
	 * Setter of customerorder
	 */
	public void setCustomerorder(CustomerOrder customerorder) { 
		this.customerorder = customerorder; 
	}


	@Override
	public String toString() {
		return "Customer [adress=" + adress + ", codePostal=" + codePostal + ", phone=" + phone + ", city=" + city
				+ ", customerorder=" + customerorder + ", getEmail()=" + getEmail() + ", getName()=" + getName()
				+ ", getId()=" + getId() + "]";
	} 

}