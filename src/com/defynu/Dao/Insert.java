package com.defynu.Dao;

import java.io.InputStream;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.io.OutputStream;
import java.sql.Blob;
import java.sql.CallableStatement;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Collection;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import oracle.sql.BLOB;

import com.defynu.Model.DatabaseUtilProperties;
import com.defynu.Model.Shirt;

public class Insert {
	public void CheckOut(HttpServletRequest request,Shirt shirt,String status,int pid,int order_id) throws Exception {

		String WRITE_OBJECT_SQL = "BEGIN "
				+ "  INSERT INTO TRACKLIST(USERNAME,PRODUCT,STATUS,PRODUCTID,OBJ_DATE,ORDER_ID) "
				+ "  VALUES (?, empty_blob(),'ND',?,?,?) " + "  RETURN PRODUCT INTO ?; " + "END;";
		
		DatabaseUtilProperties dataSource=new DatabaseUtilProperties();
		Connection con=dataSource.getDBConfig();
		con.setAutoCommit(false);
		List<Shirt> list = new ArrayList<Shirt>();
		list.add(shirt);
		
		Calendar calendar = Calendar.getInstance();
		java.sql.Timestamp TS = new java.sql.Timestamp(calendar.getTime().getTime());

		 HttpSession session=request.getSession(true);
		    System.out.println("session"+ session.getAttribute("email"));
		    
		    // write object to Oracle
		    String id = (String) session.getAttribute("email");
		CallableStatement cstmt = con.prepareCall(WRITE_OBJECT_SQL);

		cstmt.setString(1,id);
		

		cstmt.registerOutParameter(5, java.sql.Types.BLOB);
		cstmt.setInt(2,pid );
		cstmt.setTimestamp(3, TS);
		cstmt.setInt(4, order_id);
		cstmt.registerOutParameter(5, java.sql.Types.BLOB);
		
		cstmt.executeUpdate();
		BLOB blob = (BLOB) cstmt.getBlob(5);
		OutputStream os = blob.getBinaryOutputStream();
		ObjectOutputStream oop = new ObjectOutputStream(os);
		oop.writeObject(list);
		oop.flush();
		oop.close();
		os.close();
		con.commit();
		con.close();
	}
}
		
	



