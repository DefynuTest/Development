package com.defynu.Dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import com.defynu.Model.DatabaseUtilProperties;
import com.defynu.Model.Shirt;

public class MeasurementDao {

public String Addmeasurenet(HttpServletRequest request,Shirt s) {
		String result="default";
		try{
			DatabaseUtilProperties dataSource=new DatabaseUtilProperties();
			Connection con=dataSource.getDBConfig();
			con.setAutoCommit(false);
			String query = "insert into MEASUREMENT VALUES(?,?,?,?,?,?,?,?,?,?,?,?,?)";

			HttpSession session=request.getSession(true);
		    System.out.println("session"+ session.getAttribute("email"));
			String id = (String) session.getAttribute("email");
			int orderid=(int) session.getAttribute("orderid");
			int prodid =s.getNo();
			int neck= s.getNeck();
			int chest = s.getChest();
			int waist =s.getWaist();
			int hip= s.getHip();
			int shirtlength=s.getLength();
			int shoulderwidth =s.getShoulder();
			int armlength =s.getArm();
			int wrist = s.getWrist();
			String profile=s.getProfile();
			String type = s.getType();

			PreparedStatement pstmt = con.prepareStatement(query);
			pstmt.setString(1, id);
			pstmt.setLong(2, prodid);		
			pstmt.setLong(3, neck);
			pstmt.setLong(4, chest);
			pstmt.setLong(5, waist);
			pstmt.setLong(6, hip);
			pstmt.setLong(7, shirtlength);
			pstmt.setLong(8, shoulderwidth);
			pstmt.setLong(9, armlength);
			pstmt.setLong(10, wrist);
			pstmt.setString(11, profile);
			pstmt.setString(12, type);
			pstmt.setLong(13, orderid);
			ResultSet rs = pstmt.executeQuery();
			con.close();	
		}
		catch (Exception e) {
			e.printStackTrace();
		}
		return result;
	}

public String AddShirtDetails(HttpServletRequest request,Shirt s) {
	String result="default";
	try{
		DatabaseUtilProperties dataSource=new DatabaseUtilProperties();
		Connection con=dataSource.getDBConfig();
		con.setAutoCommit(false);
		String query = "insert into SHIRTPARTS VALUES(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)";

		HttpSession session=request.getSession(true);
	    System.out.println("session"+ session.getAttribute("email"));
		String id = (String) session.getAttribute("email");
		int prodid =s.getNo();
		String body= s.getBody();
		String buttontype = s.getButton();
		String innercollar=s.getInnercollar();
		String outercollartype=s.getOutercollartype();
		String outercollar=s.getOutercollar();
		String innercuff=s.getInnercuff();
		String outercuff=s.getOutercuff();
		String outercufftype=s.getOutercufftype();
		String buttonplacket=s.getButtonplacket();
		String outsidefastening=s.getOutsidefastening();
		String pocket=s.getPocket();
		String pockettype=s.getPockettype();
		int orderid=(int) session.getAttribute("orderid");

		PreparedStatement pstmt = con.prepareStatement(query);
		pstmt.setString(1, id);
		pstmt.setString(2, body);
		pstmt.setString(3, buttontype);
		pstmt.setString(4, innercollar);
		pstmt.setString(5, outercollartype);
		pstmt.setString(6, innercuff);
		pstmt.setString(7, outercufftype);
		pstmt.setString(8, pockettype);
		pstmt.setString(9, outsidefastening);
		pstmt.setInt(10, prodid);
		pstmt.setString(11, outercuff);
		pstmt.setString(12, pocket);
		pstmt.setString(13, outercollar);
		pstmt.setString(14, buttonplacket);
		pstmt.setInt(15, orderid);
		
		
		
		ResultSet rs = pstmt.executeQuery();
		con.close();	
	}
	catch (Exception e) {
		e.printStackTrace();
	}
	return result;
}

}



