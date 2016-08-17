package com.defynu.Model;

import java.util.ArrayList;

public class Fabric {

	public String name;
	private String line;
	private String category;
	private String pattern;
	public String weave;
	public String details;
	public int price;
	public int sl;
	
	
	public int getSl() {
		return sl;
	}
	public void setSl(int sl) {
		this.sl = sl;
	}
	public int getPrice() {
		return price;
	}
	public void setPrice(int price) {
		this.price = price;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getLine() {
		return line;
	}
	public void setLine(String line) {
		this.line = line;
	}
	public String getCategory() {
		return category;
	}
	public void setCategory(String category) {
		this.category = category;
	}
	public String getPattern() {
		return pattern;
	}
	public void setPattern(String pattern) {
		this.pattern = pattern;
	}
	public String getWeave() {
		return weave;
	}
	public void setWeave(String weave) {
		this.weave = weave;
	}
	public String getDetails() {
		return details;
	}
	public void setDetails(String details) {
		this.details = details;
	}
	public Fabric(String name, String line, String category, String pattern,
			String weave, String details,int price,int sl) {
		this.name = name;
		this.line = line;
		this.category = category;
		this.pattern = pattern;
		this.weave = weave;
		this.details = details;
		this.price = price;
		this.sl = sl;
	}
	public Fabric()
	{
		
	}
	
	 static ArrayList<Fabric> fab = new ArrayList<Fabric>();
	public static  ArrayList<Fabric>  AddFabric()
	{
		if(fab.isEmpty())
		{
		Fabric fabric1 = new Fabric("Telde,blue", "Basic", "Business", "Solid", "Chambray", "100% Cotton" ,800,1);
		Fabric fabric2 = new Fabric("Telde,red", "Basic", "Casual", "Solid", "Chambray", "100%  Cotton" ,1000,2);
		Fabric fabric3 = new Fabric("Verin,blue", "Premium", "Casual", "Patterned", "Chambray", "100%  Cotton" , 1200,3);
		Fabric fabric4 = new Fabric("Amadora,light blue", "Basic", "Classic", "Solid", "Plain", "100%  Cotton" ,800,4);
		Fabric fabric5 = new Fabric("Canha,red&blue", "Exclusive", "Classic", "Checked", "Plain", "100%  Cotton",1000,5);
		Fabric fabric6 = new Fabric("Caucel,pink", "Exclusive", "Business", "Solid", "Poplin", "100%  Cotton" ,1000,6);
		Fabric fabric7 = new Fabric("Nipigon,purple", "Exclusive", "Business", "Stripped", "Twill", "100%  Cotton" , 1000,7);
		Fabric fabric8 = new Fabric("Smithers,blue", "Premium", "Classic", "Patterned", "Twill", "100%  Cotton",1200,8);
		/*Fabric fabric9 = new Fabric("Izmir,green", "Exclusive", "Casual", "Solid", "Plain", "100%  Cotton",1000,9);
		Fabric fabric10 = new Fabric("Savile Row,black", "Basic", "Bussiness", "Solid", "Poplin", "100% Pima Cotton" ,1000,10);
		Fabric fabric11 = new Fabric("Savile Row,light blue", "Premium", "Bussiness", "Solid", "Poplin", "100% Pima Cotton" ,1200,11);
		Fabric fabric12 = new Fabric("Caucel,Pink", "Exclusive", "Classic", "Solid", "Poplin", "100% Pima Cotton" ,1200,12);
		Fabric fabric13 = new Fabric("Abrantes,blue", "Premium", "Bussiness", "Checked", "Poplin", "100%  Cotton" ,1000,13);
		Fabric fabric14 = new Fabric("Aviles,navy", "Exclusive", "Casual", "Solid", "Poplin", "100%  Cotton" ,1200,14);
		Fabric fabric15 = new Fabric("Siruela,cerise", "Exclusive", "Bussiness", "Checked", "Poplin", "100%  Cotton" ,1000,15);
		Fabric fabric16 = new Fabric("Brandon,blue", "Basic", "Bussiness", "Patterned", "Twill", "100%  Cotton" ,900,16);
		Fabric fabric17 = new Fabric("Mestanza,dark blue", "Premium", "Casual", "Striped", "Twill", "100%  Cotton" ,1000,17);
		Fabric fabric18 = new Fabric("Burton,cerise black", "Exclusive", "Classic", "Checked", "Twill", "100%  Cotton" ,1200,18);
		Fabric fabric19 = new Fabric("Nipigon,purple", "Premium", "Casual", "Checked", "Twill", "100%  Cotton" ,1000,19);
		Fabric fabric20 = new Fabric("Wagrain,light blue", "Basic", "Bussiness", "Striped", "Twill", "100%  Cotton" ,1200,20);*/
		fab.add(fabric1);
		fab.add(fabric2);
		fab.add(fabric3);
		fab.add(fabric4);
		fab.add(fabric5);
		fab.add(fabric6);
		fab.add(fabric7);
		fab.add(fabric8);
		/*fab.add(fabric9);
		fab.add(fabric10);
		fab.add(fabric11);
		fab.add(fabric12);
		fab.add(fabric13);
		fab.add(fabric14);
		fab.add(fabric15);
		fab.add(fabric16);
		fab.add(fabric17);
		fab.add(fabric18);
		fab.add(fabric19);
		fab.add(fabric20);*/
		}
		
		
		return fab;
		
	}
	
	
	
}