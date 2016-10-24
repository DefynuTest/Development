
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
    <spring:url value="/resources/css/flexslider.css" var="flexsliderCSS" />
    <spring:url value="/resources/css/addtocart.css" var="addtocartCSS" />
    <spring:url value="/resources/css/queries.css" var="queriesCSS" />
	 <link href="${normalizeCSS}" rel="stylesheet" />
	<link href="${bootstrapCSS}" rel="stylesheet" />
	<link href="${flexsliderCSS}" rel="stylesheet" />
	<link href="${addtocartCSS}" rel="stylesheet" />
	<link href="${queriesCSS}" rel="stylesheet" />
	<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/font-awesome/4.3.0/css/font-awesome.min.css">
	<link rel="stylesheet" href="/resources/css/jquery.fancybox.css">
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
 - -->
 
 
 
<!--  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
<script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.min.js"></script>
 --><style>
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
							    <li><a href="/Defynu/design?body=1&outercollar=bc1&innercollar=1&outercuff=sb1&innercuff=1&button=1&buttonplacket=1&outsidefastening=1&pocket=sp1&price=800">Customize</a></li>
                                <li><a href="#">Shirts</a></li>
                               <li><a href="#">FABRICS</a></li>
                            
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
                                 <li><a href="#"><i class="fa fa-shopping-cart" aria-hidden="true">&nbsp;&nbsp;</i>BAG(${cart})</a></li>
                                <li><a href="#"><i class="fa fa-map-marker">&nbsp;&nbsp; </i>TRACK</a></li>
                              
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
               <%--  <div class="col-md-4">
                    <article class="blog-post" >
                        <figure>
         <div id="backgrond">
			<div id="bod"><img src="resources/body/bodys${shirt}.png"></div>
			<div id="oute"><img src="resources/outercuff/outercuffs${OuterCuff}.png"></div>
			<div id="innercuf"><img src="resources/innercuff/innercuffs${InnerCuff}.png"></div>
			<div id="outsidefatening"><img src="resources/outsidefastening/outsidefastenings${OutsideFastening}.png"></div>
			<div id="innercolr"><img src="resources/innercollar/innercollars${InnerCollar}.png"></div>
			<div id="outercolar"><img src="resources/outercollar/outercollars${OuterCollar}.png"></div>
			<div id="buton"><img src="resources/button/buttons${Button}.png"></div>
			<div id="butn"><img src="resources/pocket/pockets${Pocket}.png"></div>
		</div>
		
                        </figure>
                    </article>
                </div>  --%>
                <div class="col-md-4">
                    <article class="blog-post">
                    <figure>
                        <br><br>
                          <div id="background">
			<div id="body"><img src="resources/body/bodys${shirt}.png"></div>
			<div id="outercuff"><img src="resources/outercuff/outercuffs${OuterCuff}.png"></div>
			<div id="innercuff"><img src="resources/innercuff/innercuffs${InnerCuff}.png"></div>
			<div id="outsidefastening"><img src="resources/outsidefastening/outsidefastenings${OutsideFastening}.png"></div>
			<div id="innercollar"><img src="resources/innercollar/innercollars${InnerCollar}.png"></div>
			<div id="outercollar"><img src="resources/outercollar/outercollars${OuterCollar}.png"></div>
			<div id="button"><img src="resources/button/buttons${Button}.png"></div>
			<div id="pocket"><img src="resources/pocket/pockets${Pocket}.png"></div>
		</div>
                    </figure>   
                    </article>
                </div>
                 <div class="col-md-4">
                    <article class="blog-post">
                    <figure>
                        <br><br>
                          <div  ><p><b>YOU HAVE CUSTOMIZED</b></p><br>
		<p><i><b>Men's Shirt:&nbsp;${bodyname}</b></i></p>
		<p><i><b>Cuff Type:&nbsp;${outercuffname}</b></i></p>
		<p><i><b>Collar Type:&nbsp;${outercollarname}</b></i></p>
		<p><i><b>Pocket Type:&nbsp;${pocketname}</b></i></p>
		<p><i><b><span style="color:#000;">INR:${Price}</span></b></i></p>
		<button type="submit" class="btn btn-success btn-sm" formaction="/CottonCaress/measurement" name= "object" value= >Update Measuremensts</button>&nbsp;
		
		</div>
                    </figure>   
                    </article>
                </div>
                <div class="col-md-4">
                    <article class="blog-post">
                        <figure>
                           
		<div  id="form-btn">
		<br><br>
		<form align="right" action="/Defynu/change?body=${shirt}&outercollar=${OuterCollar}&innercollar=${InnerCollar}&outercuff=${OuterCuff}&innercuff=${InnerCuff}&button=${Button}&buttonplacket=${ButtonPlacket}&outsidefastening=${OutsideFastening}&price=${Price}&pocket=${Pocket}" method="post" target="_self">

  <input type="submit" style="background-color:#000"  class="btn btn-primary btn-sm" value="change"> 
