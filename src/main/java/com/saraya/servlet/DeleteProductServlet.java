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
 * Servlet implementation class DeleteProductServlet
 */
@WebServlet(urlPatterns="/delete-product.do")
public class DeleteProductServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	ProductService productService = new ProductService();
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public DeleteProductServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String productName = request.getParameter("productName");
		String productPrice = request.getParameter("productPrice");
		int productStock = Integer.parseInt(request.getParameter("productStock"));
		String productDescription = request.getParameter("productDescription");
		
		
		Product product = new Product(productName, productPrice, productStock, productDescription);
		
		productService.deleteProduct(product);
		
		response.sendRedirect("/product.do");
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	}

}
