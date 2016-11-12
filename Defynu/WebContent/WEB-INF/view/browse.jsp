
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
     <link rel="stylesheet" href="/Defynu/resources/css/reset.css"> <!-- CSS reset -->
	 <link rel="stylesheet" href="/Defynu/resources/css/fabric.css"> <!-- Resource style -->
	  <link rel="stylesheet" href="/Defynu/resources/css/bootstrap.css"> <!-- BS reset -->
	<!--  <link rel="stylesheet" href="/resources/css/hello.css"> -->
   	<script src="resources/js/modernizr.js"></script><!--  Modernizr -->
    <script type="text/javascript" src="resources/js/modernizr-2.8.3-respond-1.4.2.min.js" ></script>

    <link rel="apple-touch-icon" href="apple-touch-icon.png">
    <link rel="icon" type="image/png" href="favicon-32x32.png" sizes="32x32" />
    <link rel="icon" type="image/png" href="favicon-16x16.png" sizes="16x16" />
  <link rel="shortcut icon" href="../favicon.ico"> 
    <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/font-awesome/4.3.0/css/font-awesome.min.css">
	<link rel="stylesheet" href="/resources/css/jquery.fancybox.css">
	<link rel="stylesheet" href="/resources/css/etline-font.css">
 
	  
   <script>
function setGetParameter(paramName, paramValue)
{
    var url = window.location.href;
    var hash = location.hash;
    url = url.replace(hash, '');
    if (url.indexOf(paramName + "=") >= 0)
    {
        var prefix = url.substring(0, url.indexOf(paramName));
        var suffix = url.substring(url.indexOf(paramName));
        suffix = suffix.substring(suffix.indexOf("=") + 1);
        suffix = (suffix.indexOf("&") >= 0) ? suffix.substring(suffix.indexOf("&")) : "";
        url = prefix + paramName + "=" + paramValue + suffix;
    }
    else
    {
    if (url.indexOf("?") < 0)
        url += "?" + paramName + "=" + paramValue;
    else
        url += "&" + paramName + "=" + paramValue;
    }
    window.location.href = url + hash;
}
</script>
 
 </head>
 
