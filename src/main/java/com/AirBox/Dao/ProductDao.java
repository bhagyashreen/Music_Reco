package com.AirBox.Dao;


import java.io.IOException;
import java.net.UnknownHostException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import com.AirBox.Domain.Product;
import com.mongodb.BasicDBObject;
import com.mongodb.DB;
import com.mongodb.DBCollection;
import com.mongodb.DBCursor;
import com.mongodb.DBObject;
import com.mongodb.MongoClient;
import com.mongodb.MongoClientURI;
import com.mongodb.MongoException;

public class ProductDao {
				
		 	public ArrayList<Product> getProductDetails() throws IOException {

				String textUri = "mongodb://bhagyashree:bhagyashree@ds043220.mongolab.com:43220/cloud";
				MongoClientURI uri = new MongoClientURI(textUri);
				MongoClient mongo = new MongoClient(uri);
			
			DB db = mongo.getDB("cloud");
			ArrayList<Product> productDetailsList = new ArrayList<Product>();
			
			DBCollection coll = db.getCollection("product_details");
			DBCursor cursor = coll.find();
					
				
			      while(cursor.hasNext()) {
				    System.out.println("inside cursor");
				
					DBObject obj = cursor.next();
					Product prod = new Product();
					String productname = obj.get("productname").toString();
					String catalogname = obj.get("catalogname").toString();
					String description = obj.get("description").toString();
					float price = Float.parseFloat(obj.get("price").toString());
					int quantity = Integer.valueOf((String) obj.get("quantity").toString());
					
					
					prod.setProductname(productname);
					prod.setcatalogname(catalogname);
					prod.setDescription(description);
					prod.setPrice(price);
					prod.setcatalogname(catalogname);
					prod.setQuantity(quantity);
					
					System.out.println("catalogname " + prod.getCatalogname());
					System.out.println("name " + prod.getProductname());
					productDetailsList.add(prod);
							      
			  
			} 
			      System.out.println("list :: " + productDetailsList.get(1).getProductname());
			      
			return productDetailsList;
		 	}
			
		 	public Product getProduct(String productname) throws IOException {

				String textUri = "mongodb://bhagyashree:bhagyashree@ds043220.mongolab.com:43220/cloud";
				MongoClientURI uri = new MongoClientURI(textUri);
				MongoClient mongo = new MongoClient(uri);
			
			DB db = mongo.getDB("cloud");
			ArrayList<Product> productDetailsList = new ArrayList<Product>();
			
			DBCollection coll = db.getCollection("product_details");
			BasicDBObject searchQuery = new BasicDBObject();
			searchQuery.put("productname", productname );
			DBCursor cursor = coll.find( searchQuery);
			Product prod = new Product();	
				
			      while(cursor.hasNext()) {
				    System.out.println("inside cursor");
				
					DBObject obj = cursor.next();
					
					String product = obj.get("productname").toString();
					String catalogname = obj.get("catalogname").toString();
					String description = obj.get("description").toString();
					float price = Float.parseFloat(obj.get("price").toString());
					int quantity = Integer.valueOf((String) obj.get("quantity").toString());
					
					prod.setProductname(product);
					prod.setcatalogname(catalogname);
					prod.setDescription(description);
					prod.setPrice(price);
					prod.setcatalogname(catalogname);
					prod.setQuantity(quantity);
					
					System.out.println("catalogname.... " + prod.getCatalogname());
					System.out.println("name " + prod.getProductname());
					System.out.println("desc " + prod.getDescription());
					System.out.println("price " + prod.getPrice());
							      
			  
			} 
			     
			return prod;
		 	}
			

		 	public Boolean addProduct(Product prod) throws IOException {

				String textUri = "mongodb://bhagyashree:bhagyashree@ds043220.mongolab.com:43220/cloud";
				MongoClientURI uri = new MongoClientURI(textUri);
				MongoClient mongo = new MongoClient(uri);
			
			
			DB db = mongo.getDB("cloud");
			
			DBCollection coll = db.getCollection("product_details");
			
			BasicDBObject doc = new BasicDBObject(); 
			doc.put("productid", prod.getProductId()); 
			doc.put("productname",prod.getProductname() ); 
			doc.put("catalogId", prod.getCatalogId()); 
			doc.put("catalogname", prod.getCatalogname()); 
			doc.put("description",prod.getDescription() ); 
			doc.put("price", prod.getPrice()); 
			doc.put("quantity",prod.getQuantity()); 
			coll.insert(doc);
			
					
			return true;			      
			  
			} 
		 	
}
