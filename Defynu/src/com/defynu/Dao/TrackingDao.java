package com.defynu.Dao;

import java.io.InputStream;
import java.io.ObjectInputStream;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import com.defynu.Model.DatabaseUtilProperties;
import com.defynu.Model.Shirt;

public class TrackingDao {
	public ArrayList<Shirt> ShowCart(HttpServletRequest request) throws Exception {
	    HttpSession session=request.getSession(true);
	    System.out.println("session"+ session.getAttribute("email"));
		String READ_OBJECT_SQL = "SELECT PRODUCT FROM TRACKLIST WHERE Username=?";
		String id = (String) session.getAttribute("email");
		DatabaseUtilProperties dataSource=new DatabaseUtilProperties();
		Connection con=dataSource.getDBConfig();
		con.setAutoCommit(false);
		ArrayList<Shirt> list = new ArrayList<Shirt>();
		// Read object from oracle
		PreparedStatement pstmt = con.prepareStatement(READ_OBJECT_SQL);
		pstmt.setString(1, id);
		ResultSet rs = pstmt.executeQuery();
		ArrayList<Shirt> resultList = new ArrayList<Shirt>();
		while (rs.next()) {
			InputStream is = rs.getBlob(1).getBinaryStream();
			ObjectInputStream oip = new ObjectInputStream(is);
			Object object = oip.readObject();
			// object1=(Shirt) object;
			System.out.println(object);
			resultList.addAll((Collection<? extends Shirt>) object);

			oip.close();
			is.close();
		}
		rs.close();
		pstmt.close();
		con.commit();

		// de-serialize list a java object from a given objectID
		// List resultList = (List) object;
		System.out.println("[After De-Serialization] list=" + resultList);
		// System.out.println(list.get(0).getBody());
		con.close();
		System.out.println(resultList);
		return (ArrayList<Shirt>) resultList;

	}

	public ArrayList<String> ShowCart1(HttpServletRequest request) throws Exception {

		HttpSession session=request.getSession(true);
		String query = "select STATUS from TRACKLIST where Username=?";
		String id = (String) session.getAttribute("email");

		DatabaseUtilProperties dataSource=new DatabaseUtilProperties();
		Connection con=dataSource.getDBConfig();
		con.setAutoCommit(false);
		PreparedStatement pstmt = con.prepareStatement(query);
		pstmt.setString(1, id);
		ResultSet rs = pstmt.executeQuery();				

		ArrayList<String> statlist = new ArrayList<String>();
		while(rs.next())

		{	String status= rs.getString(1);
		statlist.add(status);
		}

		rs.close();
		con.close();
		for(int i=0;i<statlist.size();i++)
		{
			System.out.println("Status"+ statlist.get(i));
		}

		return  statlist;
	}
	public ArrayList<Integer> Order_Id(HttpServletRequest request) throws Exception {

		HttpSession session=request.getSession(true);
		String query = "select order_id from TRACKLIST where Username=?";
		String id = (String) session.getAttribute("email");

		DatabaseUtilProperties dataSource=new DatabaseUtilProperties();
		Connection con=dataSource.getDBConfig();
		con.setAutoCommit(false);
		PreparedStatement pstmt = con.prepareStatement(query);
		pstmt.setString(1, id);
		ResultSet rs = pstmt.executeQuery();				

		ArrayList<Integer> order_id = new ArrayList<Integer>();
		while(rs.next())

		{	Integer orderid= rs.getInt(1);
		order_id.add(orderid);
		}

		rs.close();
		con.close();
		for(int i=0;i<order_id.size();i++)
		{
			System.out.println("Status"+ order_id.get(i));
		}

		return  order_id;
	}
}
