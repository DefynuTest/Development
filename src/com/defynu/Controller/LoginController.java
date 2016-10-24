package com.defynu.Controller;


import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.net.HttpURLConnection;
import java.net.MalformedURLException;
import java.net.URL;
import java.util.ArrayList;
import java.util.Map;
import java.util.Random;

import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.jboss.logging.Logger;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;





import com.defynu.Services.Main;
import com.defynu.Services.SendEmail;
import com.defynu.Dao.LoginDao;
import com.defynu.Dao.RegisterDao;
//import com.defynu.Dao.ValidUser;
//import com.defynu.Model.SessionVariable;
import com.defynu.Model.User;
import com.defynu.Model.Shirt;


@Controller
@Scope("session") 
public class LoginController extends HttpServlet{

	ArrayList<Shirt> sht = new ArrayList<Shirt>();
	
	String uname;
	
	Logger log= Logger.getLogger(LoginController.class.getName()); 

	@RequestMapping(value = "/index", method = RequestMethod.GET) 

	public ModelAndView homepage(@RequestParam Map<String,String> reqPar,HttpServletRequest request, HttpServletResponse response) throws Exception {

		ModelAndView model= null;

		model = new ModelAndView("index");
		log.info("View object Returned");	
		return new ModelAndView("redirect:hello");
	}

	@RequestMapping(value = "/hello", method = RequestMethod.POST)
	public ModelAndView loginsucess(@RequestParam Map<String,String> reqPar,HttpServletRequest request, HttpServletResponse response) throws Exception {
		HttpSession session=request.getSession();

		//System.out.println(session);
		String email = reqPar.get("email");
		String password = reqPar.get("password");
		log.info("Session is:"+session);
		log.info("Email is:"+email);
		log.info("Password is:"+password);
		boolean result=false;
		uname=email;
		//session.setAttribute(email, username);
		
		System.out.println("hhhhhhhh"+uname);
		session.setAttribute("email", email);

		log.info(email+password);

		User user= new User(email,password,null);

		LoginDao login = new LoginDao();
		log.info("Database Called");    
		try{
		result=login.isValidUser(user);
		}catch(Exception e){
			result = false;
		}
		log.info("Valid User"); 

		log.info(result);

		ModelAndView model= null;

		if(result)
		{		 model = new ModelAndView("hello");
		log.info("User Login Successful");
		model.addObject("loggedInUser", email);
		model.addObject("uname",session.getAttribute("email"));

		Main crt= new Main();
		ArrayList<Shirt> sht1 = new ArrayList<Shirt>();
		sht1=crt.ShowCart(request);
		System.out.println("sht1 ka size" + sht1.size());
		int j=0;
		int cart =0;
		while(j<sht1.size())
		{
			cart=cart+ sht1.get(j).getQty();
			j++;
		}
		log.info("Added into cart");
		model.addObject("cart", cart);
		model.addObject("cart", cart);
		}

		else
		{
			model = new ModelAndView("hello");
			model.addObject("message", "Invalid credentials!!");

		}

		return model; 

	}

	@RequestMapping(value = "/hello" , method = RequestMethod.GET)
	public ModelAndView  printHello(@RequestParam Map<String,String> reqPar,HttpServletRequest request, HttpServletResponse response) throws Exception {

		HttpSession session=request.getSession(false); 
		ModelAndView model= null;
		if (session == null) {
			session = request.getSession();

			model = new ModelAndView("hello");

			Main crt= new Main();
			String y;
			ArrayList<Shirt> sht1 = new ArrayList<Shirt>();

			//sht1=crt.ShowCart(username.getUname());
			System.out.println("sht1 ka size" + sht1.size());
			int j=0;
			int cart =0;
			while(j<sht1.size())
			{
				cart=cart+ sht1.get(j).getQty();
				j++;
			}
			cart=sht.size();
			System.out.println("hhhhhh"+ sht.size());
			model.addObject("cart", cart);

		




		}

		else
		{		
			HttpSession session1=request.getSession(); 
			System.out.println(session1); 
			model = new ModelAndView("hello");
			System.out.println("User Login Successful");
			model.addObject("loggedInUser",session.getAttribute("email") );

			Main crt= new Main();
			String y;
			ArrayList<Shirt> sht1 = new ArrayList<Shirt>();
			//	y=crt.AddtoCart(shirt,uname);
			//sht1=crt.ShowCart(eid.get());
			System.out.println("sht1 ka size" + sht1.size());
			int j=0;
			int cart =0;
			while(j<sht1.size())
			{
				cart=cart+ sht1.get(j).getQty();
				j++;
			}
			cart=cart+sht.size();
			System.out.println("hhhhhh"+ sht.size());
			model.addObject("cart", cart);
			/*for (int i = 0; i < sht.size(); i++) {
							System.out.println(sht.get(i).body + sht.get(i).outercollar);
						}
			 */
			model.addObject("cart", cart);

		} 

		return model; 

	}



