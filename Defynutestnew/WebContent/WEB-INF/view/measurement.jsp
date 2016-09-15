<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="f" uri="http://www.springframework.org/tags/form" %>
<%@ page import="java.util.*" %>
<%@ page import= "com.defynu.Model.Shirt" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>

<meta http-equiv="content-type" content="text/html; charset=UTF-8">
<meta http-equiv="content-language" content="en">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="theme-color" content="#b11116">
 <meta name="viewport" content="width=device-width, initial-scale=1">   
 <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
 <script src="//ajax.googleapis.com/ajax/libs/jquery/1.7.2/jquery.min.js" type="text/javascript"></script>
 
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.0/jquery.min.js"></script>
  <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
<spring:url value="/resources/css/measurement.css" var="measurementCSS" />
<link href="${measurementCSS}" rel="stylesheet" />

<title>measurement</title>
</head>
<body >
 <section class="hero">
        <section class="navigation">
            <header>
                <div class="header-content">
                    <div class="logo"><a href="/CottonCaress/hello"><img src="resources/img/aavarann-logo1.png" alt="Sedna logo"></a></div>
                   
                    </div>
                    <div class="navicon">
                        <a class="nav-toggle" href="#"><span></span></a>
                    </div>
                </div>
            </header>
        </section>


 <div id="measurement">

   <form action="/CottonCaress/measurement" method = "GET">
   <div class="col-xs-6 form-group"> 
    <input onclick="myFunction('url(resources/img/neck.jpg)') " type="number" min="0" max="100" class="form-control" name= "neck"  placeholder="neck">
    <input type="hidden" name= "object" value="${no}">
  <br>
 
    <input onclick="myFunction('url(resources/img/chest.jpg)') " type="number" min="0" max="100" class="form-control" name= "chest" placeholder="chest">
  
<br>
    <input onclick="myFunction('url(resources/img/waist.jpg)') " type="number" min="0" max="100" class="form-control" name= "waist" placeholder="waist">
	<br>
      <input onclick="myFunction('url(resources/img/hip.jpg)') " type="number" min="0" max="100" class="form-control" name= "hip" placeholder="hip">
<br>
	  <input onclick="myFunction('url(resources/img/seat.jpg)') " type="number" min="0" max="100" class="form-control" name= "seat" placeholder="seat">
 </div>
 
 
 <div class="col-xs-6 form-group">
  <input onclick="myFunction('url(resources/img/shirtlength.jpg)') " type="number" min="0" max="100" class="form-control" name= "length" placeholder="shirt length">
<br>
	  <input onclick="myFunction('url(resources/img/shoulderwidth.jpg)') " type="number" min="0" max="100" class="form-control" name= "shoulder" placeholder="shoulder width">
 <br>

 <input onclick="myFunction('url(resources/img/armlength.jpg)') " type="number" min="0" max="100" class="form-control" name= "arm" placeholder="arm length">
<br>
	  <input onclick="myFunction('url(resources/img/wrist.jpg)') " type="number" min="0" max="100" class="form-control" name= "wrist" placeholder="wrist">
 <br>
 <input onclick="myFunction1() " type="text"  class="form-control" name= "profile" placeholder="Profile">
 </div>
 <button class="btn btn-success"  id="update" type="submit" formaction= "/Defynu/measurement" formmethod="POST">Submit</button>
 </form>
 


</div>


<div id="description"> 
<p></p>

</div>
 <script>


function myFunction(abc) {
 

    document.getElementsByTagName("body")[0].style.background =abc;
  
    
}
</script>
<script>


function myFunction1() {


    document.getElementsByTagName("body")[0].style.background = "url(http://powermediany.com/wp-content/uploads/2014/04/Brachsoni-Shirt-Box.jpg) no-repeat right center";
  
    
}
</script>
<script type="text/javascript">
    $(document).ready(function() {
        $('body').css('background-image', 'url(resources/img/measuretape.jpg)');
    });
</script>
 
</body>
</html>