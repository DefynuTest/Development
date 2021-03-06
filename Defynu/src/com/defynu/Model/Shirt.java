package com.defynu.Model;
import java.io.*; 
import java.util.ArrayList;

public class Shirt extends AddMeasurement implements Serializable {                   
/*extends AddMeasurement */


	public String body;
	private String button;
	private String buttonplacket;
	private String innercollar;
	public String outercollar;
	public String outercollartype;
	private String innercuff;
	private String outercuff;
	public String outercufftype;
	private String outsidefastening;
	public String pocket;
	public String pockettype;
	public Integer order_id;
	public Integer getOrder_id() {
		return order_id;
	}

	public void setOrder_id(Integer order_id) {
		this.order_id = order_id;
	}

	public String getOutercollartype() {
		return outercollartype;
	}

	public void setOutercollartype(String outercollartype) {
		this.outercollartype = outercollartype;
	}

	public String getOutercufftype() {
		return outercufftype;
	}

	public void setOutercufftype(String outercufftype) {
		this.outercufftype = outercufftype;
	}

	public String getPockettype() {
		return pockettype;
	}

	public void setPockettype(String pockettype) {
		this.pockettype = pockettype;
	}

	public String getPocket() {
		return pocket;
	}

	public void setPocket(String pocket) {
		this.pocket = pocket;
	}

	private int price;
	private int qty=0;
	private int no=0;
	boolean a;
	
	public int getQty() {
		return qty;
	}

	public void setQty(int qty) {
		this.qty = qty;
	}

	public int getNo() {
		return no;
	}

	public void setNo(int no) {
		this.no = no;
	}

	public String getBody() {
		return body;
	}

	public void setBody(String body) {
		this.body = body;
	}

	public String getButton() {
		return button;
	}

	public void setButton(String button) {
		this.button = button;
	}

	public String getButtonplacket() {
		return buttonplacket;
	}

	public void setButtonplacket(String buttonplacket) {
		this.buttonplacket = buttonplacket;
	}

	public String getInnercollar() {
		return innercollar;
	}

	public void setInnercollar(String innercollar) {
		this.innercollar = innercollar;
	}

	public String getOutercollar() {
		return outercollar;
	}

	public void setOutercollar(String outercollar) {
		this.outercollar = outercollar;
	}

	public String getInnercuff() {
		return innercuff;
	}

	public int getPrice() {
		return price;
	}

	public void setPrice(int price) {
		this.price = price;
	}

	public void setInnercuff(String innercuff) {
		this.innercuff = innercuff;
	}

	public String getOutercuff() {
		return outercuff;
	}

	public void setOutercuff(String outercuff) {
		this.outercuff = outercuff;
	}

	public String getOutsidefastening() {
		return outsidefastening;
	}

	public void setOutsidefastening(String outsidefastening) {
		this.outsidefastening = outsidefastening;
	}
	
	

	//Constructor//
	public Shirt(){
		
		
	}
	
	public  Shirt(String body, String button, String buttonplacket,
			String innercollar, String outercollar, String innercuff,
			String outercuff, String outsidefastening , int price,int qty,int no) {
		this.body = body;
		this.button = button;
		this.buttonplacket = buttonplacket;
		this.innercollar = innercollar;
		this.outercollar = outercollar;
		this.innercuff = innercuff;
		this.outercuff = outercuff;
		this.outsidefastening = outsidefastening;
		this.price = price;

	}

	public boolean Display(Shirt shirt1) {

		System.out.println("the body id" + body);
		System.out.println("the outercollar id " + outercollar);
		System.out.println("the innercollor id " + innercollar);
		System.out.println("the outercuff id " + outercuff);
		System.out.println("the innercuff id " + innercuff);
		System.out.println("the button id " + button);
		System.out.println("the buttonplacket id " + buttonplacket);
		System.out.println("the outsidefastening id " + outsidefastening);
		// sht.add(shirt);

		return true;
	}
	
	
	 static ArrayList<Shirt> shirtlist = new ArrayList<Shirt>();
		public static  ArrayList<Shirt>  AddShirt()
		{
			if(shirtlist.isEmpty())
			{
			Shirt shirt1 = new Shirt("1", "1", "1", "1", "bc1", "1","sb1","1",1750,1,000);
			Shirt shirt2 = new Shirt("2", "1", "1", "1", "bc1", "1","sb1","1",1750,1,000);
			Shirt shirt3 = new Shirt("3", "1", "1", "1", "bc1", "1","sb1","1",1750,1,000);
	
			 
			shirtlist.add(shirt1);
			shirtlist.add(shirt2);
			shirtlist.add(shirt3);
			
			}
			
			
			return shirtlist;
			
		}
	

}
