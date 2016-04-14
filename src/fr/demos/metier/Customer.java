package fr.demos.metier;
import java.util.ArrayList;
import java.util.List;

public class Customer extends User {

	private String adress;
	private short codePostal;
	private String phone;
	private String city;
	public CustomerOrder customerorder;



	/*-----------------------------------------------------------------------------
	 * 1 Constructeur
	  ----------------------------------------------------------------------------*/

	// *** A voir par la suite si on doit instensier le customer order
	public Customer(int id, String email, String name, String adress, short codePostal, String phone, String city,
			CustomerOrder customerorder) {
		super(id, email, name);
		this.adress = adress;
		this.codePostal = codePostal;
		this.phone = phone;
		this.city = city;
		this.customerorder = customerorder;
	}


	public Customer(int id, String email, String name, String adress, short codePostal, String phone, String city) {
		super(id, email, name);
		this.adress = adress;
		this.codePostal = codePostal;
		this.phone = phone;
		this.city = city;

	}

	/*-----------------------------------------------------------------------------
	 * 2- les methodes
	----------------------------------------------------------------------------*/

	


	@Override
	public ArrayList<Object> saveUser() {
		ArrayList<Object> listCustomerAtrib = new ArrayList<Object>();
		listCustomerAtrib.add(this.getId());
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
	public void addProduct(Product oneProduct){
	 if(customerorder==null){
		 this.customerorder = new CustomerOrder(); // faire très attention à la definition de customer order 
	 }
	 List<Product> list = this.customerorder.getProduct();
	 list.add(oneProduct);
	 this.customerorder.setProduct(list);
	 this.customerorder.setAmount(this.customerorder.getAmount()+1);
	 
	}


	@Override
	public void removeProduct(Product oneProduct) {
		// TODO Auto-generated method stub
	if(customerorder!=null){
		if (this.customerorder.getAmount()>0 && this.customerorder.getProduct().size()!=0){
			for(Product p:this.customerorder.getProduct()){
				if(p.getId()==oneProduct.getId()){
					List<Product> list = this.customerorder.getProduct();
	                list.remove(p);
	                this.customerorder.setProduct(list);
	                break;
				}
				
			}
		}
	}
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
	public short getCodePostal() {
		return codePostal; 
	}
	/**
	 * Setter of codePostal
	 */
	public void setCodePostal(short codePostal) { 
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

}