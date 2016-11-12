
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
            <div id="bodybg"><img src="resources/body/bodysbg.png"></div>
			<div id="body"><img src="resources/body/bodys${shirt}.png"></div>
			<div id="outercuff"><img src="resources/outercuff/outercuffs${OuterCuff}.png"></div>
			<div id="innercuff"><img src="resources/innercuff/innercuffs${InnerCuff}.png"></div>
			<div id="outsidefastening"><img src="resources/outsidefastening/outsidefastenings${OutsideFastening}.png"></div>
			<div id="innercollar"><img src="resources/innercollar/innercollars${InnerCollar}.png"></div>
			<div id="outercollar"><img src="resources/outercollar/outercollars${OuterCollar}.png"></div>
			<div id="button"><img src="resources/button/buttons${Button}.png"></div>
			<%-- <div id="pocket"><img src="resources/pocket/pockets${Pocket}.png"></div> --%>
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
		<p><i><b><span style="color:#000;">INR:${Price}&nbsp;&nbsp;(30% Discount on Checkout)</span></b></i></p>
		<%-- <p><i><b><span style="color:#000;">Measurement Profile:${pofile}&nbsp;&nbsp;</span></b></i></p> --%>
		<button type="button" class="btn btn-success" data-toggle="modal"  data-target="#myMeasurementModal">
  Update Measurement
</button>	
		</div>
		
                    </figure>   
                    </article>
                </div>
                
                <!-- Modal -->

<div class="modal fade" id="myMeasurementModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
<form id="brandMeasurement" name="brandMeasurement" action="/defaultmeasurement" method = "GET">	
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
        <h4 class="modal-title" id="myModalLabel">Measurement Profile</h4>
      </div>
      <div class="modal-body">
	  <h5>Standard Size:</h5>
	  	<button type="button" onclick="updateMeasurement('/defaultmeasurement?neck=37&chest=87&hip=80&waist=75&seat=87&length=69&shoulder=42&arm=6&wrist=16&profile=XS&object=${status.index}')" class="btn btn-primary btn-xs">XS</button>&nbsp;
        <button type="button" onclick="updateMeasurement('/defaultmeasurement?neck=38&chest=92&hip=89&waist=83&seat=94&length=72&shoulder=44&arm=65&wrist=17&profile=S&object=${status.index}')"class="btn btn-primary btn-xs">S</button>&nbsp;
		<button type="button" onclick="updateMeasurement('/defaultmeasurement?neck=41&chest=97&hip=95&waist=91&seat=100&length=73&shoulder=48&arm=68&wrist=18&profile=M&object=${status.index}')"class="btn btn-primary btn-xs">M</button>&nbsp;
		<button type="button" onclick="updateMeasurement('/defaultmeasurement?neck=43&chest=105&hip=104&waist=99&seat=108&length=76&shoulder=50&arm=69&wrist=19&profile=L&object=${status.index}')"class="btn btn-primary btn-xs">L</button>&nbsp;
		<button type="button" onclick="updateMeasurement('/defaultmeasurement?neck=47&chest=121&hip=119&waist=115&seat=124&length=81&shoulder=58&arm=73&wrist=21&profile=XXL&object=${status.index}')"class="btn btn-primary btn-xs">XXL</button>&nbsp;
		<button type="button" class="btn btn-success btn-xs" data-toggle="modal" data-target="#myModal1">Size Chart</button>
		
		<hr>
		<h5>Best Suited Sizes:</h5>
		
		
		 <form  action="" method="get">
  <input type="hidden" name="neck" value="00">
  <input type="hidden" name="chest" value="00">
  <input type="hidden" name="hip" value="00">
  <input type="hidden" name="waist" value="00">
  <input type="hidden" name="seat" value="00">
  <input type="hidden" name="length" value="00">
  <input type="hidden" name="shoulder" value="00">
  <input type="hidden" name="arm" value="00">
  <input type="hidden" name="wrist" value="00">
 
  <input class="form-control" list="brand" name="profile" placeholder="brand">
  <datalist   id="brand">
    <option value="Peter England">
    <option value="Arrow">
    <option value="Van Heusen">
    <option value="Raymond">
    <option value="BlackBerrys">
    <option value="Parx">
    <option value="John Players">
    <option value="Allen Solly">
    <option value="Louis Philippe">
    <option value="ParkAvenue">
  </datalist><br>
  <input class="form-control" list="brandsize" name="type" placeholder="size">
  <datalist id="brandsize">
    <option value="XS">
    <option value="S">
    <option value="M">
    <option value="L">
    <option value="XL">
  </datalist><br>
  
  <input class="btn btn-primary btn-sm" type="button" value="Update"
					onclick="updateBrand('/defaultmeasurement?neck=00&chest=00&hip=00&waist=75&seat=87&length=69&shoulder=42&arm=6&wrist=16&object=${status.index}')">
