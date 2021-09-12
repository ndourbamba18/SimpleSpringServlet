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
 * Servlet implementation class UpdateProductServlet
 */
@WebServlet(urlPatterns="/update-product.do")
public class UpdateProductServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	ProductService productService = new ProductService();
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public UpdateProductServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String productName = (String)request.getParameter("productName");
		String productPrice = (String)request.getParameter("productPrice");
	    int productStock = Integer.parseInt((String)request.getParameter("productStock"));
		String productDescription = (String)request.getParameter("productDescription");
		
		//Product product = new Product(productName, productPrice, productStock, productDescription);
		
		request.setAttribute("productName", productName);
		request.setAttribute("productPrice", productPrice);
		request.setAttribute("productStock", productStock);
		request.setAttribute("productDescription", productDescription);
		request.getRequestDispatcher("/WEB-INF/views/updateProduct.jsp").forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String productName = (String)request.getParameter("productName");
		String productPrice = (String)request.getParameter("productPrice");
	    int productStock = Integer.parseInt((String)request.getParameter("productStock"));
		String productDescription = (String)request.getParameter("productDescription");
		
		Product product = new Product(productName, productPrice, productStock, productDescription);
		/*product.setName(productName);
		product.setPrice(productPrice);
		product.setStock(productStock);
		product.setDescription(productDescription);*/
		
		productService.saveProduct(product); 
		
		response.sendRedirect("/product.do");
	}

}
