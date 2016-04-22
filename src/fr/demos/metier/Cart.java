package fr.demos.metier;


import java.util.HashMap;

public class Cart {

	private static HashMap<String, Product> cartItems;
	public Cart() {
		cartItems= new HashMap<String, Product>();
	}
	
	public void addToCart(Product produit){
		cartItems.put(produit.getName(),produit);
	}
	public void removeFromCart(Product produit){
		cartItems.remove(produit.getName());
	}
	
	public HashMap<String, Product> getCartItems() {
		return cartItems;
	}
	public void setCartItems(HashMap<String, Product> cartItems) {
		this.cartItems = cartItems;
	}
	
	
	
	


}
