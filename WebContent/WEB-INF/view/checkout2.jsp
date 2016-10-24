
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
    <spring:url value="/resources/css/cout.css" var="coutCSS" />
    <spring:url value="/resources/css/queries.css" var="queriesCSS" />
	<spring:url value="http://maxcdn.bootstrapcdn.com/font-awesome/4.3.0/css/font-awesome.min.css" var="font-awesome.minCSS" />
	<link href="${normalizeCSS}" rel="stylesheet" />
	<link href="${bootstrapCSS}" rel="stylesheet" />
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
							    <li><a href="/Defynu/design?body=1&outercollar=bc1&innercollar=1&outercuff=sb1&innercuff=1&button=1&buttonplacket=1&outsidefastening=1&pocket=sp1&price=800">Customize</a></li>
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
        
	<h1>jjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjj${list}</h1>
	<table>
 <c:forEach items="${list}" var="value" varStatus="status">
  <section  class="order-list">
 
		<div id="background">
		
		 <div id="body"><img src="resources/body/bodys${value.body}.png"></div>
		    <div id="innercollar"><img src="resources/innercollar/innercollars${value.innercollar}.png"></div>
 			<div id="outercollar"><img src="resources/outercollar/outercollars${value.outercollar}.png"></div>
			<div id="outsidefastening"><img src="resources/outsidefastening/outsidefastenings${value.outsidefastening}.png"></div>
			<div id="button"><img src="resources/button/buttons${value.button}.png"></div>
			<div id="innercuff"><img src="resources/innercuff/innercuffs${value.innercuff}.png"></div>
 			<div id="outercuff"><img src="resources/outercuff/outercuffs${value.outercuff}.png"></div>
 			<div id="pocket"><img src="resources/pocket/pockets${value.pocket}.png"></div>
 			
 			
</div>
		
 			<div id="shirt-details">
  <h3>Details</h3>
    <button   data-toggle="popover" class="btn btn-primary btn-sm" data-placement="bottom" data-trigger="focus" data-html="true"
    data-content="Body: ${value.body}<br>Cuff: ${value.outercuff}<br>Placket: ${value.outsidefastening}<br>Outercollar:${value.outercollar}<br>Innercollar:${value.innercollar}">Click me</button>
 </div>
  
			
		<!-- 
			<button id="measurement-btn" type="button" class="btn btn-success" data-toggle="modal" data-id=${status.index} data-target="#${status.index}myModal">
  add measurement
</button>	
 -->
			

 <div id="qty" >
		<form   action="/CottonCaress/checkout" method="POST">
          Qty: <input  class="number"  type="number" min="0" max="8" name= qty value= ${value.qty}><br>
          		<input type="hidden" name= object value= ${status.index}>
			
			
  <button class="btn btn-primary btn-sm" id="update" type="submit" formmethod="POST" formaction="/CottonCaress/checkout">update</button>
</form>
	</div>
			<span id="price" style="color:black;font-weight:bold">INR:${value.price*value.qty}</span>
		 
	 
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
 --%>			
	</c:forEach>
	
	<h3>hhhh${loggedInUser}</h3>
	<c:set var="uname"  value="${loggedInUser}"/>
	<c:choose>
  <c:when test="${uname == null}">
    <table>
    <div>
	<form action="/Defynu/confrimorder" method="GET">

  <div><input type="submit" style="float:right" class="btn btn-success btn-lg btn-margin-right" value="test" align="right"></div>
</form>
</div>
 </table>
  </c:when>
  
<c:otherwise>
   <table>
	<form align="right" action="/Defynu/confrimorderlogin" method="GET">

  <input type="submit"   style="float:right" class="btn btn-success btn-lg btn-margin-right" value="test" align="right">
</form>

 </table>
  </c:otherwise>
</c:choose>

			

	
<%--     <section class="sign-up section-padding text-center" id="download">
        <div class="container">
            <div class="row">
                <div class="col-md-6 col-md-offset-3">
                    <h3>Get started with DefynU</h3>
                    <p>Grab your shirt today, exclusively from DefynU</p>
                    <p style:font>${message}</p>
                    <form class="signup-form" action="/hello" method="POST" role="form">
                        <div class="form-input-group">
                            <i class="fa fa-envelope"></i><input type="text" name="email" id="email" class="formfield long" placeholder="Enter your email" required>
                        </div>
                        <div class="form-input-group">
                            <i class="fa fa-lock"></i><input type="password" name="password" id="password" class="formfield small" placeholder="Enter your password" required>
                        </div>
                        <button type="submit" class="btn-fill sign-up-btn">Sign in </button>
						<button type="submit" formaction="/register" class="btn-fill-new sign-up-btn">Sign up </button>
						
                    </form>
                </div>
            </div>
        </div>
    </section><h1>jjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjj${list}</h1>
    <!-- checkout form -->
    
    <section>
    
    <div class="jquery-script-ads" align="center">
    <script type="text/javascript">
  
google_ad_client = "ca-pub-2783044520727903";
/* jQuery_demo */
google_ad_slot = "2780937993";
google_ad_width = 728;
google_ad_height = 90;

