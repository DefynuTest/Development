package com.defynu.Controller;

import java.util.ArrayList;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.defynu.Model.Shirt;
import com.defynu.Services.Main;

@Controller
@Scope("session")
public class CheckoutController {
	
	@RequestMapping(value = "/checkout{someID}", method = RequestMethod.GET)
	public ModelAndView checkout(@RequestParam Map<String, String> reqPar,
			HttpServletRequest request, HttpServletResponse response) {
		HttpSession session = request.getSession();
		// fabric=Fabric.AddFabric();
		System.out.println(session);
		//String profile = reqPar.get("profile");
		//System.out.println(profile);
		ModelAndView model = null;
		model = new ModelAndView("checkout");
		model.setViewName("checkout");
		
		if (session.getAttribute("email") == null) {
			ArrayList<Shirt> sht= new ArrayList<>();
			sht=(ArrayList<Shirt>) session.getAttribute("cart");
	
			int k=0;
			int cart = 0;
			System.out.println("Sht size"+ sht.size());
			
			int amount=0;
			
			while (k < sht.size()) {
				cart = cart + sht.get(k).getQty();
				// System.out.println("ppp" +sht.get(j).getPrice());
				
				amount = amount + (sht.get(k).getQty() * sht.get(k).getPrice());
				System.out.println("hi" + sht.get(k).getQty());
				k++;
			}
		
			System.out.println(amount);
			model.addObject("list", sht);
			model.addObject("cart", cart);
			for (int i = 0; i < sht.size(); i++) {
				System.out.println(sht.get(i).body + sht.get(i).outercollar);
			}
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
			int cart=0;
			model.addObject("cart", cart);
			model.addObject("list", sht1);
			System.out.println("SIzeeeeee"+ sht1.size());
		int amount = 0;
		int price = 0;
		int k=0;
		while (k < sht1.size()) {
			cart = cart + sht1.get(k).getQty();
			amount = amount + (sht1.get(k).getQty() * sht1.get(k).getPrice());
			k++;
		}
		System.out.println(amount);

		model.addObject("amount", amount);
		model.addObject("cart", cart);
		model.addObject("uname",session.getAttribute("email"));
		//model.addObject("profile", profile);
		}

		return model;
	}
	

	@RequestMapping(value = "/checkout{someID}", method = RequestMethod.POST)
	public ModelAndView checkoutget(@RequestParam Map<String, String> reqPar,
			HttpServletRequest request, HttpServletResponse response) {
		HttpSession session = request.getSession();
		// fabric=Fabric.AddFabric();
		System.out.println(session);
		String qty = reqPar.get("qty");
		int q = Integer.parseInt(qty);

		String object = reqPar.get("object");
		int no = Integer.parseInt(object);
		ArrayList<Shirt> sht= new ArrayList<>();
		sht=(ArrayList<Shirt>) session.getAttribute("cart");
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
		System.out.println(amount);

		model = new ModelAndView("checkout");
		model.setViewName("checkout");
		model.addObject("amount", amount);
		// model.addObject("price", price);
		model.addObject("cart", cart);
		model.addObject("list", sht);
		model.addObject("uname",session.getAttribute("email"));
		// model.addObject("fabric",fabric);

		return model;
	}
	
	
	
	
	
}
