package fr.demos.view;

import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import fr.demos.data.ProductLivreDAO;
import fr.demos.metier.Cart;
import fr.demos.metier.CatalogProduct;
import fr.demos.metier.Livre;
import fr.demos.metier.Product;

/**
 * Servlet implementation class BooksControleur
 */
@WebServlet(description = "affiche la jsp Books.jsp", urlPatterns = { "/BooksControleur" })
public class BooksControleur extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public BooksControleur() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//	response.getWriter().append("Served at: ").append(request.getContextPath());
		RequestDispatcher rd = request.getRequestDispatcher("books.jsp");
		request.setCharacterEncoding("UTF-8");
		HttpSession session = request.getSession();

		CatalogProduct catalog= new CatalogProduct();
		//catalog.rempliCatalog();
		ProductLivreDAO dao;
		HashMap<String, Product> listCatalog = null;

		try {
			dao= new ProductLivreDAO("jdbc/ecommerceweb");

			HashMap<String,Object> daoObjectMap = dao.getAllDBElements();
			Iterator it = daoObjectMap.entrySet().iterator();
			while (it.hasNext()) {
				Map.Entry pair = (Map.Entry)it.next();
				Product p= (Product) pair.getValue();
				catalog.addProduct(p);
				it.remove(); // avoids a ConcurrentModificationException
			}
			listCatalog= catalog.getProductList();

			//catalog.setProductList
		} catch (Exception e) {
			// TODO Auto-generated catch block
			request.setAttribute("erreurAffichage",e.getMessage());
		}


		//		HashMap<String, Product> listCatalog = new HashMap<String, Product>();
		//		listCatalog =  catalog.getProductList();
		//		session.setAttribute("listProduct", listCatalog);	
		//		rd.forward(request, response);

		session.setAttribute("listProduct", listCatalog);	
		rd.forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
