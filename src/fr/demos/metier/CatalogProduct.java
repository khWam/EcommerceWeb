package fr.demos.metier;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

public class CatalogProduct {
	private static HashMap<String, Product> productList;



	public CatalogProduct() {
		this.productList = new HashMap<String, Product>();


	}


	static public void addProduct(Product product){
		productList.put(product.getName(),product);	
		
	}
	
	static public void rempliCatalog(){
		CatalogProduct.addProduct(new Livre("Guerre et paix", "Magistral!", 25, new Category("Papier"),10, " 978-2253088974", "Tolstoi",
				"Hachett", "Roman Historique"));
		CatalogProduct.addProduct(new Livre("La chute des geants", "Magnifique!", 15, new Category("Papier"),10, "978-2221110829", "Folett",
				"Hachett", "Roman Historique"));
		CatalogProduct.addProduct(new Livre("The Hobbit", "The best!", 10, new Category("Papier"),10, "978-0395071229", "J. R. R. Tolkien",
				"Houghton Mifflin", "Roman fantastique"));
		CatalogProduct.addProduct(new Livre("Slinky Malinki", "The most have!", 22, new Category("Papier"),10, " 978-0670913510", "Lynley Dodd",
				"Houghton Rendel", "Roman fantastique"));	}


	public static HashMap<String, Product> getProductList() {
		return productList;
	}


	public static void setProductList(HashMap<String, Product> productList) {
		CatalogProduct.productList = productList;
	}

	



}
