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
@Controller
@Scope("session")
public class MeasurementController {

	ArrayList<Shirt> sht = new ArrayList<Shirt>();
	Shirt shirt = new Shirt();
@RequestMapping(value = "/measurement{someID}", method = RequestMethod.POST)
public ModelAndView measurement(@RequestParam Map<String, String> reqPar,
		HttpServletRequest request, HttpServletResponse response) {
	
	HttpSession session = request.getSession();
	shirt=  (Shirt) session.getAttribute("shirt");
	sht.add(shirt);
	System.out.println(session);
	String object = reqPar.get("object");
	System.out.println(object);
	//int no = Integer.parseInt(object);
	String nck = reqPar.get("neck");
	System.out.println(nck);
	int neck = Integer.parseInt(nck);
	shirt.setNeck(neck);
	System.out.println(shirt.getNeck());
	String chst = reqPar.get("chest");
	int chest = Integer.parseInt(chst);
	shirt.setChest(chest);
	System.out.println(shirt.getChest());
	String hp = reqPar.get("hip");
	int hip = Integer.parseInt(hp);
	shirt.setHip(hip);
	System.out.println(shirt.getHip());
	String wast = reqPar.get("waist");
	int waist = Integer.parseInt(wast);
	shirt.setWaist(waist);
	System.out.println(shirt.getWaist());
	String sat = reqPar.get("seat");
	int seat = Integer.parseInt(sat);
	shirt.setSeat(seat);
	System.out.println(shirt.getSeat());
	String lnth = reqPar.get("length");
	int length = Integer.parseInt(lnth);
	shirt.setLength(length);
	System.out.println(shirt.getLength());
	String soulder = reqPar.get("shoulder");
	int shoulder = Integer.parseInt(soulder);
	shirt.setShoulder(shoulder);
	System.out.println(shirt.getShoulder());
	String am = reqPar.get("arm");
	int arm = Integer.parseInt(am);
	shirt.setArm(arm);
	System.out.println(shirt.getArm());
	String wrst = reqPar.get("wrist");
	int wrist = Integer.parseInt(wrst);
	shirt.setWrist(wrist);
	System.out.println(shirt.getWrist());
	String profile = reqPar.get("profile");
	shirt.setProfile(profile);
	System.out.println(shirt.getProfile());

	ModelAndView model = null;
	model = new ModelAndView("customize");
	model.addObject("profile", profile);
	model.setViewName("customize");
	model.addObject("list", sht);
	model.addObject("shirt", shirt.getBody());
	model.addObject("OuterCollar", shirt.getOutercollar());
	model.addObject("InnerCollar", shirt.getInnercollar());
	model.addObject("OuterCuff", shirt.getOutercuff());
	model.addObject("InnerCuff", shirt.getInnercuff());
	model.addObject("Button", shirt.getButton());
	model.addObject("ButtonPlacket", shirt.getButtonplacket());
	model.addObject("OutsideFastening", shirt.getOutsidefastening());
	model.addObject("Pocket", shirt.getPocket());
	model.addObject("Price", shirt.getPrice());
	int j = 0;
	int cart = 0;
	int amount = 0;
	int price = 0;
	while (j < sht.size()) {
		cart = cart + sht.get(j).getQty();
		amount = amount + (sht.get(j).getQty() * sht.get(j).getPrice());
		j++;
	}
	model.addObject("amount", amount);
	model.addObject("cart", cart);
	return model;
}

@RequestMapping(value = "/measurement{someID}", method = RequestMethod.GET)
public ModelAndView measurementPost(
		@RequestParam Map<String, String> reqPar,
		HttpServletRequest request, HttpServletResponse response) {
	HttpSession session = request.getSession();
	System.out.println(session);
	String object = reqPar.get("object");
	System.out.println(object);
	//int no = Integer.parseInt(object);
	ModelAndView model = null;
	model = new ModelAndView("measurement");
	//model.addObject("no", no);
	model.setViewName("measurement");
	return model;
}

@RequestMapping(value = "/defaultmeasurement{someID}", method = RequestMethod.GET)
public ModelAndView defaultmeasurement(
		@RequestParam Map<String, String> reqPar,
		HttpServletRequest request, HttpServletResponse response) {
	HttpSession session = request.getSession();
	System.out.println(session);
	//String object = reqPar.get("object");
	//System.out.println(object);
	//int no = Integer.parseInt(object);
	shirt=  (Shirt) session.getAttribute("shirt");
	String nck = reqPar.get("neck");
	System.out.println(nck);
	int neck = Integer.parseInt(nck);
	shirt.setNeck(neck);
	System.out.println(shirt.getNeck());
	String chst = reqPar.get("chest");
	int chest = Integer.parseInt(chst);
	shirt.setChest(chest);
	System.out.println(shirt.getChest());
	String hp = reqPar.get("hip");
	int hip = Integer.parseInt(hp);
	shirt.setHip(hip);
	System.out.println(shirt.getHip());
	String wast = reqPar.get("waist");
	int waist = Integer.parseInt(wast);
	shirt.setWaist(waist);
	System.out.println(shirt.getWaist());
	String sat = reqPar.get("seat");
	int seat = Integer.parseInt(sat);
	shirt.setSeat(seat);
	System.out.println(shirt.getSeat());
	String lnth = reqPar.get("length");
	int length = Integer.parseInt(lnth);
	shirt.setLength(length);
	System.out.println(shirt.getLength());
	String soulder = reqPar.get("shoulder");
	int shoulder = Integer.parseInt(soulder);
	shirt.setShoulder(shoulder);
	System.out.println(shirt.getShoulder());
	String am = reqPar.get("arm");
	int arm = Integer.parseInt(am);
	shirt.setArm(arm);
	System.out.println(shirt.getArm());
	String wrst = reqPar.get("wrist");
	int wrist = Integer.parseInt(wrst);
	shirt.setWrist(wrist);
	System.out.println(shirt.getWrist());
	String profile = reqPar.get("profile");
	shirt.setProfile(profile);
	System.out.println(shirt.getProfile());

	String type = reqPar.get("type");
	shirt.setType(type);
	System.out.println(shirt.getType());

	ModelAndView model = null;
	model = new ModelAndView("customize");
	model.addObject("profile", profile);
	model.setViewName("customize");
	model.addObject("list", sht);
	model.addObject("shirt", shirt.getBody());
	model.addObject("OuterCollar", shirt.getOutercollar());
	model.addObject("InnerCollar", shirt.getInnercollar());
	model.addObject("OuterCuff", shirt.getOutercuff());
	model.addObject("InnerCuff", shirt.getInnercuff());
	model.addObject("Button", shirt.getButton());
	model.addObject("ButtonPlacket", shirt.getButtonplacket());
	model.addObject("OutsideFastening", shirt.getOutsidefastening());
	model.addObject("Pocket", shirt.getPocket());
	model.addObject("Price", shirt.getPrice());
	model.addObject("list", sht);
	int j = 0;
	int cart = 0;
	int amount = 0;
	int price = 0;
	while (j < sht.size()) {
		cart = cart + sht.get(j).getQty();
		amount = amount + (sht.get(j).getQty() * sht.get(j).getPrice());
		j++;
	}
	model.addObject("amount", amount);
	model.addObject("cart", cart);
	return model;
}
}
