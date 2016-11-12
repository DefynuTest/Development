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
    <title>Bespokart-Suit your Style environment.  </title>
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
                    <div class="logo"><a href="/hello"><img src="resources/img/logonew.png" alt="Sedna logo"></a></div>
                    <div class="header-nav">
                        <nav>
                            <ul class="primary-nav">
                            
							    <li><a href="/design?body=1&outercollar=bc1&innercollar=1&outercuff=sb1&innercuff=1&button=1&buttonplacket=1&outsidefastening=1&pocket=sp1&price=800">Customize</a></li>
                                <li><a href="/design?body=1&outercollar=bc1&innercollar=1&outercuff=sb1&innercuff=1&button=1&buttonplacket=1&outsidefastening=1&pocket=sp1&price=800">Shirts</a></li>
                               <li><a href="/browses">FABRICS</a></li>
                            
                            </ul>
                            <ul class="member-actions">
               
                           
                           <c:set var="uname" scope="session" value="${loggedInUser}"/>
<c:choose>
  <c:when test="${uname == null}">
   <li><button type="button" class="btn-link" data-toggle="modal" data-target="#myModal">Sign In / Sign Up</button></li> 
  </c:when>
  
<c:otherwise>
   <li><a href="/signout" class="login">Signout</a></li>
  </c:otherwise>
</c:choose>
                   
                                <h7 style="color:white;">${loggedInUser}</h7>
                                 <li><a href="/checkout"><i class="fa fa-shopping-cart" aria-hidden="true">&nbsp;&nbsp;</i>BAG(${cart})</a></li>
                                 <c:choose>
 									 <c:when test="${uname != null}">
                                <li><a href="/track"><i class="fa fa-map-marker">&nbsp;&nbsp; </i>TRACK</a></li>
                              	</c:when>
                              	</c:choose>
                            </ul>
                        </nav>
                    </div>
                    <div class="navicon">
                        <a class="nav-toggle" href="#"><span></span></a>
                    </div>
                </div>
            </header>
        </section>
        
	
        
        
        <div><h3>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</h3>
        </div>
	 
	<table>
                        <c:forEach items="${list}" var="value" varStatus="status">
                       
	 <section class="blog text-center" >
        <div class="container-fluid" >
            <div class="row">
           
                        <div>
                 
                <div class="col-md-2">
                
                    <article class="blog-post">
                    <figure>
                        <br><br>
                        
                      
 
           
		  <div id="bg"><img src="resources/body/bgc.png"></div>
		 <div id="body"><img src="resources/body/bodyc${value.body}.png"></div>
		    <div id="innercollar"><img src="resources/innercollar/innercollarc${value.innercollar}.png"></div>
 			<div id="outercollar"><img src="resources/outercollar/outercollarc${value.outercollar}.png"></div>
			<div id="outsidefastening"><img src="resources/outsidefastening/outsidefasteningc${value.outsidefastening}.png"></div>
			<div id="button"><img src="resources/button/buttonc${value.button}.png"></div>
			<div id="innercuff"><img src="resources/innercuff/innercuffc${value.innercuff}.png"></div>
 			<div id="outercuff"><img src="resources/outercuff/outercuffc${value.outercuff}.png"></div>
 			
 			<%-- <div id="pocket"><img src="resources/pocket/pocketc${value.pocket}.png"></div> --%>
 			 		<h3>${value.body}	</h3>
             
  

                    </figure>   
                    </article>
                </div>
                 
                <div class="col-md-2">  
                    <article class="blog-post">
                    <figure>   
                        <br><br>
                          <div  > <br>
		  <p><i><b>Men's Shirt:&nbsp;${fablist[value.body-1].name}</b></i></p>
		 <%--  <p><i><b>Collar Type:&nbsp;${value.outercollartype}</b></i></p>
		   <p><i><b>Cuff Type Type:&nbsp;${value.outercufftype}</b></i></p>
		    <p><i><b>Pocket Type:&nbsp;${value.pockettype}</b></i></p>
		   --%>
		 		<p><i><b><span style="color:#000;">INR:${value.price*value.qty}</span></b></i></p>
		 
		</div>
                    </figure>   
                    </article>
                </div>
                 <div class="col-md-2">
                    <article class="blog-post">
                    <figure>
                        <br><br>
                     <div>
                         
                        <%--  <div id="shirt-details">
  <h3>Details</h3>
    <button   data-toggle="popover" class="btn btn-primary btn-sm" data-placement="bottom" data-trigger="focus" data-html="true"
    data-content="Body: ${value.body}<br>Cuff: ${value.outercuff}<br>Placket: ${value.outsidefastening}<br>Outercollar:${value.outercollar}<br>Innercollar:${value.innercollar}">Click me</button>
 </div> --%>
 
  <div id="qty" >
		<form   action="/update" method="POST">
          <input  class="number"  type="hidden" min="0" max="8" name= qty value= ${value.qty}><br>
          		<input type="hidden" name= object value= ${status.index}>
			 <button class="btn btn-primary btn-sm" id="update" type="submit" formmethod="POST" formaction="/update?orderno=${value.order_id}">Remove From Cart</button>
