
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="f" uri="http://www.springframework.org/tags/form" %>
<!doctype html>
<!--[if lt IE 7]>      <html class="no-js lt-ie9 lt-ie8 lt-ie7" lang=""> <![endif]-->
<!--[if IE 7]>         <html class="no-js lt-ie9 lt-ie8" lang=""> <![endif]-->
<!--[if IE 8]>         <html class="no-js lt-ie9" lang=""> <![endif]-->
<!--[if gt IE 8]><!--> <html class="no-js" lang=""> <!--<![endif]-->
<head>
<head>
    <meta charset="utf-8">
    <!--<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">-->
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <title>DefynU-Suit your Style environment.  </title>
    <meta name="description" content="">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    
    <spring:url value="/resources/css/normalize.css" var="normalizeCSS" />
    <spring:url value="/resources/css/bootstrap.css" var="bootstrapCSS" />
    
    <spring:url value="/resources/css/bs.css" var="bsCSS" />
    <spring:url value="/resources/css/flexslider.css" var="flexsliderCSS" />
    <spring:url value="/resources/css/cout.css" var="coutCSS" />
    <spring:url value="/resources/css/queries.css" var="queriesCSS" />
	<spring:url value="http://maxcdn.bootstrapcdn.com/font-awesome/4.3.0/css/font-awesome.min.css" var="font-awesome.minCSS" />
	<link href="${normalizeCSS}" rel="stylesheet" />
	<link href="${bootstrapCSS}" rel="stylesheet" />
	<link href="${bsCSS}" rel="stylesheet" />
	<link href="${flexsliderCSS}" rel="stylesheet" />
	<link href="${coutCSS}" rel="stylesheet" />
	<link href="${queriesCSS}" rel="stylesheet" />
	<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/font-awesome/4.3.0/css/font-awesome.min.css">
	<!-- <link rel="stylesheet" href="/resources/css/jquery.fancybox.css"> -->
	<link rel="stylesheet" href="/resources/css/etline-font.css">
	 <link rel="stylesheet" href="/resources/css/animate.min.css">
   
    <script type="text/javascript" src="resources/js/modernizr-2.8.3-respond-1.4.2.min.js" ></script>

    <link rel="apple-touch-icon" href="apple-touch-icon.png">
    <link rel="icon" type="image/png" href="favicon-32x32.png" sizes="32x32" />
    <link rel="icon" type="image/png" href="favicon-16x16.png" sizes="16x16" />
    
    
    <link rel="shortcut icon" href="../favicon.ico"> 
       <!--  <link rel="stylesheet" type="text/css" href="/resources/css/demo.css" />
        <link rel="stylesheet" type="text/css" href="/resources/css/style1.css" /> -->
		<!-- <script type="text/javascript" src="resources/js/modernizr.custom.86080.js"></script>
 -->
  <!-- ----------------checkout form------------------------ -->
  
  <script type="text/javascript"
src="http://pagead2.googlesyndication.com/pagead/show_ads.js">
</script>
<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
     
     
<link href='http://fonts.googleapis.com/css?family=PT+Sans:400,700,400italic,700italic' rel='stylesheet' type='text/css'>
        <link rel="stylesheet" href="resources/css/cform.css">
  <!-- ---------------------------form end------------------------- -->
<style>
.mySlides {display:none;}
</style>
 </head>
<body id="top">
    <!--[if lt IE 8]>
    <p class="browserupgrade">You are using an <strong>outdated</strong> browser. Please <a href="http://browsehappy.com/">upgrade your browser</a> to improve your experience.</p>
    <![endif]-->
  
     	 
     	
        <section class="navigation">
            <header>
                <div class="header-content">
                    <div class="logo"><a href="#"><img src="resources/img/logonew.png" alt="Sedna logo"></a></div>
                    <div class="header-nav">
                        <nav>
                            <ul class="primary-nav">
							    <li><a href="/design?body=1&outercollar=bc1&innercollar=1&outercuff=sb1&innercuff=1&button=1&buttonplacket=1&outsidefastening=1&pocket=sp1&price=800">Customize</a></li>
                                <li><a href="#">Shirts</a></li>
                               <li><a href="#">FABRICS</a></li>
                            
                            </ul>
                            <ul class="member-actions">
               
                           
                           <c:set var="uname" scope="session" value="${loggedInUser}"/>
