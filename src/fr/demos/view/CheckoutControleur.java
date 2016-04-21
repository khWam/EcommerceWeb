package fr.demos.view;

import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import fr.demos.data.CustomerDAO;
import fr.demos.data.CustomerOrderDAO;
import fr.demos.data.ProductLivreDAO;
import fr.demos.metier.Cart;
import fr.demos.metier.Customer;
import fr.demos.metier.CustomerOrder;
import fr.demos.metier.Livre;
import fr.demos.metier.MessageException;
import fr.demos.metier.Product;

/**
 * Servlet implementation class CheckoutControleur
 */
@WebServlet("/CheckoutControleur")
public class CheckoutControleur extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public CheckoutControleur() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//		RequestDispatcher rd=request.getRequestDispatcher("/checkout.jsp");
		//		rd.forward(request, response);	
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub

		boolean errors=false;
		RequestDispatcher rd=request.getRequestDispatcher("/checkout.jsp");
		request.setCharacterEncoding("UTF-8");
		HttpSession session = request.getSession();

		Cart cart = new Cart();
		HashMap<String, Product> listProduit;
		listProduit = (HashMap<String, Product>) session.getAttribute("listProductCart");

		if (listProduit == null) {
			cart = new Cart();
			listProduit= new HashMap<String, Product>();
			listProduit = cart.getCartItems();
			session.setAttribute("listProductCart", listProduit);
		}
		List<Product> ArrayListProduit =
				new ArrayList<Product>(listProduit.values());


		String subm = request.getParameter("Submit");
		System.out.println(subm);
		System.out.println("eeeeeee");

		if (subm!=null&& subm.equals("Validate")){
			String nom = request.getParameter("billingInfo[firstName]") + " "+ request.getParameter("billingInfo[lastName]");
			String email =request.getParameter("billingInfo[email]");
			String phone =request.getParameter("billingInfo[phone]");
			String adress = request.getParameter("billingInfo[streetAddressLine1]");
			String city = request.getParameter("billingInfo[city]");
			String codePostal = request.getParameter("billingInfo[postalCode]");

			int quantiteAcheteInt =(Integer) session.getAttribute("quantiteAcheter");



			//System.out.println(nom +" "+ email+" "+phone);	

			int codePostalInt =0;
			//int quantiteAcheteInt =0;

			try{
				codePostal=codePostal.trim();
				codePostalInt=Integer.parseInt(codePostal);
			}catch(NumberFormatException exp){
				errors =true;
				request.setAttribute("codePostalErreurs", "nombre incorrecte");
			}



			if(!errors){

				int amount =0;
				for (Product p:ArrayListProduit){
					amount = amount+p.getPrice();
				}

				CustomerOrder clientOrder= new CustomerOrder(amount, ArrayListProduit);

				Customer client= new Customer(email, nom, adress, codePostalInt, phone, city, clientOrder);

//				try {
//					ProductLivreDAO dao = new ProductLivreDAO("jdbc/ecommerceweb");
//					for (Product p:ArrayListProduit){
//						Livre l = (Livre) p;
//
//						dao.decrementFromDB(l.getName(), quantiteAcheteInt);
//					}
//
//				}catch (MessageException e){ 
//					//request.setAttribute("quantiteAcheterDecrementErreur", e.getMessage());
//					e.printStackTrace();
//				}catch (Exception e) {
//					// TODO Auto-generated catch block
//					//request.setAttribute("quantiteAcheterDecrementErreur", e.getMessage());
//					e.printStackTrace();
//
//				}

//				try {
//					CustomerDAO dao= new CustomerDAO("jdbc/ecommerceweb");
//					dao.saveToDB(client);
//				} catch (Exception e) {
//					// TODO Auto-generated catch block
//					request.setAttribute("customerAddErreur", e.getMessage());
//					e.printStackTrace();
//
//				}

				try {
					CustomerOrderDAO dao= new CustomerOrderDAO("jdbc/ecommerceweb");
					dao.saveToDB(clientOrder);
				} catch (Exception e) {
					// TODO Auto-generated catch block
					request.setAttribute("customerAddErreur", e.getMessage());
					e.printStackTrace();

				}


				System.out.println("la commande est:"+ clientOrder);

				System.out.println("le client est:"+ client);
				
				session.invalidate();
			} 


		}
	}

}
