package fr.demos.view;

import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import fr.demos.metier.Cart;
import fr.demos.metier.Livre;
import fr.demos.metier.Product;

/**
 * Servlet implementation class CartControleur
 */
@WebServlet(description = "updates the cart", urlPatterns = { "/CartControleur" })
public class CartControleur extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public CartControleur() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	// @SuppressWarnings("unchecked")
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doPost(request,response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// response.getWriter().append("Served at:
		// ").append(request.getContextPath());
		// doPost(request, response);
		RequestDispatcher rd = request.getRequestDispatcher("/cart.jsp");
		request.setCharacterEncoding("UTF-8");
		HttpSession session = request.getSession();



		Cart cart = new Cart();
		HashMap<String, Product> listProduit;
		HashMap<String, Product> listCatalog=(HashMap<String, Product>)session.getAttribute("listProduct");

		//	if (session.isNew()) {
		//		System.out.println("Session nouvelle");
		//		listProduit = new Cart() ;
		//		session.setAttribute("listProductCart", listProduit);
		//	}

		listProduit = (HashMap<String, Product>) session.getAttribute("listProductCart");

		if (listProduit == null) {
			cart = new Cart();
			listProduit= new HashMap<String, Product>();
			listProduit = cart.getCartItems();
			System.out.println("creation nouveau cart! : " + listProduit);
			session.setAttribute("listProductCart", listProduit);
		}


		String action= request.getParameter("Submit");
		if (action!=null && action.equals("Add to Cart")){


			String produitName= request.getParameter("productNameKey");
			String quantiteAcheter= request.getParameter("quantitAcheter");
			int quantiteAcheterInt= Integer.parseInt(quantiteAcheter);
			//on ne peut acheter que un produit pour le moment
			session.setAttribute("quantiteAcheter", quantiteAcheterInt);

			Product prod = listCatalog.get(produitName);
			System.out.println("Produit recuperé : " + prod);

			cart.setCartItems(listProduit);
			cart.addToCart(prod);
			listProduit = cart.getCartItems();
			System.out.println("List produit dans le cart : " + listProduit);
			//listProduit.addToCart(produit);
			session.setAttribute("listProductCart", listProduit);
		}

		else if (action!=null && action.equals("X")){


			String produitName= request.getParameter("productNameKey");
			//	int quantiteAcheterInt= (Integer)session.getAttribute("quantitAcheter");
			//on ne peut acheter que un produit pour le moment

			Product prod = listCatalog.get(produitName);
			System.out.println("Produit supprimer: " + prod);

			cart.setCartItems(listProduit);
			cart.removeFromCart(prod);
			listProduit = cart.getCartItems();
			System.out.println("List produit dans le cart (apres suppression) : " + listProduit);
			//listProduit.addToCart(produit);
			session.setAttribute("listProductCart", listProduit);
		}

		//	ArrayList<ArrayList<String>> listProduit;
		//	if (session.isNew()) {
		//		System.out.println("Session nouvelle");
		//		listProduit = new ArrayList<>();
		//		session.setAttribute("listProductCart", listProduit);
		//	}
		//
		//	ArrayList<String> produit = new ArrayList<>();

		//listProduit = (ArrayList<ArrayList<String>>) session.getAttribute("listeProductCart");
		//	if (listProduit == null) {
		//		listProduit = new ArrayList<>();
		//		session.setAttribute("listProductCart", listProduit);
		//	}
		//	String prodname = request.getParameter("prodName");
		//	prodname = prodname.trim();
		//	String prodQuantity = request.getParameter("prodQuantity");
		//	prodQuantity = prodQuantity.trim();
		//	String prodPrice = request.getParameter("prodPrice");
		//	prodPrice = prodPrice.trim();
		//
		//	produit.add(prodname);
		//	produit.add(prodQuantity);
		//	produit.add(prodPrice);
		//	System.out.println("ListeProduit : " + listProduit);
		//	listProduit.add(produit);
		//	System.out.println("Add produit, ListeProduit : " + listProduit);
		//	session.setAttribute("listProductCart", listProduit);
		//	rd.forward(request, response);
		rd.forward(request, response);
	}

}
