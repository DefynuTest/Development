package com.defynu.Dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import com.defynu.Model.DatabaseUtilProperties;

public class Remove {

	public void Delete(HttpServletRequest request) {
		
try{
		DatabaseUtilProperties dataSource=new DatabaseUtilProperties();
		Connection con=dataSource.getDBConfig();
		con.setAutoCommit(false);
		String query= "DELETE FROM JAVA_OBJECTS WHERE OBJECT_ID=?";

		HttpSession session=request.getSession(true);
	    System.out.println("session"+ session.getAttribute("email"));
	    
	    // write object to Oracle
	    String id = (String) session.getAttribute("email");

		PreparedStatement pstmt = con.prepareStatement(query);
		pstmt.setString(1, id);
		
		ResultSet rs = pstmt.executeQuery();
		con.close();
			
	}
	catch (Exception e) {
		e.printStackTrace();
	}
		
		
	}



}
