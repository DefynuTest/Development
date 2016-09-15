<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="f" uri="http://www.springframework.org/tags/form" %>
<%@ page import="java.util.*" %>
<%@ page import="java.security.*" %>
<%@ page import="java.security.MessageDigest" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<h5>PLease Wait.....</h5>

<%!
public boolean empty(String s)
	{
		if(s== null || s.trim().equals(""))
			return true;
		else
			return false;
	}
%>
<%!
	public String hashCal(String type,String str){
		byte[] hashseq=str.getBytes();
		StringBuffer hexString = new StringBuffer();
		try{
		MessageDigest algorithm = MessageDigest.getInstance(type);
		algorithm.reset();
		algorithm.update(hashseq);
		byte messageDigest[] = algorithm.digest();
            
		

		for (int i=0;i<messageDigest.length;i++) {
			String hex=Integer.toHexString(0xFF & messageDigest[i]);
			if(hex.length()==1) hexString.append("0");
			hexString.append(hex);
		}
			
		}catch(NoSuchAlgorithmException nsae){ }
		
		return hexString.toString();


	}
%>
<% 	
	String merchant_key="Fig1oRfk";
	String salt="qdguOdUosg";
	String action1 ="https://test.payu.in/_payment";
	String base_url="https://test.payu.in";
	int error=0;
	String hashString="";
	
 

	
	String txnid ="1235";
	
		
	String txn="abcd";
	String hashSequence = "Fig1oRfk|1235|10.00|shirt1|mithilesh|mithileshbsa@gmail.com|||||||||||qdguOdUosg";
	String hash=hashCal("SHA-512",hashSequence);

%>

<script>
var hash='<%= hash %>';
function submitPayuForm() {
	
	if (hash == '')
		return;

      var payuForm = document.forms.payuForm;
      payuForm.submit();
    }</script>

<body onload="submitPayuForm();">


<form action="<%= action1 %>" method="post" name="payuForm">
<input type="hidden" name="key" value="<%= merchant_key %>" />
      <input type="hidden" name="hash" value="<%= hash %>"/>
      <input type="hidden" name="txnid" value="<%= txnid %>" />
      
	  <input type="hidden" name="service_provider" value="payu_paisa" />
      <table>
        <tr>
          <td><b>Mandatory Parameters</b></td>
        </tr>
        <tr>
          <td>Amount: </td>
          <td><input name="amount" value="10.00" /></td>
          <td>First Name: </td>
          <td><input name="firstname" id="firstname" value="mithilesh" /></td>
        </tr>
        <tr>
          <td>Email: </td>
          <td><input name="email" id="email" value="mithileshbsa@gmail.com" /></td>
          <td>Phone: </td>
          <td><input name="phone" value="9163086037" /></td>
        </tr>
        <tr>
          <td>Product Info: </td>
          <td colspan="3"><input name="productinfo" value="shirt1" size="64" /></td>
        </tr>
        <tr>
          <td>Success URI: </td>
          <td colspan="3"><input name="surl" value="http://localhost/Defynu/hello" /></td>
        </tr>
        <tr>
          <td>Failure URI: </td>
          <td colspan="3"><input name="furl" value="http://localhost/Defynu/hello" size="64" /></td>
        </tr>
      <td><b>Optional Parameters</b></td>
        </tr>
        <tr>
          <td>Last Name: </td>
          <td><input name="lastname" id="lastname" value="kumar" /></td>
          <td>Cancel URI: </td>
          <td><input name="curl" value="" /></td>
        </tr>
        <tr>
          <td>Address1: </td>
          <td><input name="address1" value="BD-360" /></td>
          <td>Address2: </td>
          <td><input name="address2" value="Sector1" /></td>
        </tr>
        <tr>
          <td>City: </td>
          <td><input name="city" value="kolkata" /></td>
          
        <tr>
          <% if(empty(hash)){ %>
            <td colspan="4"><input type="submit" value="Submit" /></td>
          <% } %>
        </tr>
      </table>
    </form>
     

</body>
</html>