<body>
<header class="cd-main-header">
	
		<a href="/hello" class="cd-logo"><img src="resources/img/logobr.png" alt="Logo"> </a>
		
		<%-- <div class="cd-search is-hidden">
			<form action="#0">
				<input type="search" placeholder="Search...">
			</form>
		</div> <!-- cd-search -->
 --%>
		<a href="#0" class="cd-nav-trigger">Menu<span></span></a>

		<nav class="cd-nav">
			<ul class="cd-top-nav">
			<li><a  href="/design?body=1&outercollar=bc1&innercollar=1&outercuff=sb1&innercuff=1&button=1&buttonplacket=1&outsidefastening=1&pocket=sp1&price=800">Customize</a></li>
                                <li><a href="/design?body=1&outercollar=bc1&innercollar=1&outercuff=sb1&innercuff=1&button=1&buttonplacket=1&outsidefastening=1&pocket=sp1&price=800">Shirts</a></li>
                               <li><a href="/browses">FABRICS</a></li>
                                                
			
				<c:choose>
  <c:when test="${uname == null}">
   <li><button type="button" class="btn-link" data-toggle="modal" data-target="#myModal" data-backdrop="false" data-keyboard="false">Sign In / Sign Up</button></li> 
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
		
	</header> <!-- .cd-main-header -->


	<main class="cd-main-content">
		<nav class="cd-side-nav">
			<ul>
				<li class="cd-label">Main</li>
				
				<li  style="cursor:pointer"  class="has-children notifications active">
					<a href="#0">Line </a>
					
					<ul>
						<li><a href="/browses">All </a></li>
						<li  style="cursor:pointer" onclick="setGetParameter('line', 'Basic')"><a>Basic </a></li>
						<li  onclick="setGetParameter('line','Exclusive')"><a>Exclusive  </a></li>
						<li  onclick="setGetParameter('line','Premium')"><a >Premium </a></li>
					</ul>
				 
					<a href="#0">Category</a>
					
					<ul>
						<li><a href="/browses">All</a></li>
						<li  onclick="setGetParameter('category','Casual')"><a>Casual</a></li>
						<li  onclick="setGetParameter('category','Business')"><a class="selectable">Business </a></li>
						<li  onclick="setGetParameter('category','Classic')"><a class="selectable">Classic </a></li>	
								
					</ul>
			 
					<a href="#0">Weaving Types</a>
					
					<ul>
						<li><a href="/browses">All</a></li>
						<li  onclick="setGetParameter('weavetype','Poplin')"><a>Poplin</a></li>
						<li  onclick="setGetParameter('weavetype','Oxford')"><a class="selectable">Oxford </a></li>
						<li  onclick="setGetParameter('weavetype','Twill')"><a class="selectable">Twill </a></li>	
						<li  onclick="setGetParameter('weavetype','Plain')"><a class="selectable">Plain </a></li>	
						<li  onclick="setGetParameter('weavetype','Dobby')"><a class="selectable">Dobby </a></li>	
					</ul>
				</li>
			</ul>

			<!-- <ul>
				<li class="cd-label">Secondary</li>
				<li class="has-children bookmarks">
					<a href="#0">Bookmarks</a>
					
					<ul>
						<li><a href="#0">All Bookmarks</a></li>
						<li><a href="#0">Edit Bookmark</a></li>
						<li><a href="#0">Import Bookmark</a></li>
					</ul>
				</li>
				<li class="has-children images">
					<a href="#0">Images</a>
					
					<ul>
						<li><a href="#0">All Images</a></li>
						<li><a href="#0">Edit Image</a></li>
					</ul>
				</li>

				<li class="has-children users">
					<a href="#0">Users</a>
					
					<ul>
						<li><a href="#0">All Users</a></li>
						<li><a href="#0">Edit User</a></li>
						<li><a href="#0">Add User</a></li>
					</ul>
				</li>
			</ul>
 -->
			<ul>
				<!-- <li class="cd-label">Action</li>
				<li class="action-btn"><a href="#0">+ Button</a></li> -->
			</ul>
		</nav>

	<section class="blog text-center">
	<div><br><br>
	</div>
	
		<div class="content-wrapper">
			 <div class="container-fluid">
			
            <div class="row"> 
            
             <c:forEach items="${fabric}" var="value" varStatus="status">
             <div class="col-md-4">
             
                    <article class="blog-post">
                        <figure>
                            <!-- <a href="img/blog-img-01.jpg" class="single_image"> -->
                                <div class="blog-img-wrap">
                                    <div class="overlay">
                                        <i class="fa fa-search"></i>
                                    </div>
                                    <img src="resources/fabric/${value.getSl()}.jpg" alt="Sedna blog image"/>
                                    
                                </div>
                            
                            <figcaption>
                            <p>100% Cotton,${value.getWeave()}	</p>
                            <h5><a href="/design?body=${value.getSl()}&outercollar=bc${value.getSl()}&innercollar=${value.getSl()}&outercuff=sb${value.getSl()}&innercuff=${value.getSl()}&button=${value.getSl()}&buttonplacket=${value.getSl()}&outsidefastening=${value.getSl()}&price=${value.getPrice()}&pocket=sp${value.getSl()}" class="blog-category" data-toggle="tooltip" data-placement="top" data-original-title="See more posts">${value.getName()}&nbsp;&nbsp;&nbsp;Customize</a></h5>
                           <span class="price"><i class="fa fa-inr"></i>&nbsp;${value.getPrice()}<span style="color:#009900">(30% Discount on Checkout)</span>
                            </figcaption>
                        </figure>
                    </article>
                    
                </div>
                	
                	</c:forEach>
                	
                	</div>
                	
               </div>
                <h5>${message}</h5>	
            </div>
                
		</section>
		</div> <!-- .content-wrapper -->
	</main> <!-- .cd-main-content -->
	
	
	
	<!--signin myModal -->
   <div class="modal fade" id="myModal" role="dialog" data-keyboard="false" data-backdrop="false">
    <div class="modal-dialog">
    
      <!-- Modal content-->
      <div class="modal-content"  >
        <div class="modal-header" style="padding:10px 50px;">
          <button type="button" class="close" data-dismiss="modal">&times;</button>
          <h4><span class="glyphicon glyphicon-lock"></span> Login</h4>
        </div>
        <div class="modal-body" style="padding:40px 50px;">
          <form action="/hello" method="POST" role="form" >
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
  <div class="modal fade" id="myModal1" role="dialog" data-keyboard="false" data-backdrop="false">
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
  <div class="modal fade" id="myModal2" role="dialog" data-keyboard="false" data-backdrop="false" >
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
  <div class="modal fade" id="myModal3" role="dialog" data-keyboard="false" data-backdrop="false">
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
  <div class="modal fade" id="myModal4" role="dialog" data-keyboard="false" data-backdrop="false">
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
  <div class="modal fade" id="myModal5" role="dialog" data-keyboard="false" data-backdrop="false">
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

</script>
<!-- <script src="resources/js/jquery-2.1.4.js"></script> -->
<script src="resources/js/jquery.menu-aim.js"></script>
<script src="resources/js/main.js"></script> <!-- Resource jQuery -->

<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
    <script>window.jQuery || document.write('<script src="resources/js/jquery-1.11.2.min.js"><\/script>')</script>
    <script src="resources/js/retina.js"></script>
    <script src="resources/js/jquery.fancybox.pack.js"></script>
    <script src="resources/js/bootstrap.min.js"></script>
    <script src="resources/js/scripts.js"></script>
    <script src="resources/js/classie.js"></script>
    <script src="resources/js/jquery.waypoints.min.js"></script>
    <!-- Google Analytics: change UA-XXXXX-X to be your site's ID. -->
    <script>
</body>
</html>