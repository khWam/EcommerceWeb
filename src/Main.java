import java.util.ArrayList;

import fr.demos.metier.CatalogProduct;
import fr.demos.metier.Category;
import fr.demos.metier.Customer;
import fr.demos.metier.CustomerOrder;
import fr.demos.metier.Livre;

public class Main {

	public static void main(String[] args) {

		Category papier = new Category("Papier");
		Livre l1= new Livre("Guerre et P", "le meilleur livre", 4, papier, "123-45", "Tolstoi",
				"hachett", "roman"); 
		Livre l2= new Livre("la chute", "top livre", 10, papier, "123-66", "Folett",
				"hachett", "policier"); 
		Livre l3= new Livre("la chute toto", "top totoà livre", 15, papier,10, "123-88", "Folett",
				"hachett", "policier"); 

		Livre l4= new Livre("la chute kkkkk", "top livre", 10, papier,10, "123-99", "Folett",
				"hachett", "policier"); 


		Customer c1 =new Customer("email", "Henri", "adress", 92100, "060000", "Paris");
		
		
		ArrayList<Object> list1 = new ArrayList<Object>();
		list1 =c1.saveUser();
		System.out.println(list1);
		
		CatalogProduct  cat= new CatalogProduct();
		System.out.println(cat.getProductList());
		
//		try {
//			c1.addProduct(l1);
//		} catch (Exception e) {
//			// TODO Auto-generated catch block
//			e.printStackTrace();
//		}
//
//		try {
//			c1.addProduct(l4);
//		} catch (Exception e) {
//			// TODO Auto-generated catch block
//			e.printStackTrace();
//		}
//		System.out.println(c1.toString());
//		System.out.println(c1.getCustomerorder());
//
//
//		System.out.println();
//
//		try {
//			c1.addProduct(l4);
//		} catch (Exception e) {
//			// TODO Auto-generated catch block
//			e.printStackTrace();
//		}
//		System.out.println(c1.toString());
//		System.out.println(c1.getCustomerorder());
//
//		System.out.println(c1.getCustomerorder().productCardinale(l4));//		System.out.println();
//		
//		try {
//			c1.addProduct(l3);
//		} catch (Exception e) {
//			// TODO Auto-generated catch block
//			e.printStackTrace();
//		}
//		System.out.println(c1.toString());
//		System.out.println(c1.getCustomerorder());
//		
//		System.out.println("partie remove:");
//		try {
//			c1.removeProduct(l3);
//		} catch (Exception e) {
//			// TODO Auto-generated catch block
//			e.printStackTrace();
//		}
//		System.out.println(c1.toString());
//		System.out.println(c1.getCustomerorder());
//		try {
//			c1.removeProduct(l3);
//		} catch (Exception e) {
//			// TODO Auto-generated catch block
//			e.printStackTrace();
//		}
//		System.out.println(c1.toString());
//		System.out.println(c1.getCustomerorder());
//		try {
//			c1.removeProduct(l4);
//		} catch (Exception e) {
//			// TODO Auto-generated catch block
//			e.printStackTrace();
//		}
//		System.out.println(c1.toString());
//		System.out.println(c1.getCustomerorder());
//		try {
//			c1.removeProduct(l4);
//		} catch (Exception e) {
//			// TODO Auto-generated catch block
//			e.printStackTrace();
//		}
//		System.out.println(c1.toString());
//		System.out.println(c1.getCustomerorder());
//		try {
//			c1.removeProduct(l4);
//		} catch (Exception e) {
//			// TODO Auto-generated catch block
//			e.printStackTrace();
//		}
//		System.out.println(c1.toString());
//		System.out.println(c1.getCustomerorder());
//		//		
//		//		//cration du panier
//		//		CustomerOrder panier = new CustomerOrder();
//		//		System.out.println(panier.toString());
//		//		//cration du panier
//		//		
//		//
//		//		System.out.println();
//		//		try {
//		//			panier.addProduct(l1);
//		//		} catch (Exception e) {
//		//			// TODO Auto-generated catch block
//		//			e.printStackTrace();
//		//		}
//		//		System.out.println(panier.toString());
//		//		
//		//		
//		//		System.out.println();
//		//		try {
//		//			panier.addProduct(l3);
//		//		} catch (Exception e) {
//		//			// TODO Auto-generated catch block
//		//			e.printStackTrace();
//		//		}
//		//		System.out.println(panier.toString());
//		//		
//		//		System.out.println();
//		//		
//		//		try {
//		//			panier.addProduct(l4);
//		//		} catch (Exception e) {
//		//			// TODO Auto-generated catch block
//		//			e.printStackTrace();
//		//		}
//		//		System.out.println(panier.toString());
//		//		
//		//		try {
//		//			panier.addProduct(l3);
//		//		} catch (Exception e) {
//		//			// TODO Auto-generated catch block
//		//			e.printStackTrace();
//		//		}
//		//		
//		//		
//		//		System.out.println(panier.productCardinale(l3));
//		//		
//		//		try {
//		//			panier.removeProduct(l4);
//		//		} catch (Exception e) {
//		//			// TODO Auto-generated catch block
//		//			e.printStackTrace();
//		//		}
//		//		System.out.println(panier.toString());
//		//		
//		//		try {
//		//			panier.removeProduct(l4);
//		//		} catch (Exception e) {
//		//			// TODO Auto-generated catch block
//		//			e.printStackTrace();
//		//		}
//		//		System.out.println(panier.toString());
//		//		try {
//		//			panier.removeProduct(l3);
//		//		} catch (Exception e) {
//		//			// TODO Auto-generated catch block
//		//			e.printStackTrace();
//		//		}
//		//		System.out.println(panier.toString());
//		//		
//		//		try {
//		//			panier.removeProduct(l4);
//		//		} catch (Exception e) {
//		//			// TODO Auto-generated catch block
//		//			e.printStackTrace();
//		//		}
//		//		System.out.println(panier.toString());
//
//
//
	}
//
}
