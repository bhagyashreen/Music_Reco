package com.AirBox.Domain;


public class History {

	private int historyId;
	private String username;
	private String productname;
	private int catalogId ;
	private String catalogname;
	private String description;
	private float price;
	private int quantity;
	private String purchase_date;
	

	public int getHistoryId() {
		return historyId;
	}

	public void setHistoryId(int historyId) {
		this.historyId = historyId;
	}

	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}

	public String getProductname() {
		return productname;
	}
	public void setProductname(String productname) {
		this.productname = productname;
	}


	public int getCatalogId() {
		return catalogId;
	}

	public void setCatalogId(int catalogId) {
		this.catalogId = catalogId;
	}
	
	public String getCatalogname() {
		return catalogname;
	}

	
	public void setcatalogname(String catalogname) {
		this.catalogname = catalogname;
	}
	

	public String getDescription() {
		return description;
	}
	public void setDescription(String description) {
		this.description = description;
	}
	public float getPrice() {
		return price;
	}
	public void setPrice(float price) {
		this.price = price;
	}
	public int getQuantity() {
		return quantity;
	}
	public void setQuantity(int quantity) {
		this.quantity = quantity;
	}
	public String getPurchase_date() {
		return purchase_date;
	}
	/**
	 * @param date the dateCreated to set
	 */
	public void setPurchase_date(String  purchase_date) {
		this.purchase_date = purchase_date;
	}
	
}