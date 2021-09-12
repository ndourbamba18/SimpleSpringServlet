package com.saraya.services;

import java.util.ArrayList;
import java.util.List;

import com.saraya.model.Product;

public class ProductService {
	
	private static List<Product> products = new ArrayList<Product>();
	
	static  {
			
		products.add(new Product("TECNO SPARK 5", "70.000 FCFA", 10, "THE DESCRIPTION"));
		products.add(new Product("CABLE SUMSUNG", "7.000 FCFA", 150, "THE DESCRIPTION"));
		products.add(new Product("TOYOTA YARIS", "5.000.000 FCFA", 20, "THE DESCRIPTION"));
		products.add(new Product("IPHONE 11", "400.000 FCFA", 14, "THE DESCRIPTION"));
		products.add(new Product("IPHONE 12", "800.000 FCFA", 21, "THE DESCRIPTION"));
		products.add(new Product("CAMON 17", "100.000 FCFA", 18, "THE DESCRIPTION"));
		products.add(new Product("CAMON 18", "150.000 FCFA", 210, "THE DESCRIPTION"));
		products.add(new Product("PC HP", "250.000 FCFA", 28, "THE DESCRIPTION"));
		products.add(new Product("PC LENOVO", "200.000 FCFA", 41, "THE DESCRIPTION"));
		products.add(new Product("MAC OS", "400.000 FCFA", 5, "THE DESCRIPTION"));
	}

	public List<Product> getAllProducts(){
		return products;
	}
	
	public void saveProduct(Product product) {
		products.add(product);
	}
	
	public void deleteProduct(Product product) {
		products.remove(product);
	}
	
	public void updateProduct(Product product) {
		
	}
}
