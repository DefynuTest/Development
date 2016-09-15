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
			String query = "insert into MEASUREMENT VALUES(?,?,?,?,?,?,?,?,?,?,?,?)";

			HttpSession session=request.getSession(true);
		    System.out.println("session"+ session.getAttribute("email"));
			String id = (String) session.getAttribute("email");
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
			ResultSet rs = pstmt.executeQuery();
			con.close();	
		}
		catch (Exception e) {
			e.printStackTrace();
		}
		return result;
	}
}