</form>
</form>
		 <hr>
		<!-- <h5>Size Me:</h5>
		
		<button type="submit" class="btn btn-primary btn-xs" formaction="/measurement">Add Your Body Measuremensts</button>&nbsp;
		 -->
					
<%-- <h4>${value.profile}</h4> --%>
	
	 </div>
		

      <div class="modal-footer">
        <button type="button" class="btn btn-default btn-xs" data-dismiss="modal">Close</button>
        <!-- <button type="button" class="btn btn-primary btn-xs">Save changes</button> -->
      </div>
    </div>
  </div>

</div>



<!-- Modal -->
  <div class="modal fade" id="myModal1"tabindex="0" role="dialog" aria-labelledby="myModalLabel" >
    <div class="modal-dialog">
    
      <!-- Modal content-->
      <div class="modal-content">
        <div class="modal-header">
          <button type="button" class="close" data-dismiss="modal">&times;</button>
          <h4 class="modal-title">Size Chart</h4>
        </div>
        <div class="modal-body">
          <!-- Modal content-->
     <table id="t01">
  <tr>
  <th> Name</th>
<th><button onclick="updateMeasurement('/defaultmeasurement?neck=37&chest=87&hip=80&waist=75&seat=87&length=69&shoulder=42&arm=6&wrist=16&profile=XS&object=${status.index}')" class="btn btn-default">XS</button></th>
<th><button onclick="updateMeasurement('/defaultmeasurement?neck=38&chest=92&hip=89&waist=83&seat=94&length=72&shoulder=44&arm=65&wrist=17&profile=S&object=${status.index}')" class="btn btn-default">S</button></th>
<th><button onclick="updateMeasurement('/defaultmeasurement?neck=41&chest=97&hip=95&waist=91&seat=100&length=73&shoulder=48&arm=68&wrist=18&profile=M&object=${status.index}')" class="btn btn-default">M</button></th>
<th><button onclick="updateMeasurement('/defaultmeasurement?neck=43&chest=105&hip=104&waist=99&seat=108&length=76&shoulder=50&arm=69&wrist=19&profile=L&object=${status.index}')" class="btn btn-default">L</button></th>
<th><button onclick="updateMeasurement('/defaultmeasurement?neck=45&chest=113&hip=112&waist=107&seat=116&length=78&shoulder=54&arm=70&wrist=20&profile=XL&object=${status.index}')" class="btn btn-default">XL</button></th>
<th><button onclick="updateMeasurement('/defaultmeasurement?neck=47&chest=121&hip=119&waist=115&seat=124&length=81&shoulder=58&arm=73&wrist=21&profile=XXL&object=${status.index}')" class="btn btn-default">XXS</button></th>

  </tr>
  <tr><td>Neck</td>
       <td>37 cm</td>
        <td>38 cm</td>
        <td>41 cm</td>
        <td>43 cm</td>
        <td>45 cm</td>
        <td>47 cm</td>

</tr>

  <tr><td>Chest</td> 
<td>87 cm</td>
<td>92 cm</td>
<td>97 cm</td>
<td>105 cm</td>
<td>113 cm</td>
<td>121 cm</td>
</tr>
   <tr><td>Waist</td>
<td>75 cm</td>
<td>83 cm</td>
<td>91 cm</td>
<td>99 cm</td>
<td>107 cm</td>
<td>115 cm</td>
</tr>
   <tr><td>Hip</td>
