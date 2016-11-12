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
import com.defynu.Dao.CartDao1;
import com.defynu.Dao.Insert;
import com.defynu.Dao.OrderDao;
import com.defynu.Dao.Remove;
import com.defynu.Dao.TrackingDao;
//import com.defynu.Model.SessionVariable;
import com.defynu.Model.Shirt;
import com.defynu.Services.Main;
import com.sun.istack.internal.logging.Logger;
import com.defynu.Dao.TrackingDao;
@Controller
@Scope("session")
public class Return extends HttpServlet {
	
	

	@RequestMapping(value="/return{someID}", method = RequestMethod.GET)


	public ModelAndView returnapparel(@RequestParam Map<String,String> reqPar,HttpServletRequest request, HttpServletResponse response) throws Exception {
		HttpSession session=request.getSession(true);
	    System.out.println("session"+ session.getAttribute("email"));
		int k1;
		ModelAndView model=new ModelAndView("shoppinglist");
		TrackingDao main=new TrackingDao();
		ArrayList<Shirt> sht1 = new ArrayList<Shirt>();
		sht1=main.ShowCart(request);
		String prodid = reqPar.get("Prod_ID");
		System.out.println("prodid"+prodid);
		int j = Integer.parseInt(prodid);
		for (int i=0; i<sht1.size();i++){
			k1 =sht1.get(i).getNo();
			if(k1==j){
				CartDao1 cart= new CartDao1();
				String result;
				result=cart.shoppinglist(request,k1);
				if(result=="R")
				{
					model.addObject("status","Return");
				}
			}
		}
		return model;
	}



	@RequestMapping(value="/cancel", method = RequestMethod.POST)


	public ModelAndView changeapparel(@RequestParam Map<String,String> reqPar,HttpServletRequest request, HttpServletResponse response) throws Exception {

		int k1;
		ModelAndView model=new ModelAndView("track");
		TrackingDao main=new TrackingDao();
		ArrayList<Shirt> sht1 = new ArrayList<Shirt>();
		sht1=main.ShowCart(request);

		
		String orderid = reqPar.get("orderid");
		Integer order_id=Integer.parseInt(orderid);


		
				CartDao1 cart= new CartDao1();
				String result;
				result=cart.shoppinglist1(request,order_id);
				if(result=="C")
				{
					model.addObject("status","Cancel");
				}
			
		
		return new ModelAndView("redirect:track");
	}
}





