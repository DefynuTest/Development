package com.defynu.Model;

import java.util.ArrayList;

public class ShirtDetails {
	public static ArrayList<String> body = new ArrayList<String>();
	public static ArrayList<String> button = new ArrayList<String>();
	//public static ArrayList<String> buttonplacket;
	//public static ArrayList<String> innercollar;
	public static ArrayList<String> outercollar = new ArrayList<String>();
//	public static ArrayList<String> innercuff;
	public static ArrayList<String> outercuff = new ArrayList<String>();
	//public static ArrayList<String> outsidefastening;
	public static ArrayList<String> pocket = new ArrayList<String>();
public static ArrayList<String> BodyName()
{
	if(body.isEmpty())
	{
	
	 body.add("Telde Blue");
	 body.add("Telde,red");
	 body.add("Verin,blue");
	 body.add("Amadora,light blue");
	 body.add("Canha,red&blue");
	 body.add("Caucel,pink");
	 body.add("Nipigon,purple");
	 body.add("Smithers,blue");
	}
	 return body;
}
	
public static ArrayList<String> ButtonName()
{
	 
	
	 button.add(0, "White");
	 button.add(1, "Black");
	 button.add(2, "Red");
	
	 return button;
}
	
public static ArrayList<String> OutercollarName()
{
	 
	
	 outercollar.add(0, "Bussiness Classic");
	 outercollar.add(1, "Cut Away");
	 outercollar.add(2, "Button Down");
	 outercollar.add(3, "Mao");
	
	 return outercollar;
}	


public static ArrayList<String> OutercuffName()
{
	 
	
	 outercuff.add(0, "Single Button");
	 outercuff.add(1, "Convertible");
	 outercuff.add(2, "Double Button");
	 outercuff.add(3, "French");
	
	 return outercuff;
}	

public static ArrayList<String> PocketName()
{
	 
	
	 pocket.add(0, "No Pocket");
	 pocket.add(1, "Straight Pocket");
	 pocket.add(2, "Flap Pocket");
	
	 return pocket;
}


}
