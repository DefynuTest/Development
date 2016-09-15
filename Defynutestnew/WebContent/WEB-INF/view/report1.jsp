<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>Insert title here</title>

</head> 
<body>
<form name="Shipay" action="/Defynu/confrim" method="POST">
Email:<input type="text" name="email"><br>
Password:<input type="password" name="password"><br><br><br>
Name:<input type="text" name="name"><br>
Pincode:<input type="text" name="pincode"><br>
Address:<input type="text" name="address"><br>
Landmark:<input type="text" name="landmark"><br>
Phone:<input type="text" name="phone"><br><br><br>
Payment Method:
<input type="radio" name="pay" value="cod" checked> COD<br>
<input type="radio" name="pay" value="debit" checked> DebitCard<br>
<input type="radio" name="pay" value="credit" checked> CreditCard<br>
<input type="submit" value="SUBMIT">
</form>
</body>
</html> 