<c:choose>
  <c:when test="${uname == null}">
   <li><a href="#download" class="login">Sign In / Sign Up</a></li> 
  </c:when>
  
<c:otherwise>
   <li><a href="/signout" class="login">Signout</a></li>
  </c:otherwise>
</c:choose>
                   
                                <h7 style="color:white;">${loggedInUser}</h7>
                               <li><a href="#" class="btn-white btn-small">bag  <span data-icon="&#xe027;" class="icon"></span> &nbsp; (${cart})</a></li>
                            </ul>
                        </nav>
                    </div>
                    <div class="navicon">
                        <a class="nav-toggle" href="#"><span></span></a>
                    </div>
                </div>
            </header>
        </section>
        
	 
	
	 <section class="blog text-center" >
        <div class="container-fluid" >
            <div class="row">
               <table>
                        <c:forEach items="${list}" var="value" varStatus="status">
                        <div>
                 
                <div class="col-md-6">
                
                    <article class="blog-post">
                    <figure>
                        <br><br>
                        
                      
 
                     <div id="background">
		
		 <div id="body"><img src="resources/body/bodyc${value.body}.png"></div>
		    <div id="innercollar"><img src="resources/innercollar/innercollarc${value.innercollar}.png"></div>
 			<div id="outercollar"><img src="resources/outercollar/outercollarc${value.outercollar}.png"></div>
			<div id="outsidefastening"><img src="resources/outsidefastening/outsidefasteningc${value.outsidefastening}.png"></div>
			<div id="button"><img src="resources/button/buttonc${value.button}.png"></div>
			<div id="innercuff"><img src="resources/innercuff/innercuffc${value.innercuff}.png"></div>
 			<div id="outercuff"><img src="resources/outercuff/outercuffc${value.outercuff}.png"></div>
 			<div id="pocket"><img src="resources/pocket/pocketc${value.pocket}.png"></div>
 			 			
                  </div>
				
  

                    </figure>   
                    </article>
                </div>
                 <div class="col-md-2">
                    <article class="blog-post">
                    <figure>
                        <br><br>
                     <div>
                         
                         <div id="shirt-details">
  <h3>Details</h3>
    <button   data-toggle="popover" class="btn btn-primary btn-sm" data-placement="bottom" data-trigger="focus" data-html="true"
    data-content="Body: ${value.body}<br>Cuff: ${value.outercuff}<br>Placket: ${value.outsidefastening}<br>Outercollar:${value.outercollar}<br>Innercollar:${value.innercollar}">Click me</button>
 </div>
 
 <div id="qty" >
		<form   action="/CottonCaress/checkout" method="POST">
          Qty: <input  class="number"  type="number" min="0" max="8" name= qty value= ${value.qty}><br>
          		<input type="hidden" name= object value= ${status.index}>
			
			
  <button class="btn btn-primary btn-sm" id="update" type="submit" formmethod="POST" formaction="/CottonCaress/checkout">update</button>
</form>
	</div>
			<span id="price" style="color:black;font-weight:bold">INR:${value.price*value.qty}</span>
			
			</div>
 

                    </figure>   
                    </article>
                </div>

</div>
                
</c:forEach>
</table>
 

                </div>
        </div>
    </section>
 
 
 <div class="right">
	<div class=" ">PRICE DETAILS</div>
	<div class=" ">
	<div class=" "><label>Bag Total</label><span class="">Rs. 3,698 </span></div><br>
 <div class=" "><label>Bag Discount</label><span class="">- Rs. 1,369 </span></div><br>
	<div class=" "><label>Sub Total</label><span class="">Rs. 2,329</span></div><br>
	<div class="  "><label>Coupon Discount</label><span class="">Apply Coupon</span></div><br>
	<div class=" "><label>Delivery </label><span class=""><span class="">FREE</span></span></div><br>
	<hr>
	<div class=" "><label>Total </label><span class=""><span class="">Rs 2,329</span></span></div>
	
	<!-- <input type="submit"   style="background-color:#3BC3B9; color:#fff;"  class="btn btn-success btn-sm" value="proceedtopay" > -->
	
	<form align="right" action="/Defynu/confrimorder" method="get" target="_self">

  <input type="submit" style="background-color:#000"  class="btn btn-primary btn-sm" value="Proceed To Pay">
