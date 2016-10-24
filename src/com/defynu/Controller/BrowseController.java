package com.defynu.Controller;

import java.util.ArrayList;
import java.util.Map;

import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.jboss.logging.Logger;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.defynu.Model.Fabric;

import com.defynu.Model.Shirt;
import com.defynu.Services.Main;

@Controller
public class BrowseController extends HttpServlet {
	ArrayList<Fabric> fabric = new ArrayList<Fabric>();
	ArrayList<Shirt> sht = new ArrayList<Shirt>();
	
	Logger log= Logger.getLogger(LoginController.class.getName());
	@RequestMapping(value="/browse", method = RequestMethod.GET)
	private ModelAndView browse(@RequestParam Map<String,String> reqPar,HttpServletRequest request , HttpServletResponse response){
		fabric=Fabric.AddFabric();
		ModelAndView model= null;
		HttpSession session=request.getSession(false); 
		model = new ModelAndView("browse"); 
		log.info("Will be resolved at browse.jsp");
		if(session.getAttribute("email")==null){
			int j = 0;
			int cart = 0;
			while (j < sht.size()) {
				cart = cart + sht.get(j).getQty();
				j++;
			}
			log.info("Cart will be incremented");
			model.addObject("cart", cart);
			
		}
		else{
			Main crt= new Main();
			ArrayList<Shirt> sht1 = new ArrayList<Shirt>();
			try {
				sht1=crt.ShowCart(request);
			} catch (Exception e) {
				e.printStackTrace();
			}
			System.out.println("sht1 ka size" + sht1.size());
			int j=0;
			int cart =0;
			while(j<sht1.size())
			{
				cart=cart+ sht1.get(j).getQty();
				j++;
			}
			model.addObject("cart", cart);
			model.addObject("cart", cart);
			model.addObject("fabric",fabric);
		}
		return model;
	}

	@RequestMapping(value="/browses{someID}", method=RequestMethod.GET)
	public ModelAndView filter(@RequestParam Map<String,String> reqPar,HttpServletRequest request, HttpServletResponse response)throws Exception
	{
		HttpSession session=request.getSession(false); 
		ArrayList<String> key = new ArrayList<String>();
		String line = reqPar.get("line");
		System.out.println(line);

		if(line!=null)
		{
			key.add(line);
		}
		String category = reqPar.get("category");
		System.out.println(category);
		if(category!=null)
		{
			key.add(category);
		}
		String pattern = reqPar.get("pattern");
		System.out.println(pattern);
		if(pattern!=null)
		{
			key.add(pattern);
		}
		String weavetype = reqPar.get("weavetype");
		System.out.println(weavetype);
		if(weavetype!=null)
		{
			key.add(weavetype);
		}
		
		
		fabric=Fabric.AddFabric();
		
		//System.out.println("size"+searchListLength);
		for(int k=0;k<key.size();k++)
		{
		ArrayList<Fabric> fab = new ArrayList<Fabric>();
		int searchListLength = fabric.size();
		System.out.println("size"+searchListLength);
		for (int i = 0; i < searchListLength; i++)
		{
			if (fabric.get(i).getLine().contains(key.get(k))||fabric.get(i).getCategory().contains(key.get(k))||fabric.get(i).getPattern().contains(key.get(k))||fabric.get(i).getWeave().contains(key.get(k))) {
				fab.add(fabric.get(i));
			}
		}
			fabric=fab;
			
			}
		
		for(int j=0;j<fabric.size();j++)
		{
			System.out.println("hi");
			System.out.println(fabric.get(j).name);
		}
		ModelAndView model= new ModelAndView("browse");
		model.addObject("fab",fabric);
		log.info("Browse will be resolved");
		if(session.getAttribute("email")==null){
			int j = 0;
			int cart = 0;
			while (j < sht.size()) {
				cart = cart + sht.get(j).getQty();
				j++;
			}
			log.info("Cart will be incremented");
			model.addObject("cart", cart);
			
		}
		else{
			Main crt= new Main();
			ArrayList<Shirt> sht1 = new ArrayList<Shirt>();
			try {
				sht1=crt.ShowCart(request);
			} catch (Exception e) {
				e.printStackTrace();
			}
			System.out.println("sht1 ka size" + sht1.size());
			int j=0;
			int cart =0;
			while(j<sht1.size())
			{
				cart=cart+ sht1.get(j).getQty();
				j++;
			}
			model.addObject("cart", cart);
			model.addObject("cart", cart);
			model.addObject("fabric",fabric);
		}
		
		
		return model;
	}


}

