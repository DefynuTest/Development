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

import com.defynu.Dao.Insert;
import com.defynu.Dao.Remove;
import com.defynu.Dao.TrackingDao;
import com.defynu.Model.Shirt;
import com.defynu.Services.Main;

@Controller
@Scope("session") 
public class BuyController extends HttpServlet {
	
	Logger log= Logger.getLogger(LoginController.class.getName());
	@RequestMapping(value="/buy{someID}", method = RequestMethod.GET)
	public ModelAndView trackorder(HttpServletRequest request,HttpServletResponse response)throws Exception{
		ModelAndView model=null;
		HttpSession session=request.getSession(false); 
		model = new ModelAndView("track");
		ArrayList<Shirt> sht2 = new ArrayList<Shirt>();
		Main main=new Main();
		sht2=main.ShowCart(request);
		Insert in= new Insert();
		System.out.println("size of cart"+ sht2.size());
		for(int k=0;k<sht2.size();k++){
			System.out.println("checkkkk"+ sht2.get(k).getNo());
			in.CheckOut(request,sht2.get(k),"ND",sht2.get(k).getNo());
		}
		
		
			
			Remove rem= new Remove();
			rem.Delete(request);
			//model.addObject("cart", 0);
		
		
		return model;
	}
}
