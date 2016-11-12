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
		Fabric fabric1 = new Fabric("Gingham,Red", "Premium", "Business", "Patterned", "Oxford", "100%  Cotton",2250,1);
		Fabric fabric2 = new Fabric("Aura,Purple", "Premium", "Classic", "Solid", "Oxford", "100% Cotton" ,2250,2);
		Fabric fabric3 = new Fabric("Carmine,Red", "Basic", "Casual", "Patterned", "Poplin", "100%  Cotton" , 1750,3);
		Fabric fabric4 = new Fabric("Charcoal,Blue", "Basic", "Casual", "Patterned", "Dobby", "100%  Cotton" ,1750,4);
		Fabric fabric5 = new Fabric("Peacock,Blue", "Exclusive", "Classic", "Solid", "Twill", "100%  Cotton",2000,5);
		Fabric fabric6 = new Fabric("Gingham,Blue", "Basic", "Business", "Patterned", "Poplin", "100% Cotton" ,1750,6);
		Fabric fabric7 = new Fabric("Minigrid, Lilac", "Premium", "Business", "Patterned", "Dobby", "100% Cotton" ,2250,7);
		Fabric fabric8 = new Fabric("Arctic,Blue", "Basic", "Casual", "Patterned", "Poplin", "100%  Cotton" ,1750,8);
		Fabric fabric9 = new Fabric("Ethinc,Blue", "Exclusive", "Classic", "Solid", "Plain", "100%  Cotton",2000,9);
		Fabric fabric10 = new Fabric("Heaven,White", "Premium", "Business", "Patterned", "Dobby", "100% Cotton" ,2250,10);
		Fabric fabric11 = new Fabric("Ethnic,Pink", "Exclusive", "Classic", "Solid", "Plain", "100%  Cotton" ,2000,11);
		Fabric fabric12 = new Fabric("Ethinc,Peach", "Exclusive", "Classic", "Solid", "Plain", "100%  Cotton",2000,12);
		/*Fabric fabric13 = new Fabric("Abrantes,blue", "Premium", "Bussiness", "Checked", "Poplin", "100%  Cotton" ,1000,13);
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
		 fab.add(fabric9);
		fab.add(fabric10);
		fab.add(fabric11);
		fab.add(fabric12);
		/*fab.add(fabric13);
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