</form>

<form align="right" action="/Defynu/continueshopping?body=${shirt}&outercollar=${OuterCollar}&innercollar=${InnerCollar}&outercuff=${OuterCuff}&innercuff=${InnerCuff}&button=${Button}&buttonplacket=1&outsidefastening=${OutsideFastening}" method="post" target="_self">

  <input type="submit" style="background-color:#000"  class="btn btn-primary btn-sm" value="continue shoping">
</form>
<form align="right" action="/Defynu/checkout" method="GET" target="_self">

  <input type="submit"     class="btn btn-success btn-sm" value="proceedtocheckout" align="right">
</form>
		
	</div>	
                        </figure>
                    </article>
                </div>
                <!-- <a href="#" class="btn btn-ghost btn-accent btn-small">Browse</a>
            --> </div>
        </div>
    </section>
    
	 
     
 
 

  <!--signin myModal -->
   <div class="modal fade" id="myModal" role="dialog">
    <div class="modal-dialog">
    
      <!-- Modal content-->
      <div class="modal-content"  >
        <div class="modal-header" style="padding:10px 50px;">
          <button type="button" class="close" data-dismiss="modal">&times;</button>
          <h4><span class="glyphicon glyphicon-lock"></span> Login</h4>
        </div>
        <div class="modal-body" style="padding:40px 50px;">
          <form action="/Defynu/hello" method="POST" role="form" >
            <div class="form-input-group">
              <label for="usrname"><span class="glyphicon glyphicon-user"></span> Username</label>
              <input type="email" name="email" id="email" class="form-control" placeholder="Enter email">
            </div>
            <div class="form-group">
              <label for="psw"><span class="glyphicon glyphicon-eye-open"></span> Password</label>
              <input type="password" name="password" id="password" class="form-control"   placeholder="Enter password">
            </div>
            <!-- <div class="checkbox">
              <label><input type="checkbox" value="" checked>Remember me</label>
            </div> -->
              <button type="submit"     class="btn btn-success btn-block"><span class="glyphicon glyphicon-off"></span> Login</button>
 
          </form>
        </div>
        <div class="modal-footer" >
          <button type="submit" class="btn  btn-default pull-left" data-dismiss="modal"><span class="glyphicon glyphicon-google"></span> Cancel</button>

 
          <p>Not a member? <button type="button" id="openBtn"class="btn btn-primary" data-dismiss="modal"  data-toggle="modal" data-target="#myModal1">Sign Up</button></p>
          <p>Forgot <button type="button" class="btn btn-warning" data-dismiss="modal" data-toggle="modal" data-target="#myModal3">Password</button></p>
        </div>
      </div>
      
    </div>
  </div>
  
  
   <!--myModal1-->
  <div class="modal fade" id="myModal1" role="dialog">
    <div class="modal-dialog">
    
      <!-- Modal content-->
      <div class="modal-content" id="signup">
        <div class="modal-header" style="padding:10px 50px;">
          <button type="button" class="close" data-dismiss="modal">&times;</button>
          <h4><span class="glyphicon glyphicon-lock"></span> Sign UP</h4>
        </div>
        <div class="modal-body" style="padding:40px 50px;">
          <form role="form" action="/Defynu/register" method="post">
            <div class="form-group">
              <label for="usrname"><span class="glyphicon glyphicon-user"></span> Username</label>
              <input type="email" class="form-control" id="usrname" placeholder="Enter email">
            </div>
            <div class="form-group">
              <label for="usrname"><span class="glyphicon glyphicon-user"></span> Mobile</label>
              <input type="number" class="form-control" id="number" placeholder="Enter number">
            </div>
            <div class="form-group">
              <label for="psw"><span class="glyphicon glyphicon-eye-open"></span> Password</label>
              <input type="password" class="form-control" id="psw" placeholder="Enter password">
            </div>
               <button  type="button" onclick="loadDoc('/Defynu/register?')" id="openBtn" data-toggle="modal"  data-target="#myModal2" class="btn btn-success btn-block"><span class="glyphicon glyphicon-off" ></span> Sign UP</button>
 
          </form>
        </div>
        <div class="modal-footer" >
          <button type="submit" class="btn  btn-default pull-left" data-dismiss="modal"><span class="glyphicon glyphicon-google"></span> Cancel</button>

 
          
        </div>
      </div>
      
    </div>
  </div>
  
  
   <!--myModal2 Modal -->
  <div class="modal fade" id="myModal2" role="dialog">
    <div class="modal-dialog">
    
      <!-- Modal content-->
      <div class="modal-content">
        <div class="modal-header" style="padding:10px 50px;">
          <button type="button" class="close" data-dismiss="modal">&times;</button>
          <h4><span class="glyphicon glyphicon-lock"></span> Enter OTP</h4>
        </div>
        <div class="modal-body" style="padding:40px 50px;">
          <form role="form" action="/Defynu/verifyOTP?" method="POST">
             
            <div class="form-group">
              <label for="psw"><span class="glyphicon glyphicon-eye-open"></span> OTP</label>
              <input type="password" class="form-control" id="otp" placeholder="6-Digit OTP">
            </div>
             
             <!--  <button type="submit" class="btn btn-success btn-block"><span class="glyphicon glyphicon-off"></span> Submit</button>
  -->
  <button type="button" onclick="loadDoc1('/Defynu/verifyOTP?')" class="btn  btn-default pull-left" ><span class="glyphicon glyphicon-google"></span>Verify</button>
          </form>
        </div>
        <div class="modal-footer" >
          <button type="submit" class="btn  btn-default pull-left" data-dismiss="modal"><span class="glyphicon glyphicon-google"></span> Cancel</button>

 
         
        </div>
      </div>
      
    </div>
  </div>
  
   <!-- myModal3 Modal -->
  <div class="modal fade" id="myModal3" role="dialog">
    <div class="modal-dialog">
    
      <!-- Modal content-->
      <div class="modal-content">
        <div class="modal-header" style="padding:10px 50px;">
          <button type="button" class="close" data-dismiss="modal">&times;</button>
          <h4><span class="glyphicon glyphicon-lock"></span> Enter Email/Mobile</h4>
        </div>
        <div class="modal-body" style="padding:40px 50px;">
          <form role="form">
            <div class="form-group">
              <label for="usrname"><span class="glyphicon glyphicon-user"></span> Username</label>
              <input type="email" class="form-control" id="usrname" placeholder="Enter email">
            </div>
             
              <button type="submit"  action= "/register" method= "POST"data-toggle="modal" data-dismiss="modal" data-target="#myModal4" class="btn btn-success btn-block"><span class="glyphicon glyphicon-off"></span> Submit</button>
 
          </form>
        </div>
        <div class="modal-footer" >
          <button type="submit" class="btn  btn-default pull-left" data-dismiss="modal"><span class="glyphicon glyphicon-google"></span> Cancel</button>

 
       
        </div>
      </div>
      
    </div>
  </div>
  
  
   <!-- myModal4 Modal -->
  <div class="modal fade" id="myModal4" role="dialog">
    <div class="modal-dialog">
    
      <!-- Modal content-->
      <div class="modal-content">
        <div class="modal-header" style="padding:10px 50px;">
          <button type="button" class="close" data-dismiss="modal">&times;</button>
          <h4><span class="glyphicon glyphicon-lock"></span> Enter OTP</h4>
        </div>
        <div class="modal-body" style="padding:40px 50px;">
          <form role="form" action="/Defynu/verifyOTP?">
             <div class="form-group">
              <label for="psw"><span class="glyphicon glyphicon-eye-open"></span> OTP</label>
              <input type="password" class="form-control" id="psw" placeholder="6-Digit OTP">
            </div>
              <button type="submit"  data-toggle="modal" data-dismiss="modal" data-target="#myModal5" class="btn btn-success btn-block"><span class="glyphicon glyphicon-off"></span> Submit</button>
 
          </form>
        </div>
        <div class="modal-footer" >
          <button type="submit" class="btn  btn-default pull-left" data-dismiss="modal"><span class="glyphicon glyphicon-google"></span> Cancel</button>

  
        </div>
      </div>
      
    </div>
  </div>
  
  
   <!-- myModal5 Modal -->
  <div class="modal fade" id="myModal5" role="dialog">
    <div class="modal-dialog">
    
      <!-- Modal content-->
      <div class="modal-content">
        <div class="modal-header" style="padding:10px 50px;">
          <button type="button" class="close" data-dismiss="modal">&times;</button>
          <h4><span class="glyphicon glyphicon-lock"></span> Set Password</h4>
        </div>
        <div class="modal-body" style="padding:40px 50px;">
          <form role="form">
           
            <div class="form-group">
              <label for="psw"><span class="glyphicon glyphicon-eye-open"></span>New Password</label>
              <input type="password" class="form-control" id="psw" placeholder="Enter password">
            </div>
             <div class="form-group">
              <label for="psw"><span class="glyphicon glyphicon-eye-open"></span> Confirm Password</label>
              <input type="password" class="form-control" id="psw" placeholder="Enter password">
            </div>
             
              <button type="submit" class="btn btn-success btn-block"><span class="glyphicon glyphicon-off"></span> Submit</button>
 
          </form>
        </div>
        <div class="modal-footer" >
          <button type="submit" class="btn  btn-default pull-left" data-dismiss="modal"><span class="glyphicon glyphicon-google"></span> Cancel</button>

  
        </div>
      </div>
      
    </div>
  </div>
  
  
   
  <%-- <!-- Modal -->
  <div class="modal fade" id="myModal1" role="dialog">
    <div class="modal-dialog">
    
      <!-- Modal content-->
      <div class="modal-content">
        <div class="modal-header" style="padding:10px 50px;">
          <button type="button" class="close" data-dismiss="modal">&times;</button>
          <h4><span class="glyphicon glyphicon-lock"></span> Login</h4>
        </div>
        <div class="modal-body" style="padding:40px 50px;">
          <form role="form">
            <div class="form-group">
              <label for="usrname"><span class="glyphicon glyphicon-user"></span> Username</label>
              <input type="email" class="form-control" id="usrname" placeholder="Enter email">
            </div>
            <div class="form-group">
              <label for="psw"><span class="glyphicon glyphicon-eye-open"></span> Password</label>
              <input type="password" class="form-control" id="psw" placeholder="Enter password">
            </div>
            <div class="checkbox">
              <label><input type="checkbox" value="" checked>Remember me</label>
            </div>
              <button type="submit" class="btn btn-success btn-block"><span class="glyphicon glyphicon-off"></span> Login</button>
 
          </form>
        </div>
        <div class="modal-footer" >
          <button type="submit" class="btn  btn-default pull-left" data-dismiss="modal"><span class="glyphicon glyphicon-google"></span> Cancel</button>

 
          <p>Not a member? <a href="#">Sign Up</a></p>
          <p>Forgot <a href="#">Password?</a></p>
        </div>
      </div>
      
    </div>
  </div>
  
  <!-- Modal -->
  <div class="modal fade" id="myModal2" role="dialog">
    <div class="modal-dialog">
    
      <!-- Modal content-->
      <div class="modal-content">
        <div class="modal-header" style="padding:10px 50px;">
          <button type="button" class="close" data-dismiss="modal">&times;</button>
          <h4><span class="glyphicon glyphicon-lock"></span> Login</h4>
        </div>
        <div class="modal-body" style="padding:40px 50px;">
          <form role="form">
            <div class="form-group">
              <label for="usrname"><span class="glyphicon glyphicon-user"></span> Username</label>
              <input type="email" class="form-control" id="usrname" placeholder="Enter email">
            </div>
            <div class="form-group">
              <label for="psw"><span class="glyphicon glyphicon-eye-open"></span> Password</label>
              <input type="password" class="form-control" id="psw" placeholder="Enter password">
            </div>
            <div class="checkbox">
              <label><input type="checkbox" value="" checked>Remember me</label>
            </div>
              <button type="submit" class="btn btn-success btn-block"><span class="glyphicon glyphicon-off"></span> Login</button>
 
          </form>
        </div>
        <div class="modal-footer" >
          <button type="submit" class="btn  btn-default pull-left" data-dismiss="modal"><span class="glyphicon glyphicon-google"></span> Cancel</button>

 
          <p>Not a member? <a href="#">Sign Up</a></p>
          <p>Forgot <a href="#">Password?</a></p>
        </div>
      </div>
      
    </div>
  </div>
  
  ---%>
  
 <script>

