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
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.defynu.Services.Main;
import com.defynu.Model.Fabric;
import com.defynu.Model.Shirt;

@Controller
@Scope("session") 
public class DesignController extends HttpServlet  {
	 ArrayList<Shirt> sht = new ArrayList<Shirt>();
	 ArrayList<Fabric> fabric = new ArrayList<Fabric>();
	 String uname;
	 Shirt s1 = new Shirt();

	 @RequestMapping("/customize{someID}")
		public @ResponseBody ModelAndView Default(HttpServletRequest request, HttpServletResponse response) throws Exception {
			HttpSession session=request.getSession(); 
			System.out.println(session);
			//Shirt s1 = new Shirt();
			session.setAttribute("shirt",s1);
		  //  Shirt s1 = new Shirt("1", "1", "1", "1", "1", "1", "1", "1");
			s1.Display(s1);
			
			ModelAndView model= null;
			model = new ModelAndView("customize");
			model.addObject("shirt","1");
			model.addObject("Button","1");
			model.addObject("ButtonPlacket","1");
			model.addObject("OuterCollar","1");
			model.addObject("InnerCollar","1");
			model.addObject("OuterCuff","1");
			model.addObject("InnerCuff","1");
			model.addObject("OutsideFastening","1");
			model.addObject("Pocket","1");
			model.addObject("Price","800");
			 int j=0;
			 int cart =0;
			 
			 if(uname==null)
				{
				 while(j<sht.size())
				 {
					 cart=cart+ sht.get(j).getQty();
					 j++;
				 }
					model.addObject("cart", cart);
					for (int i = 0; i < sht.size(); i++) {
						System.out.println(sht.get(i).body + sht.get(i).outercollar);
					}
				}
				else{
					Main crt= new Main();
					ArrayList<Shirt> sht1 = new ArrayList<Shirt>();
				
					 System.out.println(sht1.size());
					 
					int i=0;
						String y;
						System.out.println("Hi" + sht.size());
						while(i<sht.size())
						{
						y=crt.AddtoCart(sht.get(i),uname);
						i++;
						}
						//sht1=crt.ShowCart(uname);
					//sht.add(shirt);
					 int k=0;
					 int carts =0;
					while(k<sht1.size())
					 {
						 carts=carts+ sht1.get(k).getQty();
						 System.out.println(sht1.get(k).body);
						 k++;
					 }
					
					
			model.addObject("cart", carts);
				}
			
		return model;
	}
		/*Mapping for Add To Cart */

		
		@RequestMapping(value="/addtocart{someID}", method = RequestMethod.POST)

		public ModelAndView Addtocart(@RequestParam Map<String,String> reqPar,HttpServletRequest request, HttpServletResponse response) throws Exception{
			
			 HttpSession session=request.getSession(false); 
			 fabric=Fabric.AddFabric();
			 if (session == null) {
				 session = request.getSession();
				
				 ModelAndView model= null;
				 model.setViewName("AddToCart");
				 model.addObject("fabric",fabric);
				 
				 
					//shirt.Cart(shirt.getBody(),shirt.getOutercollar(),request, response);
					return model;
				 
			 }
			 else{
				 
			 
			 System.out.println(session);
			 
			 session.setAttribute("cart",sht);
			 
			Shirt shirt=new Shirt();
			
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
			   String cost = reqPar.get("price");
			   int price = Integer.parseInt(cost);
			   shirt.setPrice(price);
			   System.out.println(price);
			  int qty=shirt.getQty() + 1 ;
			   shirt.setQty(qty);
			   shirt.setNo(sht.size()+1);
			   
			   
			    ModelAndView model= null;
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
				 model.addObject("fabric",fabric.get(Integer.parseInt(shirt.body)-1).name);
		
				//Shirt s = new Shirt();
				//s.setBody(b);
				//s.setOutercollar(c);
				if(uname==null)
				{
					sht.add(shirt);
					 int j=0;
					 int cart =0;
					while(j<sht.size())
					 {
						 cart=cart+ sht.get(j).getQty();
						 j++;
					 }
					model.addObject("cart", cart);
					for (int i = 0; i < sht.size(); i++) {
						System.out.println(sht.get(i).body + sht.get(i).outercollar);
					}
				}
				else{
					Main crt= new Main();
					String y;
					ArrayList<Shirt> sht1 = new ArrayList<Shirt>();
					y=crt.AddtoCart(shirt,uname);
					sht1=crt.ShowCart(uname);
					System.out.println("sht1 ka size" + sht1.size());
					 int j=0;
					 int cart =0;
					while(j<sht1.size())
					 {
						 cart=cart+ sht1.get(j).getQty();
						 j++;
					 }
					model.addObject("cart", cart);
					for (int i = 0; i < sht.size(); i++) {
						System.out.println(sht.get(i).body + sht.get(i).outercollar);
					}
					
				}
				
			   
			   //model = new ModelAndView("customize");
			   
			model.setViewName("AddToCart");
			 
			//shirt.Cart(shirt.getBody(),shirt.getOutercollar(),request, response);
			return model;
			 }
		} 
		
