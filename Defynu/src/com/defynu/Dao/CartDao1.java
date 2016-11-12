package com.defynu.Dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.test.context.jdbc.Sql;

import com.defynu.Model.DatabaseUtilProperties;

public class CartDao1 {

	public String shoppinglist(HttpServletRequest request, int k) {
		
		String result="default";
		try{
			DatabaseUtilProperties dataSource=new DatabaseUtilProperties();
			Connection con=dataSource.getDBConfig();
			con.setAutoCommit(false);
			String query = "UPDATE TRACKLIST SET STATUS = 'R' WHERE username = ? AND PRODUCTID=? ";
			HttpSession session=request.getSession(true);
		    System.out.println("session"+ session.getAttribute("email"));
			String id = (String) session.getAttribute("email");
			int num= k;

			PreparedStatement pstmt = con.prepareStatement(query);
			pstmt.setString(1, id);
			pstmt.setInt(2, num);
			ResultSet rs = pstmt.executeQuery();
			con.close();
			result= "R"; 	
		}
		catch (Exception e) {
			e.printStackTrace();
		}
		return result;

	}

	public String shoppinglist1(HttpServletRequest request, int orderid) {
		String result="default";
		try{
			DatabaseUtilProperties dataSource=new DatabaseUtilProperties();
			Connection con=dataSource.getDBConfig();
			con.setAutoCommit(false);
			String query = "UPDATE TRACKLIST SET STATUS = 'C' WHERE username = ? AND order_id=?";

			HttpSession session=request.getSession(true);
		    System.out.println("session"+ session.getAttribute("email"));
			String id = (String) session.getAttribute("email");
			int num= orderid;

			PreparedStatement pstmt = con.prepareStatement(query);
			pstmt.setString(1, id);
			
			pstmt.setInt(2, orderid);
			ResultSet rs = pstmt.executeQuery();
			con.close();
			result= "C"; 	
		}
		catch (Exception e) {
			e.printStackTrace();
		}
		return result;
	}

}