</form>
	</div>
			<span id="price" style="color:black;font-weight:bold">INR:${value.price*value.qty}</span>
			
			</div>
 

                    </figure>   
                    </article>
                </div>

</div>
 
 

                </div>
        </div>
    </section>
 </c:forEach>
</table>
 
 <div class="right">
	<div class=" ">PRICE DETAILS</div><br><br>
	<div class=" ">
	<div class=" "><label>Bag Total</label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="">${amount}</span></div><br>
 <div class=" "><label>Bag Discount</label>&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="">30% Off </span></div><br>
	<div class=" "><label>Sub Total</label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="">${total}</span></div><br>
	 <div class=" "><label>Delivery </label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class=""><span class="">FREE</span></span></div><br>
	<hr>
	<div class=" "><label>Total </label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class=""><span class="">${total}</span></span></div>
	<br><br>
	<%-- <form align="right" action="/confrimorder?total=${total}" method="post" target="_self"> --%>

  <form action="/confrimorder?total=${total}" name="checkoutForm"
				id="checkoutForm" method="post">

				<button type="button" value="Proceed To Pay"
					onclick="checkLoginUser('/Defynu/checkLoginUser?total=${total}')"
					data-toggle="modal" class="btn btn-success btn-block">
					<span class="glyphicon glyphicon-off"></span>Proceed To Pay
				</button>
			</form>
	</div>
	</div>


	<!--signin myModal -->

	<div class="modal fade" id="myModal" role="dialog"
		data-keyboard="false" data-backdrop="false">
		<div class="modal-dialog">

			<!-- Modal content-->
			<div class="modal-content">
				<div class="modal-header" style="padding: 10px 50px;">
					<button type="button" class="close" data-dismiss="modal">&times;</button>
					<h4>
						<span class="glyphicon glyphicon-lock"></span> Login
					</h4>
				</div>
				<div class="modal-body" style="padding: 40px 50px;">
					<form action="/confrimorder?" method="POST" role="form"
						name="signInForm" id="signInForm">
						<div class="form-input-group">
							<label for="usrname"><span
								class="glyphicon glyphicon-user"></span> Username</label> <input
								type="email" name="email" id="email" class="form-control"
								placeholder="Enter email">
						</div>
						<div class="form-group">
							<label for="psw"><span
								class="glyphicon glyphicon-eye-open"></span> Password</label> <input
								type="password" name="password" id="password"
								class="form-control" placeholder="Enter password">
						</div>
						<!-- <div class="checkbox">
              <label><input type="checkbox" value="" checked>Remember me</label>
            </div> -->
						<button type="button" onclick="signIn('/Defynu/hello?')"
							class="btn btn-success btn-block">
							<span class="glyphicon glyphicon-off"></span> Login
						</button>

					</form>
				</div>
				<div class="modal-footer">
					<button type="submit" class="btn  btn-default pull-left"
						data-dismiss="modal">
						<span class="glyphicon glyphicon-google"></span> Cancel
					</button>


					<p>
						Not a member?
						<button type="button" id="openBtn" class="btn btn-primary"
							data-dismiss="modal" data-toggle="modal" data-target="#myModal1">Sign
							Up</button>
					</p>
					<p>
						Forgot
						<button type="button" class="btn btn-warning" data-dismiss="modal"
							data-toggle="modal" data-target="#myModal3">Password</button>
					</p>
				</div>
			</div>

		</div>
	</div>


	<!--myModal1-->
	<div class="modal fade" id="myModal1" role="dialog"
		data-keyboard="false" data-backdrop="false">
		<div class="modal-dialog">

			<!-- Modal content-->
			<div class="modal-content" id="signup">
				<div class="modal-header" style="padding: 10px 50px;">
					<button type="button" class="close" data-dismiss="modal">&times;</button>
					<h4>
						<span class="glyphicon glyphicon-lock"></span> Sign UP
					</h4>
				</div>
				<div class="modal-body" style="padding: 40px 50px;">
					<form role="form" action="/register?" method="post">
						<div class="form-group">
							<label for="usrname"><span
								class="glyphicon glyphicon-user"></span> Username</label> <input
								type="email" class="form-control" id="newUserEmail"
								placeholder="Enter email" maxlength="50"><span
								id="userNameError" style="color: red; font-weight: bold;"></span>
						</div>
						<div class="form-group">
							<label for="usrname"><span
								class="glyphicon glyphicon-user"></span> Mobile</label> <input
								type="number" class="form-control" id="phoneNumber"
								placeholder="Enter number" maxlength="10"><span
								id="mobileNumberError" style="color: red; font-weight: bold;"></span>
						</div>
						<div class="form-group">
							<label for="psw"><span
								class="glyphicon glyphicon-eye-open"></span> Password</label> <input
								type="password" class="form-control" id="userPassword"
								placeholder="Enter password" maxlength="12"><span
								id="userError" style="color: red; font-weight: bold;"></span>
						</div>
						<button type="button"
							onclick="newUserRegister('/register?')" id="registerBtn"
							class="btn btn-success btn-block">
							<span class="glyphicon glyphicon-off"></span> Sign UP
						</button>

					</form>
				</div>
				<div class="modal-footer">
					<button type="submit" class="btn  btn-default pull-left"
						data-dismiss="modal">
						<span class="glyphicon glyphicon-google"></span> Cancel
					</button>



				</div>
			</div>

		</div>
	</div>


	<!--myModal2 Modal -->
	<div class="modal fade" id="myModal2" role="dialog"
		data-keyboard="false" data-backdrop="false">
		<div class="modal-dialog">

			<!-- Modal content-->
			<div class="modal-content">
				<div class="modal-header" style="padding: 10px 50px;">
					<button type="button" class="close" data-dismiss="modal">&times;</button>
					<h4>
						<span class="glyphicon glyphicon-lock"></span> Enter OTP
					</h4>
				</div>
				<div class="modal-body" style="padding: 40px 50px;">
					<form role="form" name="verifyOTPForm" id="verifyOTPForm"
						action="/confrimorder?" method="POST">

						<div class="form-group">
							<label for="psw"><span
								class="glyphicon glyphicon-eye-open"></span> OTP</label> <input
								type="password" class="form-control" id="newRegisterOTP"
								placeholder="6-Digit OTP" maxlength="4">
						</div>

						<button type="button"
							onclick="loadDoc1('/verifyNewUserOTP?')"
							class="btn  btn-default pull-left">
							<span class="glyphicon glyphicon-google"></span>Verify
						</button>
					</form>
				</div>
				<div class="modal-footer">
					<button type="submit" class="btn  btn-default pull-left"
						data-dismiss="modal">
						<span class="glyphicon glyphicon-google"></span> Cancel
					</button>



				</div>
			</div>

		</div>
	</div>





	<script type="text/javascript">
    
    function checkLoginUser(url){

    		  var xhttp = new XMLHttpRequest();
    		  
    		  xhttp.onreadystatechange = function() {
    		    if (xhttp.readyState == 4 && xhttp.status == 200) {
    		    	
    		    	document.checkoutForm.submit();
    		      
    		    }else if(xhttp.readyState == 4 && xhttp.status == 403){
    		    	$('#myModal').modal('show');
    		    }
    		  };
    		  xhttp.open("POST",url,true);
    		  xhttp.send();
    	
    }
    
    function signIn(url){
    	
    	var email = document.getElementById('email').value;
    	var password = document.getElementById('password').value;
    	
    	var url=url+"email="+email+"&password="+password;

		  var xhttp = new XMLHttpRequest();
		  
		  xhttp.onreadystatechange = function() {
		    if (xhttp.readyState == 4 && xhttp.status == 200) {
		    	
		    	
		    	document.signInForm.submit();
		      
		    }else if(xhttp.readyState == 4 && xhttp.status == 403){
		    	$('#myModal1').modal('show');
		    }
		  };
		  xhttp.open("POST",url,true);
		  xhttp.send();
	
}
    
    function newUserRegister(url) {
    	
    	var email = document.getElementById('newUserEmail').value;
    	var number = document.getElementById('phoneNumber').value;
    	var password = document.getElementById('userPassword').value;
    	
    	if(dataFieldValidation()){
    		
    		var url=url+"email="+email+"&password="+password+"&number="+number;
    		
    		  var xhttp = new XMLHttpRequest();
    		  xhttp.onreadystatechange = function() {
    		    if (xhttp.readyState == 4 && xhttp.status == 200) {
    		    	
    		    	$('#myModal2').modal('show');
    		      
    		    }else if(xhttp.readyState == 3 && xhttp.status != 200){
    		    	document.getElementById('userError').innerHTML='Email ID or Mobile already registered';
    		    }else if(xhttp.readyState == 4 && xhttp.status == 403){
    		    	document.getElementById('validOTPError').innerHTML='Email ID or Mobile already registered';
    		    }
    		  };
    		  xhttp.open("POST",url,true);
    		  xhttp.send();
    	}
    	
      
    }

    function dataFieldValidation(){
    	
    	var email = document.getElementById('newUserEmail').value;
    	var number = document.getElementById('phoneNumber').value;
    	var password = document.getElementById('userPassword').value;
    	
    	var isValid = true;
    	
    	document.getElementById('mobileNumberError').innerHTML='';
    	document.getElementById('userNameError').innerHTML='';
    	document.getElementById('userError').innerHTML='';
    	
    	if(!isValidMobileNumber(number)){
    		document.getElementById('mobileNumberError').innerHTML='Enter valid mobile number';
    		isValid =  false;
    	}
    	
        if (!isValidEmail(email)) 
        {
        	document.getElementById('userNameError').innerHTML='Enter valid Email ID';
        	isValid =  false;
        }
        if("" == password || password.length < 6){
        	document.getElementById('userError').innerHTML='Enter valid password';
        	isValid =  false;
        }
    	return isValid;
    }

    function isValidEmail(email){
    	var isValidEmail = true;
    	var reg = /^([A-Za-z0-9_\-\.])+\@([A-Za-z0-9_\-\.])+\.([A-Za-z]{2,4})$/;

    	if (reg.test(email) == false) 
        {
    		isValidEmail = false;
        }
    	return isValidEmail;
    }


    function isValidMobileNumber(number){
    	var isValidMobileNumber =  true;
    	
    	if(10 > number.length){
    		isValidMobileNumber= false;
    	}
    	return isValidMobileNumber;
    }
    
    function loadDoc1(url) {
    	
    	var otp = document.getElementById('newRegisterOTP').value;
    	var url=url+"newRegisterOTP="+otp;
    	
      if(otp.length == 4 && !isNaN(otp )){
    	  var xhttp = new XMLHttpRequest();
    	  xhttp.onreadystatechange = function() {
    	    if (xhttp.readyState == 4 && xhttp.status == 200) {
    	    	
    	    	document.verifyOTPForm.submit();
    	      
    	    }else if(xhttp.readyState == 4 && xhttp.status == 403){
    	    	document.getElementById('validOTPError').innerHTML='Invalid OTP';
    	    }
    	  };
    	  xhttp.open("POST",url,true);
    	  xhttp.send();
    }else{
    	document.getElementById('validOTPError').innerHTML='Invalid OTP';
    }
    }
    
    </script>
	<script
		src="http://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
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