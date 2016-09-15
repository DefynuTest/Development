/*package com.defynu.Controller;

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
import org.springframework.web.servlet.ModelAndView;

import com.defynu.Dao.MeasurementDao;
import com.defynu.Model.Fabric;
import com.defynu.Model.Shirt;
import com.defynu.Model.ShirtDetails;
import com.defynu.Services.Main;


@Controller
@Scope("session")
public class ConfrimOrder {
	@RequestMapping(value = "/confrim", method = RequestMethod.GET)
ModelAndView addobject(){

		ModelAndView model=new ModelAndView("report1");
	 return model;
	 }

	
@RequestMapping(value = "/confrim", method = RequestMethod.POST)
ModelAndView addobject1(){

		ModelAndView model=new ModelAndView("report");
	 return model;
	 }

	}


*/