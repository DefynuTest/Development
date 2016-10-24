package com.defynu.Controller;

import java.util.ArrayList;
import java.util.Map;
import java.util.Random;

import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.defynu.Dao.MeasurementDao;
import com.defynu.Model.Fabric;
import com.defynu.Model.Shirt;
import com.defynu.Model.ShirtDetails;
import com.defynu.Services.Main;


@Controller
@Scope("session")
public class DesignController extends HttpServlet {

	
 ArrayList<Shirt> sht = new ArrayList<Shirt>();
 
	Fabric fabric = new Fabric();
	Shirt s1 = new Shirt();
	ShirtDetails details= new ShirtDetails();
	
	ArrayList<Fabric> fablist = new ArrayList<Fabric>();
	

	@RequestMapping(value = "/design{someID}", method = RequestMethod.GET)
	public ModelAndView design(@RequestParam Map<String,String> reqPar, HttpServletRequest request, HttpServletResponse response){
		HttpSession session=request.getSession(false); 
		//Shirt shirt=new Shirt();
		session.setAttribute("shirt", s1);

		String body = reqPar.get("body");
		s1.setBody(body);  
		System.out.println("bodyy"+ body);
		String outercollar = reqPar.get("outercollar");
		s1.setOutercollar(outercollar);
		String innercollar = reqPar.get("innercollar");
		s1.setInnercollar(innercollar);
		String outercuff = reqPar.get("outercuff");
		s1.setOutercuff(outercuff);
		String innercuff = reqPar.get("innercuff");
		s1.setInnercuff(innercuff);
		String button = reqPar.get("button");
		s1.setButton(button);
		String buttonplacket = reqPar.get("buttonplacket");
		s1.setButtonplacket(buttonplacket);
		String outsidefastening = reqPar.get("outsidefastening");
		s1.setOutsidefastening(outsidefastening);
		String pocket = reqPar.get("pocket");
		s1.setPocket(pocket);
		String cost = s1.getBody();
		int price = Integer.parseInt(cost);
		fablist=fabric.AddFabric();
		s1.setPrice(fablist.get(price-1).getPrice());

		ModelAndView model= null;
		model = new ModelAndView("customize");
		model.addObject("shirt", s1.getBody());
		model.addObject("OuterCollar", s1.getOutercollar());
		model.addObject("InnerCollar", s1.getInnercollar());
		model.addObject("OuterCuff", s1.getOutercuff());
		model.addObject("InnerCuff", s1.getInnercuff());
		model.addObject("Button", s1.getButton());
		model.addObject("ButtonPlacket", s1.getButtonplacket());
		model.addObject("OutsideFastening", s1.getOutsidefastening());
		model.addObject("Pocket", s1.getPocket());
		model.addObject("Price", s1.getPrice());
		int j = 0;
		int cart = 0;
		System.out.println("unmae"+ session.getAttribute("email"));
		if (session.getAttribute("email") == null) {
			while (j < sht.size()) {
				cart = cart + sht.get(j).getQty();
				j++;
			}
			model.addObject("cart", cart);
			for (int i = 0; i < sht.size(); i++) {
				System.out.println(sht.get(i).body + sht.get(i).outercollar);
			}
		} else {
			Main crt = new Main();
			ArrayList<Shirt> sht1 = new ArrayList<Shirt>();

			System.out.println(sht1.size());

			int i = 0;
			String y;
			System.out.println("Hi" + sht.size());
			while (i < sht.size()) {
				try {
					y = crt.AddtoCart(sht.get(i), request);
				} catch (Exception e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
				i++;
			}
			try {
				sht1 = crt.ShowCart(request);
			} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			// sht.add(shirt);
			int k = 0;
			int carts = 0;
			while (k < sht1.size()) {
				carts = carts + sht1.get(k).getQty();
				System.out.println(sht1.get(k).body);
				k++;
			}

			model.addObject("cart", carts);
		}

		return model;
	}


	/****************************Design a/b/c... ***********************/

	@RequestMapping(value = "/designa{someID}", method = RequestMethod.GET)
	public ModelAndView designa(@RequestParam Map<String,String> reqPar ,HttpServletRequest request, HttpServletResponse response) {


		String body = reqPar.get("body");
		s1.setBody(body);
		String outercollar = reqPar.get("outercollar");
		s1.setOutercollar(outercollar);
		String innercollar = reqPar.get("innercollar");
		s1.setInnercollar(innercollar);
		String outercuff = reqPar.get("outercuff");
		s1.setOutercuff(outercuff);
		String innercuff = reqPar.get("innercuff");
		s1.setInnercuff(innercuff);
		String button = reqPar.get("button");
		s1.setButton(button);
		String buttonplacket = reqPar.get("buttonplacket");
		s1.setButtonplacket(buttonplacket);
		String outsidefastening = reqPar.get("outsidefastening");
		s1.setOutsidefastening(outsidefastening);
		String pocket = reqPar.get("pocket");
		s1.setPocket(pocket);
		String cost = s1.getBody();
		fablist=fabric.AddFabric();
		int price = Integer.parseInt(cost);
		s1.setPrice(fablist.get(price-1).getPrice());

		ModelAndView model= null;
		model = new ModelAndView("customizea");
		model.addObject("shirt", s1.getBody());
		model.addObject("OuterCollar", s1.getOutercollar());
		model.addObject("InnerCollar", s1.getInnercollar());
		model.addObject("OuterCuff", s1.getOutercuff());
		model.addObject("InnerCuff", s1.getInnercuff());
		model.addObject("Button", s1.getButton());
		model.addObject("ButtonPlacket", s1.getButtonplacket());
		model.addObject("OutsideFastening", s1.getOutsidefastening());
		model.addObject("Pocket", s1.getPocket());			
		model.addObject("Price", s1.getPrice());
		return model; 
	}	   


	@RequestMapping(value = "/designb{someID}", method = RequestMethod.GET)
	public ModelAndView designb(@RequestParam Map<String,String> reqPar) {


		String body = reqPar.get("body");
		s1.setBody(body);
		String cost = s1.getBody();
		int price = Integer.parseInt(cost);
		fablist=fabric.AddFabric();
		s1.setPrice(fablist.get(price-1).getPrice());

		ModelAndView model= null;
		model = new ModelAndView("customizea");
		model.addObject("shirt", s1.getBody());
		model.addObject("OuterCollar", s1.getOutercollar());
		model.addObject("InnerCollar", s1.getInnercollar());
		model.addObject("OuterCuff", s1.getOutercuff());
		model.addObject("InnerCuff", s1.getInnercuff());
		model.addObject("Button", s1.getButton());
		model.addObject("ButtonPlacket", s1.getButtonplacket());
		model.addObject("OutsideFastening", s1.getOutsidefastening());
		model.addObject("Pocket", s1.getPocket());
		model.addObject("Price", s1.getPrice());


		return model; 
	}	

	@RequestMapping(value = "/designc{someID}", method = RequestMethod.GET)
	public ModelAndView designc(@RequestParam Map<String,String> reqPar) {

		String outercollar=null;
		String outercollarset = reqPar.get("outercollar");
		String list = reqPar.get("list");

		if(list.equalsIgnoreCase("type"))
		{
			String outercollarid= s1.getOutercollar();

			String id= outercollarid.substring(2,3);
			String outercollarname= outercollarset;

			outercollar= outercollarname + id;

			s1.setOutercollar(outercollar);
		}

		else
		{
			String outercollarid= s1.getOutercollar();

			String id= outercollarid.substring(0,2);
			String outercollarname= outercollarset;

			outercollar= id + outercollarname;

			s1.setOutercollar(outercollar);
		}

		ModelAndView model= null;
		model = new ModelAndView("customizea");
		model.addObject("shirt", s1.getBody());
		model.addObject("OuterCollar", outercollar);
		model.addObject("InnerCollar", s1.getInnercollar());
		model.addObject("OuterCuff", s1.getOutercuff());
		model.addObject("InnerCuff", s1.getInnercuff());
		model.addObject("Button", s1.getButton());
		model.addObject("ButtonPlacket", s1.getButtonplacket());
		model.addObject("OutsideFastening", s1.getOutsidefastening());
		model.addObject("Pocket", s1.getPocket());
		model.addObject("Price", s1.getPrice());
		return model; 
	}	   


	@RequestMapping(value = "/designic{someID}", method = RequestMethod.GET)
	public ModelAndView designic(@RequestParam Map<String,String> reqPar) {



		String innercollar = reqPar.get("innercollar");
		s1.setInnercollar(innercollar);
		ModelAndView model= null;
		model = new ModelAndView("customizea");
		model.addObject("shirt", s1.getBody());
		model.addObject("OuterCollar", s1.getOutercollar());
		model.addObject("InnerCollar", s1.getInnercollar());
		model.addObject("OuterCuff", s1.getOutercuff());
		model.addObject("InnerCuff", s1.getInnercuff());
		model.addObject("Button", s1.getButton());
		model.addObject("ButtonPlacket", s1.getButtonplacket());
		model.addObject("OutsideFastening", s1.getOutsidefastening());
		model.addObject("Pocket", s1.getPocket());
		model.addObject("Price", s1.getPrice());
		return model; 
	}


	@RequestMapping(value = "/designocu{someID}", method = RequestMethod.GET)
	public ModelAndView designocu(@RequestParam Map<String,String> reqPar) {


		String outercuff=null;
		String outercuffset = reqPar.get("outercuff");
		String list = reqPar.get("list");


		if(list.equalsIgnoreCase("type"))
		{
			String outercuffid= s1.getOutercuff();

			String id= outercuffid.substring(2,3);
			String outercuffname= outercuffset;

			outercuff= outercuffname + id;

			s1.setOutercuff(outercuff);
		}

		else
		{
			String outercuffid= s1.getOutercuff();

			String id= outercuffid.substring(0,2);
			String outercuffname= outercuffset;

			outercuff= id + outercuffname;

			s1.setOutercuff(outercuff);
		}

		ModelAndView model= null;
		model = new ModelAndView("customizea");
		model.addObject("shirt", s1.getBody());
		model.addObject("OuterCollar", s1.getOutercollar());
		model.addObject("InnerCollar", s1.getInnercollar());
		model.addObject("OuterCuff", s1.getOutercuff());
		model.addObject("InnerCuff", s1.getInnercuff());
		model.addObject("Button", s1.getButton());
		model.addObject("ButtonPlacket", s1.getButtonplacket());
		model.addObject("OutsideFastening", s1.getOutsidefastening());
		model.addObject("Pocket", s1.getPocket());
		model.addObject("Price", s1.getPrice());
		return model; 
	}

	@RequestMapping(value = "/designicu{someID}", method = RequestMethod.GET)
	public ModelAndView designicu(@RequestParam Map<String,String> reqPar) {


		String innercuff = reqPar.get("innercuff");
		s1.setInnercuff(innercuff);
		System.out.println(s1.getBody());
		System.out.println("hi" + s1.getOutercuff());
		ModelAndView model= null;
		model = new ModelAndView("customizea");
		model.addObject("shirt", s1.getBody());
		model.addObject("OuterCollar", s1.getOutercollar());
		model.addObject("InnerCollar", s1.getInnercollar());
		model.addObject("OuterCuff", s1.getOutercuff());
		model.addObject("InnerCuff", s1.getInnercuff());
		model.addObject("Button", s1.getButton());
		model.addObject("ButtonPlacket", s1.getButtonplacket());
		model.addObject("OutsideFastening", s1.getOutsidefastening());
		model.addObject("Pocket", s1.getPocket());
		model.addObject("Price", s1.getPrice());
		return model; 
	}

	@RequestMapping(value = "/designof{someID}", method = RequestMethod.GET)
	public ModelAndView designof(@RequestParam Map<String,String> reqPar) {


		String outsidefastening = reqPar.get("outsidefastening");
		s1.setOutsidefastening(outsidefastening);

		ModelAndView model= null;
		model = new ModelAndView("customizea");
		model.addObject("shirt", s1.getBody());
		model.addObject("OuterCollar", s1.getOutercollar());
		model.addObject("InnerCollar", s1.getInnercollar());
		model.addObject("OuterCuff", s1.getOutercuff());
		model.addObject("InnerCuff", s1.getInnercuff());
		model.addObject("Button", s1.getButton());
		model.addObject("ButtonPlacket", s1.getButtonplacket());
		model.addObject("OutsideFastening", s1.getOutsidefastening());
		model.addObject("Pocket", s1.getPocket());
		model.addObject("Price", s1.getPrice());
		return model; 
	}

	@RequestMapping(value = "/designbp{someID}", method = RequestMethod.GET)
	public ModelAndView designbp(@RequestParam Map<String,String> reqPar) {



		String buttonplacket = reqPar.get("buttonplacket");
		s1.setButtonplacket(buttonplacket);

		ModelAndView model= null;
		model = new ModelAndView("customizea");
		model.addObject("shirt", s1.getBody());
		model.addObject("OuterCollar", s1.getOutercollar());
		model.addObject("InnerCollar", s1.getInnercollar());
		model.addObject("OuterCuff", s1.getOutercuff());
		model.addObject("InnerCuff", s1.getInnercuff());
		model.addObject("Button", s1.getButton());
		model.addObject("ButtonPlacket", s1.getButtonplacket());
		model.addObject("OutsideFastening", s1.getOutsidefastening());
		model.addObject("Pocket", s1.getPocket());
		model.addObject("Price", s1.getPrice());
		return model; 
	}



	@RequestMapping(value = "/designp{someID}", method = RequestMethod.GET)
	public ModelAndView designp(@RequestParam Map<String,String> reqPar) {

		String pocket=null;
		String pocketset = reqPar.get("pocket");
		String list = reqPar.get("list");


		if(list.equalsIgnoreCase("type"))
		{
			String pocketid= s1.getPocket();

			String id= pocketid.substring(2,3);
			String pocketname= pocketset;

			pocket= pocketname + id;

			s1.setPocket(pocket);
		}

		else
		{
			String pocketid= s1.getPocket();

			String id= pocketid.substring(0,2);
			String pocketname= pocketset;

			pocket= id + pocketname;

			s1.setPocket(pocket);
		}

		ModelAndView model= null;
		model = new ModelAndView("customizea");
		model.addObject("shirt", s1.getBody());
		model.addObject("OuterCollar", s1.getOutercollar());
		model.addObject("InnerCollar", s1.getInnercollar());
		model.addObject("OuterCuff", s1.getOutercuff());
		model.addObject("InnerCuff", s1.getInnercuff());
		model.addObject("Button", s1.getButton());
		model.addObject("ButtonPlacket", s1.getButtonplacket());
		model.addObject("OutsideFastening", s1.getOutsidefastening());
		model.addObject("Pocket", s1.getPocket());
		model.addObject("Price", s1.getPrice());

		return model; 
	}

	/*****************************************************Add To Cart**************************************/

	@RequestMapping(value = "/addtocart{someID}", method = RequestMethod.GET)
	public ModelAndView getHomePage1(@RequestParam Map<String, String> reqPar,HttpServletRequest request, HttpServletResponse response) {
		// Shirt shirt=new Shirt();
		// ModelAndView model= null;
		HttpSession session=request.getSession();
		ModelAndView model = null;
		model = new ModelAndView("hello");
		model.setViewName("hello");
		return model;
	}


	@RequestMapping(value = "/addtocart{someID}", method = RequestMethod.POST)
	public ModelAndView Addtocart(@RequestParam Map<String, String> reqPar,
			HttpServletRequest request, HttpServletResponse response)
					throws Exception {
		
		HttpSession session = request.getSession();
		System.out.println("uname"+session.getAttribute("email") );
		fablist = Fabric.AddFabric();
		
			session.setAttribute("cart", sht);
			Shirt shirt = new Shirt();
			shirt = (Shirt) session.getAttribute("shirt");
			String body = reqPar.get("body");
			shirt.setBody(body);
			String outercollar = reqPar.get("outercollar");
			shirt.setOutercollar(outercollar);
			String innercollar = reqPar.get("innercollar");
			shirt.setInnercollar(innercollar);
			String outercuff = reqPar.get("outercuff");
			shirt.setOutercuff(outercuff);
			String innercuff = reqPar.get("innercuff");
			shirt.setInnercuff(innercuff);
			String button = reqPar.get("button");
			shirt.setButton(button);
			String buttonplacket = reqPar.get("buttonplacket");
			shirt.setButtonplacket(buttonplacket);
			String outsidefastening = reqPar.get("outsidefastening");
			shirt.setOutsidefastening(outsidefastening);
			String pocket = reqPar.get("pocket");
			shirt.setPocket(pocket);
		//	int qty = shirt.getQty() + 1;
			shirt.setQty(1);
			shirt.setNo(sht.size() + 1);
			System.out.println("Shirt no" +shirt.getNo());
			System.out.println("qqqqq"+shirt.getQty());
			String cost = shirt.getBody();
			fablist=fabric.AddFabric();
			int price = Integer.parseInt(cost);
			shirt.setPrice(fablist.get(price-1).getPrice());
			
			Random rand = new Random();
			int orderid = rand.nextInt((999 - 100) + 1) + 100;
			//String OTP=Integer.toString(orderid);
			session.setAttribute("orderid", orderid);

			ModelAndView model = null;
			model = new ModelAndView("checkout1");
			model.addObject("shirt", shirt.getBody());
			model.addObject("OuterCollar", shirt.getOutercollar());
			model.addObject("InnerCollar", shirt.getInnercollar());
			model.addObject("OuterCuff", shirt.getOutercuff());
			model.addObject("InnerCuff", shirt.getInnercuff());
			model.addObject("Button", shirt.getButton());
			model.addObject("ButtonPlacket", shirt.getButtonplacket());
			model.addObject("OutsideFastening", shirt.getOutsidefastening());
			model.addObject("Pocket", shirt.getPocket());
			model.addObject("Price", shirt.getPrice());
			model.addObject("list", sht);
			//model.addObject("loggedInUser", "mithileshcrj@gmail");
			//ArrayList<String> bodyname,outercollarname,pocketname,outercuffname;
			//bodyname= ShirtDetails.BodyName();
			//outercollarname= ShirtDetails.OutercollarName();
			//outercuffname= ShirtDetails.OutercuffName();
			//pocketname= ShirtDetails.PocketName();
			
			String collartype="default";
			String ptype="default";
			String cufftype="default";
			String outercollarid= shirt.getOutercollar();
			String id= outercollarid.substring(0,2);
			if(id.equalsIgnoreCase("bc"))
			{
				collartype = "Business Classic";
				
			}
			 if(id.equalsIgnoreCase("ca")){
					
					collartype = "Cut Away";
				}
			 if(id.equalsIgnoreCase("bd")){
					
					collartype = "Button Down";
				}
			 if(id.equalsIgnoreCase("mh")){
					
					collartype = "Mao";
				}
			shirt.setOutercollartype(collartype);
			String pocketid= shirt.getPocket();
			String pid= pocketid.substring(0,2);
			if(pid.equalsIgnoreCase("np")){
				
				ptype = "nopocket";
			}
			if(pid.equalsIgnoreCase("sp")){
				
				ptype = "Simple Pocket";
			}
			if(pid.equalsIgnoreCase("fp")){
				
				ptype = "Flap Pocket";
			}
			
			shirt.setPockettype(ptype);
			String outercuffid= shirt.getOutercuff();
			String oid= outercuffid.substring(0,2);
			if(oid.equalsIgnoreCase("sb")){
				
				cufftype = "Single Button";
			}
			if(oid.equalsIgnoreCase("cc")){
				
				cufftype = "Convertible";
			}
			if(oid.equalsIgnoreCase("db")){
				
				cufftype = "Double Button";
			}
			if(oid.equalsIgnoreCase("fc")){
				
				cufftype = "French Cuff";
			}
			
			shirt.setOutercufftype(cufftype);
			model.addObject("bodyname",fablist.get(Integer.parseInt(shirt.body) - 1).name);
			model.addObject("outercollarname",collartype);
			model.addObject("outercuffname",cufftype);
			model.addObject("pocketname",ptype);
			//System.out.println("check" + username.getUname());
			if (session.getAttribute("email") == null) {
				sht.add(shirt);
				int j = 0;
				int cart = 0;
				while (j < sht.size()) {
					cart = cart + sht.get(j).getQty();
					j++;
				}
				model.addObject("cart", cart);
				for (int i = 0; i < sht.size(); i++) {
					System.out.println(sht.get(i).body + sht.get(i).outercollar);
				}
			} else {
				Main crt = new Main();
				String y;
				ArrayList<Shirt> sht1 = new ArrayList<Shirt>();
				sht1 = crt.ShowCart(request);
				shirt.setNo(sht1.size() + 1);
				y = crt.AddtoCart(shirt, request);
				MeasurementDao measurement = new MeasurementDao();
				y=measurement.AddShirtDetails(request,shirt);
				y= measurement.Addmeasurenet(request,shirt);
				
				System.out.println("shhhhittt"+ sht1.size()); 
		
				int j = 0;
				int cart = 1;
				while (j < sht1.size()) {
					cart = cart + sht1.get(j).getQty();
					j++;
				}
				model.addObject("cart", cart);
				model.addObject("loggedInUser",session.getAttribute("email") );
				System.out.println("cart"+cart);
			}
			
			model.setViewName("AddToCart");
			return model;
		}
	
	/***************************************************Countinue Shoping**********************************/
	
	@RequestMapping(value = "/continueshopping{someID}", method = RequestMethod.POST)
	public ModelAndView countinueshopping(
			@RequestParam Map<String, String> reqPar,
			HttpServletRequest request, HttpServletResponse response) {
		HttpSession session = request.getSession();
		System.out.println(session);
		ModelAndView model = null;
		model = new ModelAndView("customize");
		
		
		Shirt shirt = new Shirt();
		String body = reqPar.get("body");
		shirt.setBody(body);
		String outercollar = reqPar.get("outercollar");
		shirt.setOutercollar(outercollar);
		String innercollar = reqPar.get("innercollar");
		shirt.setInnercollar(innercollar);
		String outercuff = reqPar.get("outercuff");
		shirt.setOutercuff(outercuff);
		String innercuff = reqPar.get("innercuff");
		shirt.setInnercuff(innercuff);
		String button = reqPar.get("button");
		shirt.setButton(button);
		String buttonplacket = reqPar.get("buttonplacket");
		shirt.setButtonplacket(buttonplacket);
		String outsidefastening = reqPar.get("outsidefastening");
		shirt.setOutsidefastening(outsidefastening);
		String pocket = reqPar.get("pocket");
		shirt.setPocket(pocket);
		int qty = shirt.getQty() + 1;
		shirt.setQty(qty);
		shirt.setNo(sht.size() + 1);
		System.out.println("Shirt no" +shirt.getNo());
		
		String cost = shirt.getBody();
		fablist=fabric.AddFabric();
		Integer price = Integer.parseInt(cost);
		shirt.setPrice(fablist.get(price-1).getPrice());
		
		model.addObject("shirt", "1");
		model.addObject("Button", "1");
		model.addObject("ButtonPlacket", "1");
		model.addObject("OuterCollar", "bc1");
		model.addObject("InnerCollar", "1");
		model.addObject("OuterCuff", "sb1");
		model.addObject("InnerCuff", "1");
		model.addObject("OutsideFastening", "1");
		model.addObject("Pocket", "sp1");
		model.addObject("Price", "800");
		
		
		if (session.getAttribute("email") == null) {
			//sht.add(shirt);
			int j = 0;
			int cart = 0;
			while (j < sht.size()) {
				cart = cart + sht.get(j).getQty();
				j++;
			}
			
			model.addObject("cart", cart);
			
		} else {
			Main crt = new Main();
			//String y;
			ArrayList<Shirt> sht1 = new ArrayList<Shirt>();
			
		//	y = crt.AddtoCart(shirt, username.getUname());
			try {
				sht1 = crt.ShowCart(request);
			} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			int j = 0;
			int cart = 0;
			while (j < sht1.size()) {
				cart = cart + sht1.get(j).getQty();
				j++;
			}
			model.addObject("cart", cart);
			System.out.println("SIzeeeeee"+ sht1.size());
		}
		return model;
	}
	
	
	@RequestMapping(value = "/change{someID}", method = RequestMethod.POST)
	public ModelAndView proceedtocheckout(
			@RequestParam Map<String, String> reqPar,HttpServletRequest request, HttpServletResponse response) {
		HttpSession session = request.getSession();

		Shirt shirt = new Shirt();

		String body = reqPar.get("body");

		shirt.setBody(body);
		System.out.println(shirt.getBody());
		String outercollar = reqPar.get("outercollar");
		shirt.setOutercollar(outercollar);
		System.out.println(outercollar);
		String innercollar = reqPar.get("innercollar");
		shirt.setInnercollar(innercollar);
		System.out.println(innercollar);
		String outercuff = reqPar.get("outercuff");
		shirt.setOutercuff(outercuff);
		System.out.println(outercuff);
		String innercuff = reqPar.get("innercuff");
		shirt.setInnercuff(innercuff);
		System.out.println(innercuff);
		String button = reqPar.get("button");
		shirt.setButton(button);
		System.out.println(button);
		String buttonplacket = reqPar.get("buttonplacket");
		shirt.setButtonplacket(buttonplacket);
		System.out.println(buttonplacket);
		String outsidefastening = reqPar.get("outsidefastening");
		shirt.setOutsidefastening(outsidefastening);
		System.out.println(outsidefastening);
		String pocket = reqPar.get("pocket");
		shirt.setPocket(pocket);
		System.out.println(pocket);
		String cost = shirt.getBody();
		fablist=fabric.AddFabric();
		int price = Integer.parseInt(cost);
		shirt.setPrice(fablist.get(price-1).getPrice());
		
		ModelAndView model = null;
		model = new ModelAndView("customize");
		model.addObject("shirt", shirt.getBody());
		model.addObject("OuterCollar", shirt.getOutercollar());
		model.addObject("InnerCollar", shirt.getInnercollar());
		model.addObject("OuterCuff", shirt.getOutercuff());
		model.addObject("InnerCuff", shirt.getInnercuff());
		model.addObject("Button", shirt.getButton());
		model.addObject("ButtonPlacket", shirt.getButtonplacket());
		model.addObject("OutsideFastening", shirt.getOutsidefastening());
		model.addObject("Pocket", shirt.getPocket());
		model.addObject("Price", shirt.getPrice());
		int i = sht.size();
		
		if (session.getAttribute("email") == null) {
			//sht.add(shirt);
			int j = 0;
			int cart = 0;
			sht.remove(i - 1);
			while (j < sht.size()) {
				cart = cart + sht.get(j).getQty();
				j++;
			}
			
			model.addObject("cart", cart);
			
		} else {
			Main crt = new Main();
			//String y;
			ArrayList<Shirt> sht1 = new ArrayList<Shirt>();
			
		//	y = crt.AddtoCart(shirt, username.getUname());
			try {
				sht1 = crt.ShowCart(request);
			} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			int j = 0;
			i=sht1.size();
			int cart = 0;
			sht1.remove(i - 1);
			while (j < sht1.size()) {
				cart = cart + sht1.get(j).getQty();
				j++;
			}
			model.addObject("cart", cart);
			System.out.println("SIzeeeeee"+ sht1.size());
		}
		// model = new ModelAndView("customize");
		return model;
	}

	/* Mapping for Proceed to checkout */

	@RequestMapping(value = "/checkout{someID}", method = RequestMethod.GET)
	public ModelAndView checkout(@RequestParam Map<String, String> reqPar,
			HttpServletRequest request, HttpServletResponse response) {
		HttpSession session = request.getSession();
		// fabric=Fabric.AddFabric();
		System.out.println(session);
		//String profile = reqPar.get("profile");
		//System.out.println(profile);
		ModelAndView model = null;
		model = new ModelAndView("checkout1");
		model.setViewName("checkout1");
		
		if (session.getAttribute("email") == null) {
			//sht.add(shirt);
			int j = 0;
			int cart = 0;
			int amount=0;
			int total=0;
			while (j < sht.size()) {
				cart = cart + sht.get(j).getQty();
				
				amount = amount + (sht.get(j).getQty() * sht.get(j).getPrice());
				j++;
			}
			System.out.println("amount"+ amount);
			System.out.println("total"+ total);
			total=(70*amount)/100;
			model.addObject("total", total);
			
			model.addObject("amount", amount);
			
			System.out.println("hhhhhhhh");
			model.addObject("list", sht);
			model.addObject("loggedInUser",session.getAttribute("email"));

			model.addObject("cart", cart);
			
		} else {
			Main crt = new Main();
			String y;
			ArrayList<Shirt> sht1 = new ArrayList<Shirt>();
			
		//	y = crt.AddtoCart(shirt, username.getUname());
			try {
				sht1 = crt.ShowCart(request);
			} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			int j = 0;
			int cart = 0;
			/*while (j < sht1.size()) {
				cart = cart + sht1.get(j).getQty();
				j++;
			}
			model.addObject("cart", cart);*/
			model.addObject("list", sht1);
			System.out.println("SIzeeeeee"+ sht.size());
		int amount = 0;
		int total = 0;
		j=0;
		while (j < sht1.size()) {
			cart = cart + sht1.get(j).getQty();
			amount = amount + (sht1.get(j).getQty() * sht1.get(j).getPrice());
			j++;
		}
		System.out.println("amount"+ amount);
		System.out.println("total"+ total);
		total=(70*amount)/100;
		model.addObject("total", total);
		
		model.addObject("amount", amount);
		model.addObject("cart", cart);
		//model.addObject("profile", profile);
		}

		return model;
	}
	

	/*@RequestMapping(value = "/checkout{someID}", method = RequestMethod.POST)
	public ModelAndView checkoutget(@RequestParam Map<String, String> reqPar,
			HttpServletRequest request, HttpServletResponse response) {
		HttpSession session = request.getSession();
		// fabric=Fabric.AddFabric();
		System.out.println(session);
		String qty = reqPar.get("qty");
		int q = Integer.parseInt(qty);

		String object = reqPar.get("object");
		int no = Integer.parseInt(object);
		sht.get(no).setQty(q);
		if (sht.get(no).getQty() == 0) {
			sht.remove(no);
		}
		ModelAndView model = null;
		int j = 0;
		int cart = 0;
		int amount = 0;
		// int price = sht.get(no-1).getQty()*sht.get(no-1).getPrice();
		while (j < sht.size()) {
			cart = cart + sht.get(j).getQty();
			// System.out.println("ppp" +sht.get(j).getPrice());
			amount = amount + (sht.get(j).getQty() * sht.get(j).getPrice());
			System.out.println("hi" + sht.get(j).getQty());
			j++;
		}

		model = new ModelAndView("checkout");
		model.setViewName("checkout");
		model.addObject("amount", amount);
		// model.addObject("price", price);
		model.addObject("cart", cart);
		model.addObject("list", sht);
		// model.addObject("fabric",fabric);

		return model;
	}
	
	*/
	
	}