		@RequestMapping(value="/addtocart{someID}", method = RequestMethod.GET)
		public ModelAndView getHomePage1(@RequestParam Map<String,String> reqPar){
			//Shirt shirt=new Shirt();
			//ModelAndView model= null;
			   
			ModelAndView model= null;
			model = new ModelAndView("hello");   
			model.setViewName("hello");

			System.out.println("dtrfytgughugutgfu");
			//shirt.Cart(shirt.getBody(),shirt.getOutercollar());
			return model;
		} 
		
		@RequestMapping(value="/continueshopping{someID}", method = RequestMethod.POST)
		public ModelAndView countinueshopping(@RequestParam Map<String,String> reqPar , HttpServletRequest request, HttpServletResponse response){
			 HttpSession session=request.getSession(); 
			 System.out.println(session);
			ModelAndView model= null;
			model = new ModelAndView("customize");
			model.addObject("shirt","1");
			model.addObject("Button","1");
			model.addObject("ButtonPlacket","1");
			model.addObject("OuterCollar","1");
			model.addObject("InnerCollar","1");
			model.addObject("OuterCuff","1");
			model.addObject("InnerCuff","1");
			model.addObject("OutsideFastening","1");
			model.addObject("Pocket","1");
			model.addObject("Price","800");
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
			
		@RequestMapping(value = "/design{someID}", method = RequestMethod.GET)
		   public ModelAndView design(@RequestParam Map<String,String> reqPar) {
			
			Shirt shirt=new Shirt();
			shirt=s1;
			
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
			   String pocket = reqPar.get("pocket");
			   shirt.setPocket(pocket);
			   
			   String cost = reqPar.get("price");
			   int price = Integer.parseInt(cost);
			   shirt.setPrice(price);
			   System.out.println(price);
			   
			    ModelAndView model= null;
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
				 int j=0;
				 int cart =0;
				while(j<sht.size())
				 {
					 cart=cart+ sht.get(j).getQty();
					 j++;
				 }
				model.addObject("cart", cart);
			   //model = new ModelAndView("customize");
			   return model; 
		}	   
		
		@RequestMapping(value = "/change{someID}", method = RequestMethod.POST)
		   public ModelAndView proceedtocheckout(@RequestParam Map<String,String> reqPar) {
			
			Shirt shirt=new Shirt();
			
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
			    ModelAndView model= null;
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
				sht.remove(i-1);
				 int j=0;
				 int cart =0;
				while(j<sht.size())
				 {
					 cart=cart+ sht.get(j).getQty();
					 j++;
				 }
				model.addObject("cart", cart);
			   
			   //model = new ModelAndView("customize");
			   return model; 
		}
		
		/*Mapping for Proceed to checkout*/
		
		@RequestMapping(value="/checkout{someID}", method = RequestMethod.GET)
		public ModelAndView checkout(@RequestParam Map<String,String> reqPar ,HttpServletRequest request, HttpServletResponse response ){
			HttpSession session=request.getSession(); 
			// fabric=Fabric.AddFabric();
			System.out.println(session); 
			String profile = reqPar.get("profile");
			System.out.println(profile);
			ModelAndView model= null;
			model = new ModelAndView("checkout");   
			model.setViewName("checkout");
			model.addObject("list", sht);
			 int j=0;
			 int cart =0;
			 int amount=0;
			 int price =0;
			while(j<sht.size())
			 {
				 cart=cart+ sht.get(j).getQty();
				 amount=amount+(sht.get(j).getQty()*sht.get(j).getPrice()); 
				 j++;
			 }
			model.addObject("amount", amount);
			model.addObject("cart", cart);
			model.addObject("profile", profile);
			
			return model;
		} 
		
		@RequestMapping(value="/checkout{someID}", method = RequestMethod.POST)
		public ModelAndView checkoutget(@RequestParam Map<String,String> reqPar ,HttpServletRequest request, HttpServletResponse response ){
			HttpSession session=request.getSession();
			//fabric=Fabric.AddFabric();
			System.out.println(session); 
			String qty = reqPar.get("qty");
			int q = Integer.parseInt(qty);
			
			String object = reqPar.get("object");
			int no = Integer.parseInt(object);
			sht.get(no).setQty(q);
			if(sht.get(no).getQty()==0)
			{
				sht.remove(no);
			}
			ModelAndView model= null;
			 int j=0;
			 int cart =0;
			 int amount=0;
			 //int price = sht.get(no-1).getQty()*sht.get(no-1).getPrice();
			while(j<sht.size())
			 {
				 cart=cart+ sht.get(j).getQty();
				 //System.out.println("ppp" +sht.get(j).getPrice());
				 amount=amount+(sht.get(j).getQty()*sht.get(j).getPrice());
				 System.out.println("hi" + sht.get(j).getQty());
				 j++;
			 }
			
			model = new ModelAndView("checkout");   
			model.setViewName("checkout");
			model.addObject("amount", amount);
		//	model.addObject("price", price);
			model.addObject("cart", cart);
			model.addObject("list", sht);
			// model.addObject("fabric",fabric);
			
		
			
			return model;
		} 
		
	/*	
		@RequestMapping(value="/measurement{someID}", method = RequestMethod.POST)
		public ModelAndView measurement(@RequestParam Map<String,String> reqPar ,HttpServletRequest request, HttpServletResponse response ){
			HttpSession session=request.getSession(); 
			System.out.println(session); 
			String object=reqPar.get("object");
			System.out.println(object);
			int no = Integer.parseInt(object);
			String nck=reqPar.get("neck");
			System.out.println(nck);
			int neck = Integer.parseInt(nck);
			sht.get(no).setNeck(neck);
			System.out.println(sht.get(no).getNeck());
			String chst=reqPar.get("chest");
			int chest = Integer.parseInt(chst);
			sht.get(no).setChest(chest);
			System.out.println(sht.get(no).getChest());
			String hp=reqPar.get("hip");
			int hip = Integer.parseInt(hp);
			sht.get(no).setHip(hip);
			System.out.println(sht.get(no).getHip());
			String wast=reqPar.get("waist");
			int waist = Integer.parseInt(wast);
			sht.get(no).setWaist(waist);
			System.out.println(sht.get(no).getWaist());
			String sat=reqPar.get("seat");
			int seat = Integer.parseInt(sat);
			sht.get(no).setSeat(seat);
			System.out.println(sht.get(no).getSeat());
			String lnth=reqPar.get("length");
			int length = Integer.parseInt(lnth);
			sht.get(no).setLength(length);
			System.out.println(sht.get(no).getLength());
			String soulder=reqPar.get("shoulder");
			int shoulder = Integer.parseInt(soulder);
			sht.get(no).setShoulder(shoulder);
			System.out.println(sht.get(no).getShoulder());
			String am=reqPar.get("arm");
			int arm = Integer.parseInt(am);
			sht.get(no).setArm(arm);
			System.out.println(sht.get(no).getArm());
			String wrst=reqPar.get("wrist");
			int wrist = Integer.parseInt(wrst);
			sht.get(no).setWrist(wrist);
			System.out.println(sht.get(no).getWrist());
			String profile=reqPar.get("profile");
			sht.get(no).setProfile(profile);
			System.out.println(sht.get(no).getProfile());
			
			ModelAndView model= null;
			model = new ModelAndView("checkout");  
			model.addObject("profile", profile);
			model.setViewName("checkout");
			model.addObject("list", sht);
			 int j=0;
			 int cart =0;
			 int amount=0;
			 int price =0;
			while(j<sht.size())
			 {
				 cart=cart+ sht.get(j).getQty();
				 amount=amount+(sht.get(j).getQty()*sht.get(j).getPrice());
				 j++;
			 }
			model.addObject("amount", amount);
			model.addObject("cart", cart);
			return model;
		} 
		
		@RequestMapping(value="/measurement{someID}", method = RequestMethod.GET)
		public ModelAndView measurementPost(@RequestParam Map<String,String> reqPar ,HttpServletRequest request, HttpServletResponse response ){
			HttpSession session=request.getSession(); 
			System.out.println(session); 
			String object=reqPar.get("object");
			System.out.println(object);
			int no = Integer.parseInt(object);
			ModelAndView model= null;
			model = new ModelAndView("measurement"); 
			model.addObject("no", no);
			model.setViewName("measurement");
			return model;
		} 
		
		@RequestMapping(value="/defaultmeasurement{someID}", method = RequestMethod.GET)
		public ModelAndView defaultmeasurement(@RequestParam Map<String,String> reqPar ,HttpServletRequest request, HttpServletResponse response ){
			HttpSession session=request.getSession(); 
			System.out.println(session); 
			String object=reqPar.get("object");
			System.out.println(object);
			int no = Integer.parseInt(object);
			String nck=reqPar.get("neck");
			System.out.println(nck);
			int neck = Integer.parseInt(nck);
			sht.get(no).setNeck(neck);
			System.out.println(sht.get(no).getNeck());
			String chst=reqPar.get("chest");
			int chest = Integer.parseInt(chst);
			sht.get(no).setChest(chest);
			System.out.println(sht.get(no).getChest());
			String hp=reqPar.get("hip");
			int hip = Integer.parseInt(hp);
			sht.get(no).setHip(hip);
			System.out.println(sht.get(no).getHip());
			String wast=reqPar.get("waist");
			int waist = Integer.parseInt(wast);
			sht.get(no).setWaist(waist);
			System.out.println(sht.get(no).getWaist());
			String sat=reqPar.get("seat");
			int seat = Integer.parseInt(sat);
			sht.get(no).setSeat(seat);
			System.out.println(sht.get(no).getSeat());
			String lnth=reqPar.get("length");
			int length = Integer.parseInt(lnth);
			sht.get(no).setLength(length);
			System.out.println(sht.get(no).getLength());
			String soulder=reqPar.get("shoulder");
			int shoulder = Integer.parseInt(soulder);
			sht.get(no).setShoulder(shoulder);
			System.out.println(sht.get(no).getShoulder());
			String am=reqPar.get("arm");
			int arm = Integer.parseInt(am);
			sht.get(no).setArm(arm);
			System.out.println(sht.get(no).getArm());
			String wrst=reqPar.get("wrist");
			int wrist = Integer.parseInt(wrst);
			sht.get(no).setWrist(wrist);
			System.out.println(sht.get(no).getWrist());
			String profile=reqPar.get("profile");
			sht.get(no).setProfile(profile);
			System.out.println(sht.get(no).getProfile());
			
			ModelAndView model= null;
			model = new ModelAndView("checkout");  
			model.addObject("profile", profile);
			model.setViewName("checkout");
			model.addObject("list", sht);
			 int j=0;
			 int cart =0;
			 int amount=0;
			 int price =0;
			while(j<sht.size())
			 {
				 cart=cart+ sht.get(j).getQty();
				 amount=amount+(sht.get(j).getQty()*sht.get(j).getPrice());
				 j++;
			 }
			model.addObject("amount", amount);
			model.addObject("cart", cart);
			return model;
		}
		*/
		@RequestMapping(value = "/designa{someID}", method = RequestMethod.GET)
		   public ModelAndView designa(@RequestParam Map<String,String> reqPar ,HttpServletRequest request, HttpServletResponse response) {
			HttpSession session=request.getSession(); 
			
			   String body = reqPar.get("body");
			   s1.setBody(body);
			   System.out.println(s1.getBody());
			   String outercollar = reqPar.get("outercollar");
			   s1.setOutercollar(outercollar);
			   System.out.println(outercollar);
			   String innercollar = reqPar.get("innercollar");
			   s1.setInnercollar(innercollar);
			   System.out.println(innercollar);
			   String outercuff = reqPar.get("outercuff");
			   s1.setOutercuff(outercuff);
			   System.out.println(outercuff);
			   String innercuff = reqPar.get("innercuff");
			   s1.setInnercuff(innercuff);
			   System.out.println(innercuff);
			   String button = reqPar.get("button");
			   s1.setButton(button);
			   System.out.println(button);
			   String buttonplacket = reqPar.get("buttonplacket");
			   s1.setButtonplacket(buttonplacket);
			   System.out.println(buttonplacket);
			   String outsidefastening = reqPar.get("outsidefastening");
			   s1.setOutsidefastening(outsidefastening);
			   System.out.println(outsidefastening);
			   String pocket = reqPar.get("pocket");
			   s1.setPocket(pocket);
			   System.out.println("mavjgdja"+ pocket);
			   String cost = reqPar.get("price");
			   int price = Integer.parseInt(cost);
			   s1.setPrice(price);
			   System.out.println(price);
			   
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
			
			//Shirt shirt=new Shirt();
			
			   String body = reqPar.get("body");
			   s1.setBody(body);
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
		
		@RequestMapping(value = "/designc{someID}", method = RequestMethod.GET)
		   public ModelAndView designc(@RequestParam Map<String,String> reqPar) {
			
			//Shirt shirt=new Shirt();
			 	String outercollar=null;
			   String outercollarset = reqPar.get("outercollar");
			   String list = reqPar.get("list");
			   
			 //  System.out.println(outercollar1);
			  //   System.out.println("hi" + s1.getOutercollar());
			     
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
			
			//Shirt shirt=new Shirt();
			
			   String innercollar = reqPar.get("innercollar");
			   s1.setInnercollar(innercollar);
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

		
		@RequestMapping(value = "/designocu{someID}", method = RequestMethod.GET)
		   public ModelAndView designocu(@RequestParam Map<String,String> reqPar) {
			
			//Shirt shirt=new Shirt();
			
			
			
			//Shirt shirt=new Shirt();
			 	String outercuff=null;
			   String outercuffset = reqPar.get("outercuff");
			   String list = reqPar.get("list");
			   
			  System.out.println(outercuff);
			     System.out.println("hi" + s1.getOutercuff());
			     
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
			
			// String outercuff = reqPar.get("outercuff");
			   //s1.setOutercuff(outercuff);
			   //System.out.println(s1.getBody());
			    // System.out.println("hi" + s1.getOutercuff());
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
			
			//Shirt shirt=new Shirt();
			
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
			
			//Shirt shirt=new Shirt();
			
			   String outsidefastening = reqPar.get("outsidefastening");
			   s1.setOutsidefastening(outsidefastening);
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
		
		@RequestMapping(value = "/designbp{someID}", method = RequestMethod.GET)
		   public ModelAndView designbp(@RequestParam Map<String,String> reqPar) {
			
			//Shirt shirt=new Shirt();
			
			   String buttonplacket = reqPar.get("buttonplacket");
			   s1.setButtonplacket(buttonplacket);
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
		
		
		
		@RequestMapping(value = "/designp{someID}", method = RequestMethod.GET)
		   public ModelAndView designp(@RequestParam Map<String,String> reqPar) {
			
			String pocket=null;
			   String pocketset = reqPar.get("pocket");
			   String list = reqPar.get("list");
			   
			 //  System.out.println(outercollar1);
			     System.out.println("hi" + s1.getPocket());
			     
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
		
		
		
		
	}





/*
@Controller
@Scope("session")
public class DesignController extends HttpServlet  {
	ArrayList<Shirt> sht = new ArrayList<Shirt>();
	Fabric fabric = new Fabric();
	String uname;
	Shirt s1 = new Shirt();
	ArrayList<Fabric> fablist = new ArrayList<Fabric>();

	@RequestMapping(value = "/design{someID}", method = RequestMethod.GET)
	public ModelAndView design(@RequestParam Map<String,String> reqPar) {

		Shirt shirt=new Shirt();

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
		String cost = shirt.getBody();
		int price = Integer.parseInt(cost);
		fablist=fabric.AddFabric();
		shirt.setPrice(fablist.get(price-1).getPrice());

		ModelAndView model= null;
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
/*
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
		int price = Integer.parseInt(cost);
		//fablist=fabric.AddFabric();
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

}
*/
