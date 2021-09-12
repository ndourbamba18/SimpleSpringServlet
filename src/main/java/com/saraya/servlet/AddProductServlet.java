package com.saraya.servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.saraya.model.Product;
import com.saraya.services.ProductService;

/**
 * Servlet implementation class AddProductServlet
 */
@WebServlet(urlPatterns="/create-product.do")
public class AddProductServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	ProductService productService = new ProductService();
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AddProductServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		request.getRequestDispatcher("/WEB-INF/views/createProduct.jsp").forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String name = (String)request.getParameter("name");
		String price = (String)request.getParameter("price");
	    int stock = Integer.parseInt((String)request.getParameter("stock"));
		String description = (String)request.getParameter("description");
		
		Product product = new Product(name, price, stock, description);
		
		productService.saveProduct(product);
		
		response.sendRedirect("/product.do");
		
	}

}