	/* ****************************** SignOut ********************** */

	@RequestMapping(value = "/signout" , method = RequestMethod.GET)
	public ModelAndView  logout(@RequestParam Map<String,String> reqPar,HttpServletRequest request, HttpServletResponse response) {
		HttpSession session=request.getSession();
		session.invalidate();
		ModelAndView model= null;

		model = new ModelAndView("index");
		return model; 
	}

	/* ****************************** Register ********************** */


	@RequestMapping(value = "/register", method = RequestMethod.POST)
	public ModelAndView register(@RequestParam Map<String,String> reqPar,HttpServletRequest request, HttpServletResponse response ) throws IOException {
		
		String email = reqPar.get("email");
		String password = reqPar.get("password");  
		String number = reqPar.get("number");
		
		boolean result = true;
		
		log.info("Password is:"+password);
		log.info("Email is:"+email);
		
		HttpSession session=request.getSession(); 
		User user= new User(email,password,null);
		
		session.setAttribute("email",email);
		session.setAttribute("password", password);
		session.setAttribute("phoneNumber",number);
		
		log.info("Data is set");
		
		RegisterDao register = new RegisterDao();
		
		log.info("Database Called"); 
		try{
		result=register.isRegister(user);
		}catch(Exception e){
			e.printStackTrace();
		}
		log.info("Result Returned");

	//	System.out.println(result);

		ModelAndView model= null;

		if(!result){
			//SendEmail	mail= new SendEmail();
			//mail.mail(email);
		Random rand = new Random();

		int randomNum = rand.nextInt((9999 - 1000) + 1) + 1000;
		String OTP=Integer.toString(randomNum);
		System.out.println(OTP);
		session.setAttribute("newRegisterOTP",OTP);
		System.out.println("OTP"+session.getAttribute("OTP"));
	
		model = new ModelAndView("index");
		log.info("User Registered Successful");
		model.addObject("otp", randomNum);
		model.addObject("number", number);
			
			if(null != number && 10 == number.length()){
				
			String url = "http://2factor.in/API/V1/88c84d17-9616-11e6-96db-00163ef91450/SMS/"+number+"/"+randomNum+"/ABCD";
			 //final String USER_AGENT = "Mozilla/5.0";
			URL obj = null;
			try {
				obj = new URL(url);
			} catch (MalformedURLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			HttpURLConnection con = null;
			try {
				con = (HttpURLConnection) obj.openConnection();
			} catch (IOException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}

			// optional default is GET
			con.setRequestMethod("GET");

			//add request header
			//con.setRequestProperty("User-Agent", USER_AGENT);

			int responseCode = con.getResponseCode();
			System.out.println("\nSending 'GET' request to URL : " + url);
			System.out.println("Response Code : " + responseCode);

			BufferedReader in = new BufferedReader(
			        new InputStreamReader(con.getInputStream()));
			String inputLine;
			StringBuffer response1 = new StringBuffer();

			while ((inputLine = in.readLine()) != null) {
				response1.append(inputLine);
			}
			in.close();
				//print result
			}
		}else{
			response.setStatus(HttpServletResponse.SC_FORBIDDEN);
		}
		return model; 

	}
	
	@RequestMapping(value = "/verifyOTP{someID}", method = RequestMethod.POST)
	public ModelAndView verifyOTP(@RequestParam Map<String,String> reqPar,HttpServletRequest request, HttpServletResponse response) throws Exception{
		
		String inputOTP=reqPar.get("verifyOTP");
		HttpSession session=request.getSession();
		System.out.println("otp1"+inputOTP);
		System.out.println("otp"+ session.getAttribute("OTP"));
		String otp = null;
		if(null != session.getAttribute("validateEmail")){
			otp = session.getAttribute("validateEmail").toString();
		}
		boolean result = false;
		
		ModelAndView model = null;
		
		if(null != otp && null != inputOTP && inputOTP.equals(otp)){
			
		// 	SendEmail	mail= new SendEmail();
			//mail.mail(session.getAttribute("email"));
			result=true;
			
		}
		if(result){
		 model = new ModelAndView("hello");
		}else{
			response.setStatus(HttpServletResponse.SC_FORBIDDEN);
		}
		log.info("View Object Returned");
		return model;
	}
		@RequestMapping(value = "/register", method = RequestMethod.GET)
	public ModelAndView registerForm(){

		ModelAndView model = new ModelAndView("hello");
		log.info("View Object Returned");
		return model;
	}
		
		
		@RequestMapping(value = "/forgotPassword", method = RequestMethod.POST)
		public ModelAndView forgotPassword(@RequestParam Map<String,String> reqPar,HttpServletRequest request, HttpServletResponse response ) throws IOException {
			
			String email = reqPar.get("email");
			
			HttpSession session=request.getSession(); 
			
			
			boolean result = true;
			
			RegisterDao register = new RegisterDao();
			
			if(null !=  email && !"".equals(email)){
				User user= new User(email,"", null);
			
			log.info("Database Called");    
			try{
			result=register.isRegister(user);
			}catch(Exception e){
				e.printStackTrace();
				result = false;
			}
			}
			
			String number = "";
			//mobile number from db
			if(result){
			 number = register.retrieveNumber(email);
			}
			//User user= new User(email,password);
			
			session.setAttribute("email",email);

			log.info("Data is set");
		//	ValidUser register = new ValidUser();
			log.info("Database Called");  
		//	result=register.isValid(user);
			log.info("Result Returned");

		//	System.out.println(result);

			ModelAndView model= null;

				//SendEmail	mail= new SendEmail();
				//mail.mail(email);
			Random rand = new Random();

			model = new ModelAndView("hello");
				
				if(result && null != number && !"".equals(number)){
					int randomNum = rand.nextInt((9999 - 1000) + 1) + 1000;
					String OTP=Integer.toString(randomNum);
					session.setAttribute("validateEmail",randomNum);
					System.out.println(OTP);
					session.setAttribute("OTP",OTP);
					System.out.println("OTP"+session.getAttribute("OTP"));
					model.addObject("otp", randomNum);
					
				String url = "http://2factor.in/API/V1/1937aa5e-83d8-11e6-a584-00163ef91450/SMS/"+number+"/"+randomNum+"/ABCD";
				 //final String USER_AGENT = "Mozilla/5.0";
				URL obj = null;
				try {
					obj = new URL(url);
				} catch (MalformedURLException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
				HttpURLConnection con = null;
				try {
					con = (HttpURLConnection) obj.openConnection();
				} catch (IOException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}

				// optional default is GET
				con.setRequestMethod("GET");

				//add request header
				//con.setRequestProperty("User-Agent", USER_AGENT);

				int responseCode = con.getResponseCode();
				System.out.println("\nSending 'GET' request to URL : " + url);
				System.out.println("Response Code : " + responseCode);

				BufferedReader in = new BufferedReader(
				        new InputStreamReader(con.getInputStream()));
				String inputLine;
				StringBuffer response1 = new StringBuffer();

				while ((inputLine = in.readLine()) != null) {
					response1.append(inputLine);
				}
				in.close();
					//print result
				}
			return model; 

		}
		
		
		@RequestMapping(value = "/resetPwd", method = RequestMethod.POST)
		public ModelAndView resetPassword(@RequestParam Map<String,String> reqPar, HttpServletRequest request, HttpServletResponse response) throws Exception{
			
			String newpassword=reqPar.get("newPassword");
			String confirmpassword=reqPar.get("confirmPassword");
			HttpSession session=request.getSession();
			String email = session.getAttribute("email").toString();
			boolean success = false;
			
			if(null != newpassword && null != confirmpassword && !"".equals(newpassword) && !"".equals(confirmpassword)){
				RegisterDao register = new RegisterDao();
				 success = register.resetPassword(newpassword, email);
			}
			if(success)
			return new ModelAndView("redirect: /Defynu/hello");
			else
				return new ModelAndView();
		}
		
		@RequestMapping(value = "/verifyNewUserOTP{someID}", method = RequestMethod.POST)
		public ModelAndView verifyNewUserOTP(@RequestParam Map<String,String> reqPar,HttpServletRequest request, HttpServletResponse response) throws Exception{
			
			String inputOTP=reqPar.get("newRegisterOTP");
			HttpSession session=request.getSession();
			
			System.out.println("otp1"+inputOTP);
			System.out.println("otp"+ session.getAttribute("OTP"));
			
			String otp = null;
			if(null != session.getAttribute("newRegisterOTP")){
				otp = session.getAttribute("newRegisterOTP").toString();
			}
			boolean result = false;
			
			ModelAndView model = null;
			
			if(null != otp && null != inputOTP && inputOTP.equals(otp)){
				
			// 	SendEmail	mail= new SendEmail();
				//mail.mail(session.getAttribute("email"));
				result=true;
				
			}
			
			if(result){
				String email = session.getAttribute("email").toString();
				String password = session.getAttribute("password").toString();
				Long phoneNumber = Long.valueOf(session.getAttribute("phoneNumber").toString());
				
				 User user = new User(email, password, phoneNumber);
				 
				 RegisterDao register = new RegisterDao();
					register.insertNewUser(user);
			session.setAttribute("email",email);
			
			}
			
			
			if(result){
			 model = new ModelAndView("hello");
			 
			}else{
				response.setStatus(HttpServletResponse.SC_FORBIDDEN);
			}
			log.info("View Object Returned");
			return model;
		}


}
