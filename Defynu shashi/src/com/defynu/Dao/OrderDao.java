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
import java.sql.SQLType;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Collection;
import java.util.List;

	import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

	import oracle.sql.BLOB;

	import com.defynu.Model.DatabaseUtilProperties;
import com.defynu.Model.Shirt;

	public class OrderDao {
		public void Shipping(HttpServletRequest request,String fname,String lname,String address,String number,String pin,String pay,int orderid, int payable_amount) throws Exception {
			
			String WRITE_OBJECT_SQL = "INSERT INTO SHIPPINGADDRESS(EMAIL1,ADDRESS1,ADDRESS2,CONTACT,FIRSTNAME,LASTNAME,PAYMENT_MODE,ORDER_ID,PAYABLE_AMOUNT)  VALUES (?,?,?,?,?,?,?,?,?) ";
			
			DatabaseUtilProperties dataSource=new DatabaseUtilProperties();
			Connection con=dataSource.getDBConfig();
			con.setAutoCommit(false);
			
			 HttpSession session=request.getSession(true);
			    System.out.println("session"+ session.getAttribute("email"));
			    
			    // write object to Oracle
			    String id = (String) session.getAttribute("email");
			    PreparedStatement pstmt = con.prepareStatement(WRITE_OBJECT_SQL);

			pstmt.setString(1,id);
			
			pstmt.setString(2,address);
			pstmt.setString(3,pin);
			pstmt.setString(4,number);
			pstmt.setString(5,fname);
			pstmt.setString(6,lname);
			pstmt.setString(7,pay);
			pstmt.setInt(8,orderid );
			pstmt.setInt(9,payable_amount);
			pstmt.executeQuery();
			
			con.commit();
			con.close();
		}
	}
			
	