$(document).ready(function () {

    $('#openBtn').click(function () {
        $('#myModal').modal({
            show: true
        })
    });

        $(document).on('show.bs.modal', '.modal', function (event) {
            var zIndex = 1040 + (10 * $('.modal:visible').length);
            $(this).css('z-index', zIndex);
            setTimeout(function() {
                $('.modal-backdrop').not('.modal-stack').css('z-index', zIndex - 1).addClass('modal-stack');
            }, 0);
        });

         
});
</script>  
<!-- <script>
/* must apply only after HTML has loaded */
 $(document).ready(function () {
    $("#signup_form").on("submit", function(e) {
        var postData = $(this).serializeArray();
        var formURL = $(this).attr("action");
        $.ajax({
            url: formURL,
            type: "POST",
            data: postData,
            success: function(data, textStatus, jqXHR) {
            	 function1();
            },
            error: function(jqXHR, status, error) {
                console.log(status + ": " + error);
            }
        });
        e.preventDefault();
    });
     
    $("#submitForm").on('click', function() {
        $("#signup_form").submit();
    });
});
</script>  -->

<script>
function loadDoc(url) {
	var email = document.getElementById('usrname').value;
	var number = document.getElementById('number').value;
	var password = document.getElementById('psw').value;
	var url=url+"email="+email+"&password="+password+"&number="+number;
	
  var xhttp = new XMLHttpRequest();
  xhttp.onreadystatechange = function() {
    if (xhttp.readyState == 4 && xhttp.status == 200) {
    	
    	 document.getElementById("#myModal1").innerHTML = xhttp.responseText;
      
    }
  };
  xhttp.open("POST",url,true);
  xhttp.send();
}