<td>80 cm</td>
<td>89 cm</td>
<td>95 cm</td>
<td>104 cm</td>
<td>112 cm</td>
<td>119 cm</td>
</tr>
   <tr><td>Seat</td>
<td>87 cm</td>
<td>94 cm</td>
<td>100 cm</td>
<td>108 cm</td>
<td>116 cm</td>
<td>124 cm</td>
</tr>
   <tr><td>Shirt length</td>
<td>69 cm</td>
<td>72 cm</td>
<td>73 cm</td>
<td>76 cm</td>
<td>78 cm</td>
<td>81 cm</td>
</tr>
   <tr> <td>Shoulder width</td>
<td>42 cm</td>
<td>44 cm</td>
<td>48 cm</td>
<td>50 cm</td>
<td>54 cm</td>
<td>58 cm</td>
</tr>
   <tr><td>Arm length</td>
<td>64 cm</td>
<td>65 cm</td>
<td>68 cm</td>
<td>69 cm</td>
<td>70 cm</td>
<td>73 cm</td>
</tr>
    <tr><td>Wrist</td>
<td>16 cm</td>
<td>17 cm</td>
<td>18 cm</td>
<td>19 cm</td>
<td>20 cm</td>
<td>21 cm</td>
</tr>
</table>
    
        </div>
        <div class="modal-footer">
          <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
        </div>
      </div>
      
    </div>
  </div>
  





<!-- add measurement tag end -->
                
                
                <div class="col-md-4">
                    <article class="blog-post">
                        <figure>
                           
		<div  id="form-btn">
		<br><br>
		<form align="right" action="/change?body=${shirt}&outercollar=${OuterCollar}&innercollar=${InnerCollar}&outercuff=${OuterCuff}&innercuff=${InnerCuff}&button=${Button}&buttonplacket=${ButtonPlacket}&outsidefastening=${OutsideFastening}&price=${Price}&pocket=${Pocket}&orderid=${order_id}" method="post" target="_self">

  <input type="submit" style="background-color:#000"  class="btn btn-primary btn-sm" value="CHANGE"> 
</form>

<form align="right" action="/Defynu/design?body=1&outercollar=bc1&innercollar=1&outercuff=sb1&innercuff=1&button=1&buttonplacket=1&outsidefastening=1&pocket=sp1&price=800" method="get" target="_self">

  <input type="submit" style="background-color:#000"  class="btn btn-primary btn-sm" value="CONTINUE SHOPPING">
