package com.defynu.Dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import com.defynu.Model.DatabaseUtilProperties;
import com.defynu.Model.User;

public class RegisterDao {
	
	DatabaseUtilProperties dataSource=new DatabaseUtilProperties();
	Connection con=dataSource.getDBConfig();
	
	
	public boolean isRegister(User user) throws SQLException
	{
		
	boolean result = false;
	
	try {
		ResultSet resultSet = null;
		
		String query1 = "Select * from USER_DETAILS where USER_NAME = ? ";
		PreparedStatement pstmt1 = con.prepareStatement(query1);
		pstmt1.setString(1, user.getEmail());
		resultSet = pstmt1.executeQuery();
		System.out.println(resultSet);
		if (resultSet.next()){
			result= true; //If USer is already Registered return 'R'
		}
		if(!result && null != user.getPhoneNumber() && !"".equals(user.getPhoneNumber())){
			String query2= "Select * from USER_DETAILS where phone_number = ? ";
			PreparedStatement pstmt2 = con.prepareStatement(query2);
			pstmt2.setInt(1, user.getPhoneNumber().intValue());
			 resultSet = pstmt2.executeQuery();
			 if(resultSet.next()){
				 result = true;
			 }
		}
		/*else
		{
			String query2 = "Insert into Usr (username,password) values(?,?)";
				PreparedStatement pstmt2 = con.prepareStatement(query2);
				pstmt2.setString(1, user.getEmail());
				pstmt2.setString(2, user.getPassword());
			    pstmt2.executeQuery();	
				result = false; // New User Registered
				
	}*/
		
	}
	catch (SQLException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}finally{
					con.close();
				}
	return result;
	
	}
		
	public String retrieveNumber(String emailID){
		
		String phoneNumber = "";
		try {
			DatabaseUtilProperties dataSource=new DatabaseUtilProperties();
			Connection con=dataSource.getDBConfig();
			
				String query = "Select PHONE_NUMBER from USER_DETAILS where USER_NAME = ?";
				PreparedStatement pstmt = con.prepareStatement(query);
					pstmt.setString(1, emailID);
					ResultSet resultSet = pstmt.executeQuery();				
					if (resultSet.next()){
						phoneNumber= resultSet.getString(1);
					}
					
					con.close();
		}catch (SQLException e) {
						// TODO Auto-generated catch block
						e.printStackTrace();
		}catch(Exception e){
		e.printStackTrace();
		}
		
		return phoneNumber;
		
		}
			
	
	public boolean resetPassword(String password, String emailID) throws SQLException{
		
		boolean success = false;
		try {
				String query = "update USER_DETAILS set PASSWORD = ? where USER_NAME = ?";
				PreparedStatement pstmt = con.prepareStatement(query);
					pstmt.setString(1, password);
					pstmt.setString(2, emailID);
					int count = pstmt.executeUpdate();				
					if (count > 0){
						success = true;
					}
					
					
		}catch (SQLException e) {
						// TODO Auto-generated catch block
						e.printStackTrace();
		}catch(Exception e){
		e.printStackTrace();
		}finally{
			con.close();
		}
		
		return success;
		
		}
	
	public void insertNewUser(User user) throws SQLException{
		
		try {
				String query = "Insert into USER_DETAILS values (?, ?, ?, ?, ?)";
				PreparedStatement pstmt = con.prepareStatement(query);
					pstmt.setString(1, user.getEmail());
					pstmt.setString(2, user.getPassword());
					pstmt.setString(3, "");
					pstmt.setString(4, "");					
					pstmt.setLong(5, user.getPhoneNumber().intValue());
					int count = pstmt.executeUpdate();				
					
					
		}catch (SQLException e) {
						// TODO Auto-generated catch block
						e.printStackTrace();
		}catch(Exception e){
		e.printStackTrace();
		}finally{
			con.close();
		}
		
		}


}
