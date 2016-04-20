package fr.demos.metier;


public class Category {

	private String name;
	private int id;

	public Category(String name) {
		super();
		this.name = name;
		//this.id = id;
	}

	public Category(int id){
		// based on the DB configuration
		super();
		this.id=id;
		if(id==1){this.name="books";}
		else if (id==2){this.name="multimedia";}
		else if (id==3){this.name="goodies";}
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