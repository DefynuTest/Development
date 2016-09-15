package com.defynu.Controller;

import java.util.ArrayList;
import java.util.Map;

import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.jboss.logging.Logger;
import org.springframework.context.annotation.Scope;
import org.springframework.http.HttpRequest;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.portlet.ModelAndView;

import com.defynu.Dao.CartDao;
import com.defynu.Dao.CartDao1;
import com.defynu.Dao.TrackingDao;
import com.defynu.Model.Shirt;
import com.defynu.Model.User;
import com.defynu.Services.Main;
@Controller
@Scope("session")
public class Return extends HttpServlet {
	
	Logger log= Logger.getLogger(LoginController.class.getName());

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



	@RequestMapping(value="/cancel", method = RequestMethod.GET)


	public ModelAndView changeapparel(@RequestParam Map<String,String> reqPar,HttpServletRequest request, HttpServletResponse response) throws Exception {

		int k1;
		ModelAndView model=new ModelAndView("shoppinglist");
		TrackingDao main=new TrackingDao();
		ArrayList<Shirt> sht1 = new ArrayList<Shirt>();
		sht1=main.ShowCart(request);

		String f = reqPar.get("Prod_ID");
		int j = Integer.parseInt(f);

		for (int i=0; i<sht1.size();i++){
			k1 =sht1.get(i).getNo();
			if(k1==j){
				CartDao1 cart= new CartDao1();
				String result;
				result=cart.shoppinglist1(request,k1);
				if(result=="C")
				{
					model.addObject("status","Cancel");
				}
			}
		}
		return model;
	}
}