</form>
<form align="right" action="/checkout" method="GET" target="_self">

  <input type="submit"     class="btn btn-success btn-sm" value="CHECKOUT" align="right">
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
   <div class="modal fade" id="myModal" role="dialog" data-keyboard="false" data-backdrop="static">
    <div class="modal-dialog">
    
      <!-- Modal content-->
      <div class="modal-content"  >
        <div class="modal-header" style="padding:10px 50px;">
          <button type="button" class="close" data-dismiss="modal">&times;</button>
          <h4><span class="glyphicon glyphicon-lock"></span> Login</h4>
        </div>
        <div class="modal-body" style="padding:40px 50px;">
          <form action="/Defynu/hello?source=atc" method="POST" role="form" >
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
              <button type="submit" class="btn btn-success btn-block"><span class="glyphicon glyphicon-off"></span> Login</button>
 
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
  <div class="modal fade" id="myModal1" role="dialog" data-keyboard="false" data-backdrop="static">
    <div class="modal-dialog">
    
      <!-- Modal content-->
      <div class="modal-content" id="signup">
        <div class="modal-header" style="padding:10px 50px;">
          <button type="button" class="close" data-dismiss="modal">&times;</button>
          <h4><span class="glyphicon glyphicon-lock"></span> Sign UP</h4>
        </div>
        <div class="modal-body" style="padding:40px 50px;">
          <form role="form" action="/register" method="post">
            <div class="form-group">
              <label for="usrname"><span class="glyphicon glyphicon-user"></span> Username</label>
              <input type="email" class="form-control" id="newUserEmail" placeholder="Enter email" maxlength="50"><span id="userNameError" style="color: red;  font-weight: bold;" ></span>
            </div>
            <div class="form-group">
              <label for="usrname"><span class="glyphicon glyphicon-user"></span> Mobile</label>
              <input type="number" class="form-control" id="phoneNumber" placeholder="Enter number" maxlength="10"><span id="mobileNumberError" style="color: red;  font-weight: bold;"></span>
            </div>
            <div class="form-group">
              <label for="psw"><span class="glyphicon glyphicon-eye-open"></span> Password</label>
              <input type="password" class="form-control" id="userPassword" placeholder="Enter password" maxlength="12"><span id="userError" style="color: red;  font-weight: bold;"></span>
            </div>
               <button  type="button" onclick="newUserRegister('/register?')" id="registerBtn" class="btn btn-success btn-block"><span class="glyphicon glyphicon-off" ></span> Sign UP</button>
 
          </form>
        </div>
        <div class="modal-footer" >
          <button type="submit" class="btn  btn-default pull-left" data-dismiss="modal"><span class="glyphicon glyphicon-google"></span> Cancel</button>

 
          
        </div>
      </div>
      
    </div>
  </div>
  
  
   <!--myModal2 Modal -->
  <div class="modal fade" id="myModal2" role="dialog" data-keyboard="false" data-backdrop="static" >
    <div class="modal-dialog">
    
      <!-- Modal content-->
      <div class="modal-content">
        <div class="modal-header" style="padding:10px 50px;">
          <button type="button" class="close" data-dismiss="modal">&times;</button>
          <h4><span class="glyphicon glyphicon-lock"></span> Enter OTP</h4>
        </div>
        <div class="modal-body" style="padding:40px 50px;">
          <form role="form" name="verifyOTPForm" id="verifyOTPForm" action="/hello?" method="GET">
             
            <div class="form-group">
              <label for="psw"><span class="glyphicon glyphicon-eye-open"></span> OTP</label>
              <input type="password" class="form-control" id="newRegisterOTP" placeholder="6-Digit OTP" maxlength="4">
            </div>
             
             <!--  <button type="submit" class="btn btn-success btn-block"><span class="glyphicon glyphicon-off"></span> Submit</button>
  -->
  <button type="button" onclick="loadDoc1('/verifyNewUserOTP?')" class="btn  btn-default pull-left" ><span class="glyphicon glyphicon-google"></span>Verify</button>
          </form>
        </div>
        <div class="modal-footer" >
          <button type="submit" class="btn  btn-default pull-left" data-dismiss="modal"><span class="glyphicon glyphicon-google"></span> Cancel</button>

 
         
        </div>
      </div>
      
    </div>
  </div>
  
   <!-- myModal3 Modal -->
  <div class="modal fade" id="myModal3" role="dialog" data-keyboard="false" data-backdrop="static">
    <div class="modal-dialog">
    
      <!-- Modal content-->
      <div class="modal-content">
        <div class="modal-header" style="padding:10px 50px;">
          <button type="button" class="close" data-dismiss="modal">&times;</button>
          <h4><span class="glyphicon glyphicon-lock"></span> Enter your registered Email ID</h4>
        </div>
        <div class="modal-body" style="padding:40px 50px;">
          <form role="form">
            <div class="form-group">
              <label for="usrname"><span class="glyphicon glyphicon-user"></span> Username</label>
              <input type="email" class="form-control" id="userEmail" placeholder="Enter email" maxlength="50"><span id="emaiIdError" style="color: red;  font-weight: bold;" ></span>
            </div>
             
              <button type="button"  onclick="forgotPassword('/forgotPassword?')" class="btn btn-success btn-block"><span class="glyphicon glyphicon-off"></span> Submit</button>
 
          </form>
        </div>
        <div class="modal-footer" >
          <button type="submit" class="btn  btn-default pull-left" data-dismiss="modal"><span class="glyphicon glyphicon-google"></span> Cancel</button>

 
       
        </div>
      </div>
      
    </div>
  </div>
  
  
   <!-- myModal4 Modal -->
  <div class="modal fade" id="myModal4" role="dialog" data-keyboard="false" data-backdrop="static">
    <div class="modal-dialog">
    
      <!-- Modal content-->
      <div class="modal-content">
        <div class="modal-header" style="padding:10px 50px;">
          <button type="button" class="close" data-dismiss="modal">&times;</button>
          <h4><span class="glyphicon glyphicon-lock"></span> Enter OTP</h4>
        </div>
        <div class="modal-body" style="padding:40px 50px;">
          <form id="varifyOTP" name="varifyOTP" method ="post" action="/verifyOTP?">
             <div class="form-group">
              <label for="psw"><span class="glyphicon glyphicon-eye-open"></span> OTP</label>
              <input type="password" class="form-control" id="verifyOTP" maxlength="4" placeholder="4-Digit OTP "><span id="validOTPError" style="color: red;  font-weight: bold;" ></span>
            </div>
              <button type="button" onclick="callSubmit('/verifyOTP?')"  data-toggle="modal" class="btn btn-success btn-block"><span class="glyphicon glyphicon-off"></span> Submit</button>
 
          </form>
        </div>
        <div class="modal-footer" >
          <button type="submit" class="btn  btn-default pull-left" data-dismiss="modal"><span class="glyphicon glyphicon-google"></span> Cancel</button>

  
        </div>
      </div>
      
    </div>
  </div>
  
  
   <!-- myModal5 Modal -->
  <div class="modal fade" id="myModal5" role="dialog" data-keyboard="false" data-backdrop="static">
    <div class="modal-dialog">
    
      <!-- Modal content-->
      <div class="modal-content">
        <div class="modal-header" style="padding:10px 50px;">
          <button type="button" class="close" data-dismiss="modal">&times;</button>
          <h4><span class="glyphicon glyphicon-lock"></span> Set Password</h4>
        </div>
        <div class="modal-body" style="padding:40px 50px;">
          <form id="resetPassword" name="resetPassword" method ="post" action="/resetPwd?" >
           
            <div class="form-group">
              <label for="psw"><span class="glyphicon glyphicon-eye-open"></span>New Password</label>
              <input type="password" class="form-control" name="newPassword" id="newPassword" placeholder="Enter password" maxlength="12">
            </div>
             <div class="form-group">
              <label for="psw"><span class="glyphicon glyphicon-eye-open"></span> Confirm Password</label>
              <input type="password" class="form-control" name="confirmPassword" id="confirmPassword" placeholder="Enter confirm password" maxlength="12">
            </div>
             <span id="passwordMismatch" style="color: red;  font-weight: bold;" ></span>
              <button type="button" onclick="callReset()" class="btn btn-success btn-block"><span class="glyphicon glyphicon-off"></span> Submit</button>
 
          </form>
        </div>
        <div class="modal-footer" >
          <button type="submit" class="btn  btn-default pull-left" data-dismiss="modal"><span class="glyphicon glyphicon-google"></span> Cancel</button>

  
        </div>
      </div>
      
    </div>
  </div>
  
  
  <script>

