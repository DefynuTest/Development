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
import com.defynu.Dao.Insert;
import com.defynu.Dao.OrderDao;
import com.defynu.Dao.Remove;
import com.defynu.Dao.TrackingDao;
//import com.defynu.Model.SessionVariable;
import com.defynu.Model.Shirt;
import com.defynu.Services.Main;
import com.sun.istack.internal.logging.Logger;

@Controller
@Scope("session") 
public class BuyController extends HttpServlet {
	//SessionVariable username = new SessionVariable() ;
	//Logger log= Logger.getLogger(LoginController.class.getName());
	@RequestMapping(value="/buy", method = RequestMethod.POST)
	public ModelAndView trackorder(@RequestParam Map<String,String> reqPar ,HttpServletRequest request,HttpServletResponse response)throws Exception{
		ModelAndView model=null;
		HttpSession session=request.getSession(false); 
		model = new ModelAndView("track");
		String fname=reqPar.get("fname");
		String lname=reqPar.get("lname");
		String phone=reqPar.get("number");
		System.out.println("fname"+fname);
		String address=reqPar.get("address");
		String pin=reqPar.get("pin");
		String pay=reqPar.get("pay");
		String payment=session.getAttribute("Payment").toString();
		int payable_amount=Integer.parseInt(payment);
		System.out.println("phone"+phone);
		System.out.println("lname"+lname);
		System.out.println("address"+address);
		System.out.println("pin"+pin);
		System.out.println("pay"+pay);
		
		int orderid=(int) session.getAttribute("orderid");
		
		OrderDao order=new OrderDao(); 
		order.Shipping(request, fname, lname, address, phone, pin, pay, orderid,payable_amount);
		ArrayList<Shirt> sht2 = new ArrayList<Shirt>();
		ArrayList<Shirt> list = new ArrayList<Shirt>();
		Main main=new Main();
		sht2=main.ShowCart(request);
		Insert in= new Insert();
		System.out.println("size of cart"+ sht2.size());
		for(int k=0;k<sht2.size();k++){
			System.out.println("checkkkk"+ sht2.get(k).getNo());
			in.CheckOut(request,sht2.get(k),"ND",sht2.get(k).getNo(),orderid);
		}
		
		
			
			Remove rem= new Remove();
			rem.Delete(request);
			//model.addObject("cart", 0);
		
			return new ModelAndView("redirect:track");
		
		
		
	}
	
	@RequestMapping(value="/confrimorder", method = RequestMethod.POST)
	public ModelAndView confrinOrder(@RequestParam Map<String,String> reqPar,HttpServletRequest request,HttpServletResponse response)throws Exception{
		ModelAndView model=null;
		HttpSession session=request.getSession(false);
		String amount = reqPar.get("total");
		int total=Integer.parseInt(amount);
		System.out.println("amount to PAY"+total);
		session.setAttribute("Payment", total);
		session.setAttribute("email", "mithileshcrj@gmail.com");
		
		if(session.getAttribute("email")==null)
		{
		System.out.println("test");
		model = new ModelAndView("confrimorder");
		model.setViewName("confrimorder");
		}
		else
		{	
			System.out.println("test1");
			model = new ModelAndView("test");
			model.setViewName("test");
		}
		return model;
	}
}
