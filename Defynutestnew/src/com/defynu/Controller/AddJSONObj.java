package com.defynu.Controller;
import java.util.ArrayList;  
import java.util.List;  
import java.util.Map;

import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.json.simple.JSONObject;
import org.json.simple.JSONValue;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.portlet.ModelAndView;
@Controller
@Scope("session")
public class AddJSONObj extends HttpServlet {
	@RequestMapping(value = "/report1", method = RequestMethod.GET)
	ModelAndView load()
	{
		ModelAndView model= new ModelAndView("report1");
		
		return model;
	}
	@RequestMapping(value = "/confrim", method = RequestMethod.POST)
ModelAndView addobject(@RequestParam Map<String,String> reqPar, HttpServletRequest request, HttpServletResponse response){
		HttpSession session=request.getSession();
		System.out.println(session);
		String email = reqPar.get("email");
		String password= reqPar.get("password");
		String name = reqPar.get("name");
		String address = reqPar.get("address");
		String pincode = reqPar.get("pincode");
		String landmark = reqPar.get("landmark");
		
		
		System.out.println(email);
		System.out.println(password);
		JSONObject obj=new JSONObject();
		obj.put("email", email);
		obj.put("password",password);
		obj.put("name",name);
		obj.put("address",address);
		obj.put("pincode",pincode);
		
		System.out.println(obj);
	
		
		
		

ModelAndView model=new ModelAndView("report1");
	 return model;
	 }

	@RequestMapping(value = "/report", method = RequestMethod.GET)
	ModelAndView addobject1(){
		JSONObject obj=new JSONObject();
		obj.put("Import_Order_Id","1000011461");
		obj.put("Firstname","Ananda");
		obj.put("Lastname","Chakroborty");
		obj.put("Email","achakroborty@rocketmail.com");
		obj.put("Address","30 1");
		obj.put("Payment_method","CashOnDelivery");
		obj.put("Payment_code","COD");
		obj.put("Shipping_method","Free");
		obj.put("Product","Business Classic");
		obj.put("Product model","vye6uz");
		obj.put("Total","2000");
		obj.put("Quantity","1");
		System.out.println(obj);
	
		ModelAndView model= new ModelAndView("report1");
		model.addAllObjects(obj);
		return model;
	}
}

