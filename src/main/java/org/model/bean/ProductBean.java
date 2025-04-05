package org.model.bean;



public class ProductBean {
private String prod_Id,prod_Name,category,img;
private int qty;
private double price;

public String getProd_Id() {
	return prod_Id;
}
public void setProd_Id(String prod_Id) {
	this.prod_Id = prod_Id;
}
public String getProd_Name() {
	return prod_Name;
}
public void setProd_Name(String prod_Name) {
	this.prod_Name = prod_Name;
}
public String getCategory() {
	return category;
}
public void setCategory(String category) {
	this.category = category;
}
public String getImg() {
	return img;
}
public void setImg(String img) {
	this.img = img;
}
public int getQty() {
	return qty;
}
public void setQty(int qty) {
	this.qty = qty;
}
public double getPrice() {
	return price;
}
public void setPrice(double price) {
	this.price = price;
}


}
