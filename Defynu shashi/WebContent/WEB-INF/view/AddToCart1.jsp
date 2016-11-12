<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
	<title>Cotton Caress</title>
	<meta charset="utf-8"/>
	<meta http-equiv="X-UA-Compatible" content="IE=edge" />
			<meta name="viewport" content="width=device-width, initial-scale=1" />
		<meta name="apple-mobile-web-app-capable" content="yes" />

<spring:url value="/resources/css/addtocart.css" var="addtocartCSS" />
<link href="${addtocartCSS}" rel="stylesheet" />

<spring:url value="/resources/css/normalize.css" var="normalizeCSS" />
	<link href="${normalizeCSS}" rel="stylesheet" />
	
	   <spring:url value="/resources/css/flexslider.css" var="flexsliderCSS" />	   
	   <link href="${flexsliderCSS}" rel="stylesheet" />
	 
	   
	<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/font-awesome/4.3.0/css/font-awesome.min.css">
	 <script type="text/javascript" src="resources/js/modernizr-2.8.3-respond-1.4.2.min.js" ></script>
</head>
<body id="top">
    <!--[if lt IE 8]>
    <p class="browserupgrade">You are using an <strong>outdated</strong> browser. Please <a href="http://browsehappy.com/">upgrade your browser</a> to improve your experience.</p>
    <![endif]-->
   
        <section class="navigation">
            <header>
                <div class="header-content">
                    <div class="logo"><a href="/CottonCaress/hello"><img src="resources/img/aavarann-logo1.png" alt="Sedna logo"></a></div>
                    <div class="header-nav">
                        <nav>
                            <ul class="primary-nav">
							    <li><a href="/CottonCaress/customize">Customize</a></li>
                                <li><a href="#features">Shirts</a></li>
                               <li><a href="/CottonCaress/browse">FABRICS</a></li>
                            
                            </ul>
                            <ul class="member-actions">
               
                           
                           <c:set var="uname" scope="session" value="${loggedInUser}"/>
<c:choose>
  <c:when test="${uname == null}">
   <li><a href="#download" class="login">Sign In / Sign Up</a></li> 
  </c:when>
  <!-- <c:otherwise>
   <li><a href="/CottonCaress/logout" class="login">Signout</a></li>
  </c:otherwise>-->
</c:choose>
                   
                                <h7 style="color:white;">${loggedInUser}</h7>
                                <li><a href="#download" class="btn-white btn-small">bag &nbsp; <span data-icon="&#xe027;" class="icon"></span> &nbsp; (${cart}) </a></li>
                              
                            </ul>
                        </nav>
                        
                    </div>
                    <div class="navicon">
                        <a class="nav-toggle" href="#"><span></span></a>
                    </div>
                </div> 
            </header>
        </section>
<hr>
  
<div id="background">
			<div id="body"><img src="resources/body/bodys${shirt}.png"></div>
			<div id="outercuff"><img src="resources/outercuff/outercuffs${OuterCuff}.png"></div>
			<div id="innercuff"><img src="resources/innercuff/innercuffs${InnerCuff}.png"></div>
			<div id="outsidefastening"><img src="resources/outsidefastening/outsidefastenings${OutsideFastening}.png"></div>
			<div id="innercollar"><img src="resources/innercollar/innercollars${InnerCollar}.png"></div>
			<div id="outercollar"><img src="resources/outercollar/outercollars${OuterCollar}.png"></div>
			<div id="button"><img src="resources/button/buttons${Button}.png"></div>
			<div id="button"><img src="resources/pocket/pockets${Pocket}.png"></div>
		</div>
		<div id="details"><p><b>You Have Customized</b></p><br>
		<h4>Men's Shirt:&nbsp;${fabric}</h4>
		<h4>INR:${price}</h4>
		</div>
		<form align="right" action="/CottonCaress/change?body=${shirt}&outercollar=${OuterCollar}&innercollar=${InnerCollar}&outercuff=${OuterCuff}&innercuff=${InnerCuff}&button=${Button}&buttonplacket=1&outsidefastening=${OutsideFastening}" method="post" target="_self">

  <input type="submit" id="change-btn" class="btn btn-fill btn-large btn-margin-right" value="change"> 
</form>
<form align="right" action="/Defynu/continueshopping?body=${shirt}&outercollar=${OuterCollar}&innercollar=${InnerCollar}&outercuff=${OuterCuff}&innercuff=${InnerCuff}&button=${Button}&buttonplacket=1&outsidefastening=${OutsideFastening}" method="post" target="_self">

  <input type="submit" id="continue-btn" class="btn btn-fill btn-large btn-margin-right" value="continue shoping">
</form>
<form align="right" action="/Defynu/checkout" method="GET" target="_self">

  <input type="submit" id="proceed-btn"  class="btn btn-fill btn-large btn-margin-right" value="proceedtocheckout" align="right">
</form>
		
		
		 <footer>
        <div class="container">
            <div class="row">
                <div class="col-md-7">
                    <div class="footer-links">	  
                        <ul class="footer-group">
                             <li><a href="#">Blog</a></li>
                            <li><a href="#"></a></li>
                            <li><a href="#">Sign up</a></li>
                            <li><a href="">How It Works</a></li>
                            
                        </ul>
                        <p>Copyright © 2016 <a href="#">AAVARAN <span class="fa fa-heart pulse2"></span></a><br>
                         </div>
                </div>
                 
           </div>
       </div>
     
		</footer>
</body>
</html>