package fr.demos.metier;


public class Category {

	private String name;
	private int id;

	public Category(String name) {
		super();
		this.name = name;
		//this.id = id;
	}
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
//	public void setId(int id) { 
//		 this.id = id; 
//	} 

}