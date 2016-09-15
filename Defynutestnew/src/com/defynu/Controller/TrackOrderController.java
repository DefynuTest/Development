package com.defynu.Controller;

import java.util.ArrayList;

import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.jboss.logging.Logger;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.portlet.ModelAndView;

import com.defynu.Model.Shirt;
import com.defynu.Services.Main;
import com.defynu.Dao.Insert;
import com.defynu.Dao.TrackingDao;

@Controller
@Scope("session") 
public class TrackOrderController extends HttpServlet {

	Logger log= Logger.getLogger(LoginController.class.getName());
	@RequestMapping(value="/track", method = RequestMethod.GET)
	public ModelAndView trackorder(HttpServletRequest request,HttpServletResponse response)throws Exception{
		HttpSession session=request.getSession(true);
	    System.out.println("session"+ session.getAttribute("email"));
		ModelAndView model=null;
		model = new ModelAndView("track");
		ArrayList<Shirt> sht1 = new ArrayList<Shirt>();
		ArrayList<String> status= new ArrayList<String>();
		ArrayList<Shirt> sht2 = new ArrayList<Shirt>();
		
		TrackingDao trc= new TrackingDao(); 
		sht1=trc.ShowCart(request);//Retrieving shirt objects
		status=trc.ShowCart1(request);//Retrieving shirt status
		model.addObject("list",sht1);
		model.addObject("status",status);
		int length1= sht1.size();
		System.out.println("length1"+ length1);
		int length2= status.size();
		System.out.println("length2"+ length2);
		for(int i=0;i<length1;i++){
			System.out.println(sht1.get(i).body);
		}

		for(int j=0;j<length2;j++){
			System.out.println(status.get(j));
		}
		return model;

	}


}