</script>
<script type="text/javascript"
src="http://pagead2.googlesyndication.com/pagead/show_ads.js">
</script></div>
      <main>
       <!--  <h1>jQuery Formalize Plugin Demo</h1>
        <div>
          <span id="btn-sectional" class="btn-std disabled">Section-by-section navigation</span>
         <span id="btn-global" class="btn-std">Global navigation</span> 
        </div> -->
        <form id="sectional">
          <!-- <p class="form-help-text">
            By default, every section has its own navigation element; the nav is shown and hidden along with the rest of the section.
          </p> -->
          <fieldset>
            <legend>Login ID</legend>
            <div class="form-section">
             <!--  <p class="form-help-text">
                This section has a required field. If you leave it blank, it will throw an error and not let you proceed to the next section.
              </p> -->
              <div class="field required-field">
                <label for="sectional-text-1">Email</label>
                <input name="text1" id="sectional-text-1" type="text" required>
              </div>
              <div class="field required-field">
               <label for="sectional-text-1">Password</label>
                <input name="text1" id="sectional-text-1" type="text" required>
              </div>
              <!-- <div class="field">
                <label for="sectional-text-3">Text 3</label>
                <input name="text3" id="sectional-text-3" type="text">
              </div> -->
              <nav class="form-section-nav">
                <span class="btn-std form-nav-next">Next</span>
              </nav>
            </div>
          </fieldset>
          <fieldset>
            <legend>Delivery Address</legend>
            <div class="form-section">
              <div class="field">
                <label for="sectional-text-4">Name</label>
                <input name="text4" id="sectional-text-4" type="text">
              </div>
              <div class="field">
                <label for="sectional-text-5">PIN Code</label>
                <input name="text5" id="sectional-text-5" type="text">
              </div>
              <div class="field">
                <label for="sectional-text-6">Address</label>
                <input name="text6" id="sectional-text-6" type="text">
              </div>
               <div class="field">
                <label for="sectional-text-6">Landmark</label>
                <input name="text6" id="sectional-text-6" type="text">
              </div>
              
               <div class="field">
                <label for="sectional-text-6">Phone</label>
                <input name="text6" id="sectional-text-6" type="text">
              </div>
              <nav class="form-section-nav">
                <span class="btn-secondary form-nav-prev">Prev</span>
                <span class="btn-std form-nav-next">Next</span>
              </nav>
            </div>
          </fieldset>
          
          <fieldset>
            <legend>Payment Method</legend>
            <div class="form-section">
              <div class="field">
                <label for="sectional-text-10">Text 10</label>
                <input name="text10" id="sectional-text-10" type="text">
              </div>
              <div class="field">
                <label for="sectional-text-11">Text 11</label>
                <input name="text11" id="sectional-text-11" type="text">
              </div>
              <div class="field">
                <label for="sectional-text-12">Text 12</label>
                <input name="text12" id="sectional-text-12" type="text">
              </div>
              <nav class="form-section-nav">
                <span class="btn-secondary form-nav-prev">Prev</span>
                <button><a href="/Defynu/buy"><span>Submit</span></a></button> 
              </nav>
            </div>
          </fieldset>
        </form>
        
      </main>
      
       <script type="text/javascript">
        $(document).ready(function(){
          $('#sectional').formalize({
            timing: 300,
            nextCallBack: function(){
              if (validateEmpty($('#sectional .open'))){
                scrollToNewSection($('#sectional .open'));
                return true;
              };
              return false;
            },
            prevCallBack: function(){
              return scrollToNewSection($('#sectional .open').prev())
            }
          });
          

        
          $('#btn-sectional').on('click', function(){
            $('#btn-global').removeClass('disabled');
            $(this).addClass('disabled');
            $('#global').hide();
            $('#sectional').show();
          });

          $('input').on('keyup change', function(){
            $(this).closest($('.valid')).removeClass('valid');
          });

          function validateEmpty(section){
            var errors = 0;
            section.find($('.required-field')).each(function(){
              var $this = $(this),
                input = $this.find($('input'));
              if (input.val() === ""){
                errors++;
                $this.addClass('field-error');
                $this.prepend('\<div class="form-error-msg"> \</div>');
              }
            });
            if (errors > 0){
              section.removeClass('valid');
              return false;
            }
            section.find($('.field-error')).each(function(){
              $(this).removeClass('field-error');
            });
            section.find($('.form-error-msg')).each(function(){
              $(this).remove();
            });
            section.addClass('valid');
            return true;
          }

          function scrollToNewSection(section){
            var top = section.offset().top;
    				$("html, body").animate({
    					scrollTop: top
    				}, '200');
            return true;
          }
        });
      </script>
     
</section>  

<!-- --------------form end-------------------------- -->
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
     <script src="resources/js/formalize.js" type="text/javascript"></script>
    <script>
    (function(b,o,i,l,e,r){b.GoogleAnalyticsObject=l;b[l]||(b[l]=
    function(){(b[l].q=b[l].q||[]).push(arguments)});b[l].l=+new Date;
    e=o.createElement(i);r=o.getElementsByTagName(i)[0];
    e.src='//www.google-analytics.com/analytics.js';
    r.parentNode.insertBefore(e,r)}(window,document,'script','ga'));
    ga('create','UA-XXXXX-X','auto');ga('send','pageview');
    </script>
 
 --%>
</body>
</html>