$(document).ready(function () {

    $(window).load(function(){
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

function newUserRegister(url) {
	
	var email = document.getElementById('newUserEmail').value;
	var number = document.getElementById('phoneNumber').value;
	var password = document.getElementById('userPassword').value;
	
	if(dataFieldValidation()){
		
		var url=url+"email="+email+"&password="+password+"&number="+number;
		
		  var xhttp = new XMLHttpRequest();
		  xhttp.onreadystatechange = function() {
			  //alert(xhttp.readyState);
			  //alert( xhttp.status);
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


function forgotPassword(url) {
	
	var email = document.getElementById('userEmail').value;
	document.getElementById('emaiIdError').innerHTML='';
	
	if(isValidEmail(email)){
		
		var url=url+"email="+email;
		
		  var xhttp = new XMLHttpRequest();
		  xhttp.onreadystatechange = function() {
		    if (xhttp.readyState == 4 && xhttp.status == 200) {
		    	//alert(xhttp.readyState);
		    	//alert(xhttp.status);
		    	
		    	$('#myModal4').modal('show');
		      
		    }else if(xhttp.readyState == 3 && xhttp.status != 200){
		    	//alert(xhttp.readyState);
		    	//alert(xhttp.status);
		    	document.getElementById('emaiIdError').innerHTML='Invalid email id';
		    	//$('#myModal4').modal('show');
		    }else{
		    	//alert(xhttp.readyState);
		    	//alert(xhttp.status);
		    }
		  };
		  xhttp.open("POST",url,true);
		  xhttp.send();
	}else{
		document.getElementById('emaiIdError').innerHTML='Invalid email id';
	}
	
  
}

function callSubmit(url){
	var otp = document.getElementById('verifyOTP').value;
	var url=url+"verifyOTP="+otp;
	document.getElementById('validOTPError').innerHTML='';
	if(otp.length == 4 && !isNaN(otp )){
		  var xhttp = new XMLHttpRequest();
		  xhttp.onreadystatechange = function() {
			  //alert(xhttp.readyState);
			  //alert(xhttp.status);
		    if (xhttp.readyState == 4 && xhttp.status == 200) {
		    	
		    	$('#myModal5').modal('show');
		      
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

function callReset(){

	var newPas = document.getElementById('newPassword').value;
	var conPas = document.getElementById('confirmPassword').value;
	
	document.getElementById('passwordMismatch').innerHTML= '';
	
	if("" == newPas || "" == conPas){
		document.getElementById('passwordMismatch').innerHTML='Enter valid password';
		
	}else if(newPas != conPas){
		document.getElementById('passwordMismatch').innerHTML='New password and confirm password should be same';
	}else{
		document.resetPassword.submit();
	}
	
}

</script>
<script>
function loadDoc1(url) {
	var otp = document.getElementById('newRegisterOTP').value;
	var url=url+"newRegisterOTP="+otp;
	
  if(otp.length == 4 && !isNaN(otp )){
	  var xhttp = new XMLHttpRequest();
	  xhttp.onreadystatechange = function() {
		  //alert(xhttp.readyState);
		  //alert(xhttp.status);
	    if (xhttp.readyState == 4 && xhttp.status == 200) {
	    	
	    	//$('#myModal5').modal('show');
	    	//response.sendRedirect("/hello") 
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

$('#openBtn').on('submit', function(e) {

    e.preventDefault();

    var form = $(this);
    var url = form.prop('action');
    
    $.ajax({
        type: "post",
        url: url,
        data: form.serialize(),
        dataType: 'json',
        success: function(json) {
            alert(json);

        },
        error: function(json) {
            alert(json);
        },
    });

});

function updateMeasurement(url){

	  var xhttp = new XMLHttpRequest();
	  
	  xhttp.onreadystatechange = function() {
	    if (xhttp.readyState == 4 && xhttp.status == 200) {
	    	
	    	$('#myMeasurementModal').modal('hide');
	    	$('#myModal1').modal('hide');
	    	
	      
	    }else if(xhttp.readyState == 4 && xhttp.status == 403){
	    	$('#myModal').modal('show');
	    }
	  };
	  xhttp.open("GET",url,true);
	  xhttp.send();

}

function updateBrand(url){

	  var xhttp = new XMLHttpRequest();
	  var brands = document.getElementsByName('profile').item(0).value;
		var type = document.getElementsByName('type').item(0).value;
		var url1=url+"&profile="+brands+"&type="+type;
	  xhttp.onreadystatechange = function() {
	    if (xhttp.readyState == 4 && xhttp.status == 200) {
	    	
	    	$('#myMeasurementModal').modal('hide');
	    	$('#myModal1').modal('hide');
	      
	    }else if(xhttp.readyState == 4 && xhttp.status == 403){
	    	$('#myModal').modal('show');
	    }
	  };
	  xhttp.open("GET",url1,true);
	  xhttp.send();

}



</script>
  
<!--  <script>

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
<script>
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
</script> 

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

</script> -->

 
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
                        <p>Copyright Â© 2016 <a href="#">Bespokart <span class="fa fa-heart pulse2"></span></a><br>
                         </div>
                </div>
                <div class="social-share">
                    <p>Share Bespokart with your friends</p>
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