</form>
	
	</div>
	</div>
	<%-- <table>
	
	
 <c:forEach items="${list}" var="value" varStatus="status">
  <section  class="order-list">
 
		<div id="background">
		
		 <div id="body"><img src="resources/body/bodyc${value.body}.png"></div>
		    <div id="innercollar"><img src="resources/innercollar/innercollarc${value.innercollar}.png"></div>
 			<div id="outercollar"><img src="resources/outercollar/outercollarc${value.outercollar}.png"></div>
			<div id="outsidefastening"><img src="resources/outsidefastening/outsidefasteningc${value.outsidefastening}.png"></div>
			<div id="button"><img src="resources/button/buttonc${value.button}.png"></div>
			<div id="innercuff"><img src="resources/innercuff/innercuffc${value.innercuff}.png"></div>
 			<div id="outercuff"><img src="resources/outercuff/outercuffc${value.outercuff}.png"></div>
 			<div id="pocket"><img src="resources/pocket/pocketc${value.pocket}.png"></div>
 			
 			
 			
 			
 			
 			hvghg
 			
 				<div class="right">
	<div class=" ">PRICE DETAILS</div>
	<div class=" ">
	<div class=" "><label>Bag Total</label><span class="">Rs. 3,698 </span></div><br>
 <div class=" "><label>Bag Discount</label><span class="">- Rs. 1,369 </span></div><br>
	<div class=" "><label>Sub Total</label><span class="">Rs. 2,329</span></div><br>
	<div class="  "><label>Coupon Discount</label><span class="">Apply Coupon</span></div><br>
	<div class=" "><label>Delivery </label><span class=""><span class="">FREE</span></span></div><br>
	<hr>
	<div class=" "><label>Total </label><span class=""><span class="">Rs 2,329</span></span></div>
	
	<input type="submit"   style="color:#fff;"  class="btn btn-success btn-sm" value="proceedtopay" >
	</div>
	</div>
	
	
	fxgf
 			
</div>
		
 			<div id="shirt-details">
  <h3>Details</h3>
    <button   data-toggle="popover" class="btn btn-primary btn-sm" data-placement="bottom" data-trigger="focus" data-html="true"
    data-content="Body: ${value.body}<br>Cuff: ${value.outercuff}<br>Placket: ${value.outsidefastening}<br>Outercollar:${value.outercollar}<br>Innercollar:${value.innercollar}">Click me</button>
 </div>
   --%>
			
		<!-- 
			<button id="measurement-btn" type="button" class="btn btn-success" data-toggle="modal" data-id=${status.index} data-target="#${status.index}myModal">
  add measurement
</button>	
 -->
			
<%-- 
 <div id="qty" >
		<form   action="/CottonCaress/checkout" method="POST">
          Qty: <input  class="number"  type="number" min="0" max="8" name= qty value= ${value.qty}><br>
          		<input type="hidden" name= object value= ${status.index}>
			
			
  <button class="btn btn-primary btn-sm" id="update" type="submit" formmethod="POST" formaction="/CottonCaress/checkout">update</button>
</form>
	</div>
			<span id="price" style="color:black;font-weight:bold">INR:${value.price*value.qty}</span> --%>
		 
	 
<%-- 		<button id="measurement-btn" type="button" class="btn btn-success" data-toggle="modal" data-id=${status.index} data-target="#${status.index}myModal">
  Track
</button>	
	

	<br>
	<br><br>
	<br>
		
<hr>
		<!-- Modal -->

