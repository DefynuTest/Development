package com.defynu.Controller;

import java.util.ArrayList;
import java.util.Map;

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

import com.defynu.Model.Fabric;
import com.defynu.Model.SessionVariable;
import com.defynu.Model.Shirt;
import com.defynu.Services.Main;


@Controller
@Scope("session")
public class DesignController extends HttpServlet  {
	ArrayList<Shirt> sht = new ArrayList<Shirt>();
	Fabric fabric = new Fabric();
	Shirt s1 = new Shirt();
	SessionVariable username = new SessionVariable() ;
	ArrayList<Fabric> fablist = new ArrayList<Fabric>();

	@RequestMapping(value = "/design{someID}", method = RequestMethod.GET)
	public ModelAndView design(@RequestParam Map<String,String> reqPar) {

		//Shirt shirt=new Shirt();

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
		int price = Integer.parseInt(cost);
		fablist=fabric.AddFabric();
		s1.setPrice(fablist.get(price-1).getPrice());
		System.out.println("hhhhhhhhhhhhhhhh");

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
		int j=0;
		int cart =0;
		while(j<sht.size())
		{
			cart=cart+ sht.get(j).getQty();
			j++;
		}
		model.addObject("cart", cart);
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
	public ModelAndView getHomePage1(@RequestParam Map<String, String> reqPar) {
		// Shirt shirt=new Shirt();
		// ModelAndView model= null;

		ModelAndView model = null;
		model = new ModelAndView("hello");
		model.setViewName("hello");
		return model;
	}
	
	
	@RequestMapping(value = "/addtocart{someID}", method = RequestMethod.POST)
	public ModelAndView Addtocart(@RequestParam Map<String, String> reqPar,
			HttpServletRequest request, HttpServletResponse response)
			throws Exception {

		HttpSession session = request.getSession(false);
		fablist = Fabric.AddFabric();
		if (session == null) {
			session = request.getSession();

			ModelAndView model = null;
			model.setViewName("AddToCart");
			model.addObject("fabric", fablist);
			return model;

		} else {
			session.setAttribute("cart", sht);
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
			String cost = reqPar.get("price");
			int price = Integer.parseInt(cost);
			shirt.setPrice(price);
			int qty = shirt.getQty() + 1;
			shirt.setQty(qty);
			shirt.setNo(sht.size() + 1);

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
			model.addObject("list", sht);
			model.addObject("fabric",
					fablist.get(Integer.parseInt(shirt.body) - 1).name);
			if (username.getUname() == null) {
				sht.add(shirt);
				int j = 0;
				int cart = 0;
				while (j < sht.size()) {
					cart = cart + sht.get(j).getQty();
					j++;
				}
				model.addObject("cart", cart);
				for (int i = 0; i < sht.size(); i++) {
					System.out
							.println(sht.get(i).body + sht.get(i).outercollar);
				}
			} else {
				Main crt = new Main();
				String y;
				ArrayList<Shirt> sht1 = new ArrayList<Shirt>();
				System.out.println("hhhhhhhhhhh"+ username.getUname());
				y = crt.AddtoCart(shirt, username.getUname());
				sht1 = crt.ShowCart(username.getUname());
				int j = 0;
				int cart = 0;
				while (j < sht1.size()) {
					cart = cart + sht1.get(j).getQty();
					j++;
				}
				model.addObject("cart", cart);
			}
			model.setViewName("AddToCart");
			return model;
		}
	}


}
