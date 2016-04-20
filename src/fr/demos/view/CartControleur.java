package fr.demos.view;

import java.io.IOException;
import java.util.ArrayList;

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
		// response.getWriter().append("Served at:
		// ").append(request.getContextPath());
		// doPost(request, response);
		RequestDispatcher rd = request.getRequestDispatcher("/cart.jsp");
		request.setCharacterEncoding("UTF-8");
		HttpSession session = request.getSession();

		Cart listProduit ;
		if (session.isNew()) {
			System.out.println("Session nouvelle");
			listProduit = new Cart() ;
			session.setAttribute("listProductCart", listProduit);
		}
		listProduit = (Cart) session.getAttribute("listProductCart");
		
		if (listProduit == null) {
			listProduit = new Cart();
			System.out.println("creation nouveau cart! : " + listProduit);
			session.setAttribute("listProductCart", listProduit);
		}
		String produit= request.getParameter("product");
		System.out.println("Produit recuperer! "+ produit);

		//listProduit.addToCart(produit);
		session.setAttribute("listProductCart", listProduit);
		rd.forward(request, response);
//		ArrayList<ArrayList<String>> listProduit;
//		if (session.isNew()) {
//			System.out.println("Session nouvelle");
//			listProduit = new ArrayList<>();
//			session.setAttribute("listProductCart", listProduit);
//		}
//
//		ArrayList<String> produit = new ArrayList<>();

		//listProduit = (ArrayList<ArrayList<String>>) session.getAttribute("listeProductCart");
//		if (listProduit == null) {
//			listProduit = new ArrayList<>();
//			session.setAttribute("listProductCart", listProduit);
//		}
//		String prodname = request.getParameter("prodName");
//		prodname = prodname.trim();
//		String prodQuantity = request.getParameter("prodQuantity");
//		prodQuantity = prodQuantity.trim();
//		String prodPrice = request.getParameter("prodPrice");
//		prodPrice = prodPrice.trim();
//
//		produit.add(prodname);
//		produit.add(prodQuantity);
//		produit.add(prodPrice);
//		System.out.println("ListeProduit : " + listProduit);
//		listProduit.add(produit);
//		System.out.println("Add produit, ListeProduit : " + listProduit);
//		session.setAttribute("listProductCart", listProduit);
//		rd.forward(request, response);

	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

	}

}