<div class="modal fade" id="${status.index}myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
<form action="/CottonCaress/measurement" method = "GET">	
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
        <h4 class="modal-title" id="myModalLabel">Measurement Profile</h4>
      </div>
      <div class="modal-body">
	  <h5>Standard Size:</h5>
	  	<button type="button" class="btn btn-primary btn-xs"><a href="/CottonCaress/defaultmeasurement?neck=37&chest=87&hip=80&waist=75&seat=87&length=69&shoulder=42&arm=6&wrist=16&profile=XS&object=${status.index}" >XS</a></button>&nbsp;
        <button type="button" class="btn btn-primary btn-xs"><a href="/CottonCaress/defaultmeasurement?neck=38&chest=92&hip=89&waist=83&seat=94&length=72&shoulder=44&arm=65&wrist=17&profile=S&object=${status.index}" >S</a></button>&nbsp;
		<button type="button" class="btn btn-primary btn-xs"><a href="/CottonCaress/defaultmeasurement?neck=41&chest=97&hip=95&waist=91&seat=100&length=73&shoulder=48&arm=68&wrist=18&profile=M&object=${status.index}" >M</a></button>&nbsp;
		<button type="button" class="btn btn-primary btn-xs"><a href="/CottonCaress/defaultmeasurement?neck=43&chest=105&hip=104&waist=99&seat=108&length=76&shoulder=50&arm=69&wrist=19&profile=L&object=${status.index}" >L</a></button>&nbsp;
		<button type="button" class="btn btn-primary btn-xs"><a href="/CottonCaress/defaultmeasurement?neck=45&chest=103&hip=112&waist=107&seat=116&length=78&shoulder=54&arm=70&wrist=20&profile=XL&object=${status.index}" >XL</a></button>&nbsp;
		<button type="button" class="btn btn-primary btn-xs"><a href="/CottonCaress/defaultmeasurement?neck=47&chest=121&hip=119&waist=115&seat=124&length=81&shoulder=58&arm=73&wrist=21&profile=XXL&object=${status.index}" >XXL</a></button>&nbsp;
		<button type="button" class="btn btn-success btn-xs">Size Chart</button>
		
		<hr>
		<h5>Size Me:</h5>
		
		<button type="submit" class="btn btn-primary btn-xs" formaction="/CottonCaress/measurement" name= "object" value= ${status.index}>Add Your Body Measuremensts</button>&nbsp;
		
		
		<h5>Previusly Stored Size:</h5>
		<h5 ><i><b>XL</b></i>&nbsp;&nbsp;&nbsp;&nbsp;<button type="button" class="btn btn-success btn-xs">Use</button></h5>
		
					
<h4>${value.profile}</h4>
	
	 </div>
		

      <div class="modal-footer">
        <button type="button" class="btn btn-default btn-xs" data-dismiss="modal">Close</button>
        <button type="button" class="btn btn-primary btn-xs">Save changes</button>
      </div>
    </div>
  </div>

</div> 			
	</c:forEach>
				
 
 </table>--%>
	<%-- <form align="right" action="/buy" method="GET" target="_self">

  <input type="submit"   style="float:right" class="btn btn-success btn-lg btn-margin-right" value="buy" align="right">
</form>
         --%>

       <section class="to-top">
        <div class="container">
            <div class="row">
                <div class="to-top-wrap">
                    <a href="#top" class="top"><i class="fa fa-angle-up"></i></a>
                </div>
            </div>
        </div>
    </section>
    
    <%-- <footer>
        <div class="container">
            <div class="row">
                <div class="col-md-7">
                    <div class="footer-links">
                        <ul class="footer-group">
                            <li><a href="#">Blog</a></li>
                            <li><a href="#"></a></li>
                            <li><a href="#">Sign up</a></li>
                            <li><a href="#">How It Works</a></li>
                            
                        </ul>
                        <p>Copyright © 2016 <a href="#">DefynU <span class="fa fa-heart pulse2"></span></a><br>
                         </div>
                </div>
                <div class="social-share">
                    <p>Share DefynU with your friends</p>
                    <a href="#" class="twitter-share"><i class="fa fa-twitter"></i></a> <a href="#" class="facebook-share"><i class="fa fa-facebook"></i></a>
                </div>
            </div>
        </div>
    </footer> --%>
    
    <script src="http://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
    <script>window.jQuery || document.write('<script src="resources/js/jquery-1.11.2.min.js"><\/script>')</script>
    <script src="resources/js/retina.js"></script>
    <script src="resources/js/jquery.fancybox.pack.js"></script>
    <script src="resources/js/bootstrap.min.js"></script>
    <script src="resources/js/scripts.js"></script>
    <script src="resources/js/jquery.flexslider-min.js"></script>
    <script src="resources/js/classie.js"></script>
    <script src="resources/js/jquery.waypoints.min.js"></script>
    <!-- Google Analytics: change UA-XXXXX-X to be your site's ID. -->
     <script src="resources/js/formalize.js" type="text/javascript"></script>
    <script>
    (function(b,o,i,l,e,r){b.GoogleAnalyticsObject=l;b[l]||(b[l]=
    function(){(b[l].q=b[l].q||[]).push(arguments)});b[l].l=+new Date;
    e=o.createElement(i);r=o.getElementsByTagName(i)[0];
    e.src='//www.google-analytics.com/analytics.js';
    r.parentNode.insertBefore(e,r)}(window,document,'script','ga'));
    ga('create','UA-XXXXX-X','auto');ga('send','pageview');
    </script>
 

</body>
</html>