</script>
<script>
function loadDoc1(url) {
	var otp = document.getElementById('otp').value;
	var url=url+"otp="+otp;
	
  var xhttp = new XMLHttpRequest();
  xhttp.onreadystatechange = function() {
   /*  if (xhttp.readyState == 4 && xhttp.status == 200) {
    	
    	 document.getElementById("#myModal2").innerHTML = xhttp.responseText;
      
    } */
  };
  xhttp.open("POST",url,true);
  xhttp.send();
}

</script>

 
     <section class="to-top">
        <div class="container">
            <div class="row">
                <div class="to-top-wrap">
                    <a href="#top" class="top"><i class="fa fa-angle-up"></i></a>
                </div>
            </div>
        </div>
    </section>

    <footer>
        <div class="container">
            <div class="row">
                <div class="col-md-7">
                    <div class="footer-links">
                        <ul class="footer-group">
                            <li><a href="#">Blog</a></li>
                             
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
    </footer>
    
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
    <script>
    (function(b,o,i,l,e,r){b.GoogleAnalyticsObject=l;b[l]||(b[l]=
    function(){(b[l].q=b[l].q||[]).push(arguments)});b[l].l=+new Date;
    e=o.createElement(i);r=o.getElementsByTagName(i)[0];
    e.src='//www.google-analytics.com/analytics.js';
    r.parentNode.insertBefore(e,r)}(window,document,'script','ga'));
    ga('create','UA-XXXXX-X','auto');ga('send','pageview');
    </script>
 
<script>
var myIndex = 0;
carousel();

function carousel() {
    var i;
    var x = document.getElementsByClassName("mySlides");
    for (i = 0; i < x.length; i++) {
       x[i].style.display = "none";
    }
    myIndex++;
    if (myIndex > x.length) {myIndex = 1}
    x[myIndex-1].style.display = "block";
    setTimeout(carousel, 2000); // Change image every 2 seconds
}
</script>
</body>
</html>