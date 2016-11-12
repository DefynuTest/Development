<% response.setHeader("Cache-Control", "no-cache");

//Forces caches to obtain a new copy of the page from the origin server
response.setHeader("Cache-Control", "no-store");

//Directs caches not to store the page under any circumstance
response.setDateHeader("Expires", 0);

//Causes the proxy cache to see the page as "stale"
response.setHeader("Pragma", "no-cache");
//HTTP 1.0 backward enter code here


if (session == null && session.getAttribute("uname") == null) {
        response.sendRedirect("index");
        
}
else
        %>
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
    <spring:url value="/resources/css/hello.css" var="helloCSS" />
    <spring:url value="/resources/css/queries.css" var="queriesCSS" />
	<spring:url value="http://maxcdn.bootstrapcdn.com/font-awesome/4.6.3/css/font-awesome.min.css" var="font-awesome.minCSS" />
	<link href="${normalizeCSS}" rel="stylesheet" />
	<link href="${bootstrapCSS}" rel="stylesheet" />
	<link href="${flexsliderCSS}" rel="stylesheet" />
	<link href="${helloCSS}" rel="stylesheet" />
	<link href="${queriesCSS}" rel="stylesheet" />
	<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/font-awesome/4.3.0/css/font-awesome.min.css">
	<link rel="stylesheet" href="/resources/css/jquery.fancybox.css">
	<link rel="stylesheet" href="/resources/css/etline-font.css">
	 <link rel="stylesheet" href="/resources/css/animate.min.css">
   
    <script type="text/javascript" src="resources/js/modernizr-2.8.3-respond-1.4.2.min.js" ></script>

    <link rel="apple-touch-icon" href="apple-touch-icon.png">
    <link rel="icon" type="image/png" href="favicon-32x32.png" sizes="32x32" />
    <link rel="icon" type="image/png" href="favicon-16x16.png" sizes="16x16" />
    
    
    <link rel="shortcut icon" href="resources/img/favicon.ico"> 
       
 
 <style>
.mySlides {display:none;}
</style>
<script type="text/javascript">
$(document).ready(function () {

    $('#myModal2').modal('show');

});
</script>
<script src='https://www.google.com/recaptcha/api.js'></script>
 </head>
<body id="top">

    <!--[if lt IE 8]>
    <p class="browserupgrade">You are using an <strong>outdated</strong> browser. Please <a href="http://browsehappy.com/">upgrade your browser</a> to improve your experience.</p>
    <![endif]-->
  
     	 
 
        <section class="navigation" id="navigate">
            <header>
                <div class="header-content">
                    <div class="logo"><a href="/hello"><img src="resources/img/logonew.png" alt="Sedna logo"></a></div>
                    <div class="header-nav">
                        <nav>
                            <ul class="primary-nav">
                             <li><a href="/hello"><img src="resources/img/final-logo-name1.png" alt="Sedna logo"></a></li>
							    <li><a href="/Defynu/design?body=1&outercollar=bc0001&innercollar=0001&outercuff=sb0001&innercuff=0001&button=0001&buttonplacket=0001&outsidefastening=0001&pocket=sp0001&price=800">Customize</a></li>
                                <li><a href="/Defynu/browses">Shirts</a></li>
                               <li><a href="/browses">FABRICS</a></li>
                             
                            
                            </ul>
                            <ul class="member-actions">
               
                           
                           <c:set var="uname" scope="session" value="${loggedInUser}"/>
<c:choose>
  <c:when test="${uname == null}">
   <li><button type="button" class="btn-link" data-toggle="modal" data-target="#myModal" data-backdrop="static" data-keyboard="false">Sign In / Sign Up</button></li> 
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
        
	 <section class="testimonial-slider section-padding text-center wp3" id="car">
       <!--  <div class="container">
            <div class="row">
                <div class="col-md-12"> -->
                    <div class="flexslider">
                        <ul class="slides">
                        
                            <li>
                                <div class="avatar"><a href="/design?body=1&outercollar=bc1&innercollar=1&outercuff=sb1&innercuff=1&button=1&buttonplacket=1&outsidefastening=1&pocket=sp1&price=800""><img src="resources/img/slide1.png" alt="Sedna Testimonial Avatar"></div>
                               
                            </li>
                            <li>
                                <div class="avatar"><a href="/design?body=1&outercollar=bc1&innercollar=1&outercuff=sb1&innercuff=1&button=1&buttonplacket=1&outsidefastening=1&pocket=sp1&price=800""><img src="resources/img/slide2.png" alt="Sedna Testimonial Avatar"></div>
                              
                            </li>
                            <li>
                                <div class="avatar"><a href="/design?body=1&outercollar=bc1&innercollar=1&outercuff=sb1&innercuff=1&button=1&buttonplacket=1&outsidefastening=1&pocket=sp1&price=800""><img src="resources/img/slide3.png" alt="Sedna Testimonial Avatar"></div>
                                 
                            </li>
                        </ul>
                   <!--  </div>
                </div>
            </div> -->
        </div>
    </section> 
   
	 <!-- <section class="hero">
     	  <div class="w3-content w3-section" style="max-width:1366px">     
  <img class="mySlides" src="resources/img/xclusive.png" style="width:100%">
  <img class="mySlides" src="resources/img/page1.png" style="width:100%">
  <img class="mySlides" src="resources/img/5.jpg" style="width:100%">
</div>
        <div class="container">
               <div class="row">
                <div class="col-md-10 col-md-offset-1">
                    <div class="hero-content text-center">
                     <h1>   <br/><br/><br/><br/><br/></h1>
                       
                        <a href="/customize"  class="btn btn-fill btn-large btn-margin-right">CUSTOMIZE</a>
                        <a href="/personalize"  class="btn btn-accent btn-large">GET INSPIRED</a> 
                    </div>
                </div>
            </div>
        </div> -->
        <!-- <div class="down-arrow floating-arrow"><a href="#"><i class="fa fa-angle-down"></i></a></div>
    </section> -->
      
   <section class="intro section-padding" id="feature">
        <div class="container">
            <div class="row">
                <div class="col-md-4 intro-feature"> <a  href="/browses"><img src="resources/img/choose.jpg" alt="choose">
                    <div class="intro-icon">
                         <span data-icon="&#xe035;" class="icon"></span> 
                    </div>
                    <div class="intro-content">
				        
                        <h5>Choose Fabric</h5>
                        <p>Choose the fabric suits your attire from our wide range of premium </p>
                    </div>
                </div>
                <div class="col-md-4 intro-feature"><a  href="/design?body=1&outercollar=bc1&innercollar=1&outercuff=sb1&innercuff=1&button=1&buttonplacket=1&outsidefastening=1&pocket=sp1&price=800"><img  src="resources/img/customize.jpg" alt="choose">
                    <div class="intro-icon">
                        <span data-icon="&#xe046;" class="icon"></span>
                    </div>
                    <div class="intro-content">
					
                        <h5>Customize</h5>
                        <p>Customize your shirt with collar, cuff and contrast fabric well suited to your persona. </p>
                    </div>
                </div>
                <div class="col-md-4 intro-feature"><img src="resources/img/get measured.jpg" alt="choose">
                    <div class="intro-icon">
                        <span data-icon="&#xe033;" class="icon"></span>
                    </div>
                    <div class="intro-content last">
					
                        <h5>Get Measured</h5>
                        <p>Get your accurate measurement through our responsive tailoring guide or choose standard sizes. </p>
                        <a href="/design?body=1&outercollar=bc1&innercollar=1&outercuff=sb1&innercuff=1&button=1&buttonplacket=1&outsidefastening=1&pocket=sp1&price=800"  class="btn btn-fill btn-large btn-margin-right">Get Started</a>
                        
                    </div>
                </div>
            </div>
        </div><!-- <a href="/customize"  class="lets btn-fill btn-large ">Lets Start</a> -->
    </section>
    <section class="blog text-center" >
        <div class="container-fluid" >
            <div class="row">
               <%--  <div class="col-md-4">
                    <article class="blog-post" >
                        <figure>
                            <a href="resources/img/blog-img-01.jpg" class="single_image">
                                <div class="blog-img-wrap">
                                    <div class="overlay">
                                        <i class="fa fa-search"></i>
                                    </div>
                                    <img src="resources/img/blog-img-01.jpg" alt="Sedna blog image"/>
                                </div>
                            </a>
                            <figcaption>
                            <h2><a href="/browse" class="blog-category" data-toggle="tooltip" data-placement="top" data-original-title="See more posts">100% Cotton</a></h2>
                            <!-- <p><a href="#" class="blog-post-title">Getting started with Sedna <i class="fa fa-angle-right"></i></a></p> -->
                            </figcaption>
                        </figure>
                    </article>
                </div> --%>
                <div class="col-md-6">
                    <article class="blog-post">
                        <figure>
                          <a href="/design?body=1&outercollar=bc1&innercollar=1&outercuff=sb1&innercuff=1&button=1&buttonplacket=1&outsidefastening=1&pocket=sp1&price=800" class="single_image">
                             <div class="blog-img-wrap">
                                    <div class="overlay">
                                        <i class="fa fa-search"></i>
                                    </div>
                                    <img src="resources/img/collarscale.png" alt="Sedna blog image"> 
                                </div>
                            </a>
                            <%-- <figcaption>
                            <h2><a href="/browse" class="blog-category" data-toggle="tooltip" data-placement="top" data-original-title="See more posts">Pima Cotton</a></h2>
                           
                            </figcaption> --%>
                        </figure>
                    </article>
                </div>
                <div class="col-md-6">
                    <article class="blog-post">
                        <figure>
                            <a href="/browses" class="single_image">
                               <div class="blog-img-wrap">
                                    <div class="overlay">
                                        <i class="fa fa-search"></i>
                                    </div>
                                    
                                    <img src="resources/img/strip.png" class="single_image" alt="Sedna blog image"/></a>
                                </div>
                            
                            <%-- <figcaption>
                            <h2><a href="/browse" class="blog-category" data-toggle="tooltip" data-placement="top" data-original-title="See more posts">Giza Cotton</a></h2>
                           </figcaption> --%>
                        </figure>
                    </article>
                </div>
                <div> &nbsp; </br>
                </div>
                 <div class="col-md-6">
                    <article class="blog-post">
                        <figure>
                            <a href="/design?body=1&outercollar=bc1&innercollar=1&outercuff=sb1&innercuff=1&button=1&buttonplacket=1&outsidefastening=1&pocket=sp1&price=800" class="single_image"> 
                                <div class="blog-img-wrap">
                                    <div class="overlay">
                                        <i class="fa fa-search"></i>
                                    </div>
                                   <img src="resources/img/macbook-pro.png" class="single_image" alt="Sedna blog image">
                                </div>
                            </a>
                            <%-- <figcaption>
                            <h2><a href="/browse" class="blog-category" data-toggle="tooltip" data-placement="top" data-original-title="See more posts">Giza Cotton</a></h2>
                           </figcaption> --%>
                        </figure>
                    </article>
                </div>
                <div class="col-md-6">
                    <article class="blog-post">
                        <figure>
                            <a  href="/design?body=1&outercollar=bc1&innercollar=1&outercuff=sb1&innercuff=1&button=1&buttonplacket=1&outsidefastening=1&pocket=sp1&price=800" class="single_image">
                               <div class="blog-img-wrap">
                                    <div class="overlay">
                                        <i class="fa fa-search"></i>
                                    </div>
                                    
                                    <img src="resources/img/organic.png" alt="Sedna blog image">
                                </div>
                            </a>
                            <%-- <figcaption>
                            <h2><a href="/browse" class="blog-category" data-toggle="tooltip" data-placement="top" data-original-title="See more posts">Pima Cotton</a></h2>
                           
                            </figcaption> --%>
                        </figure>
                    </article>
                </div>
                <!-- <a href="/browse" class="btn btn-ghost btn-accent btn-small">Browse</a> -->
            </div>
        </div>
    </section>
    
     <%-- <section class="blog text-center" >
        <div class="container-fluid" >
            <div class="row">
                <div class="col-md-4">
                    <article class="blog-post" >
                        <figure>
                            <a href="resources/img/blog-img-01.jpg" class="single_image">
                                <div class="blog-img-wrap">
                                    <div class="overlay">
                                        <i class="fa fa-search"></i>
                                    </div>
                                    <img src="resources/img/blog-img-01.jpg" alt="Sedna blog image"/>
                                </div>
                            </a>
                            <figcaption>
                            <h2><a href="/browse" class="blog-category" data-toggle="tooltip" data-placement="top" data-original-title="See more posts">100% Cotton</a></h2>
                            <!-- <p><a href="#" class="blog-post-title">Getting started with Sedna <i class="fa fa-angle-right"></i></a></p> -->
                            </figcaption>
                        </figure>
                    </article>
                </div>
                
                 <div class="col-md-6">
                    <article class="blog-post">
                        <figure>
                           <!--  <a href="#" class="single_image"> -->
                                <div class="blog-img-wrap">
                                    <div class="overlay">
                                        <i class="fa fa-search"></i>
                                    </div>
                                    <img src="resources/img/macbook-pro.png" class="single_image" alt="Sedna blog image"/>
                                </div>
                            </a>
                            <figcaption>
                            <h2><a href="/browse" class="blog-category" data-toggle="tooltip" data-placement="top" data-original-title="See more posts">Giza Cotton</a></h2>
                           </figcaption>
                        </figure>
                    </article>
                </div>
                <div class="col-md-6">
                    <article class="blog-post">
                        <figure>
                           <!--  <a href="#" class="single_image">
                            -->     <div class="blog-img-wrap">
                                    <div class="overlay">
                                        <i class="fa fa-search"></i>
                                    </div>
                                    <img src="resources/img/organic.png" alt="Sedna blog image"/>
                                </div>
                            </a>
                            <figcaption>
                            <h2><a href="/browse" class="blog-category" data-toggle="tooltip" data-placement="top" data-original-title="See more posts">Pima Cotton</a></h2>
                           
                            </figcaption>
                        </figure>
                    </article>
                </div>
               
                <!-- <a href="/browse" class="btn btn-ghost btn-accent btn-small">Browse</a> -->
            </div>
        </div>
    </section> --%>
   <!--  <section class="features section-padding" id="features">
      
  <img  src="resources/img/page1.png" style="width:100%"> -->
        <!-- <div class="container">
            <div class="row">
                <div class="col-md-5 col-md-offset-7">
                    <div class="feature-list">
                        <h3>The Formal Attire</h3>
						<hr \>
                        <p>Present your product, start up, or portfolio in a beautifully modern way. Turn your visitors in to clients.</p>
                       <ul class="features-stack">
                            <li class="feature-item">
                                <div class="feature-icon">
                                    <span data-icon="&#xe02c;" class="icon"></span>
                                </div>
                                <div class="feature-content">
                                    <h5>Universal & Responsive</h5>
                                    <p>Sedna is universal and will look smashing on any device.</p>
                                </div>
                            </li>
                            <li class="feature-item">
                                <div class="feature-icon">
                                    <span data-icon="&#xe040;" class="icon"></span>
                                </div>
                                <div class="feature-content">
                                    <h5>User Centric Design</h5>
                                    <p>Sedna takes advantage of common design patterns, allowing for a seamless experience for users of all levels.</p>
                                </div>
                            </li>
                            <li class="feature-item">
                                <div class="feature-icon">
                                    <span data-icon="&#xe03c;" class="icon"></span>
                                </div>
                                <div class="feature-content">
                                    <h5>Clean reusable code</h5>
                                    <p>Download and re-use the Sedna open source code for any other project you like.</p>
                                </div>
                            </li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
        <div class="device-showcase">
            <div class="devices">
                <div class="ipad-wrap wp1"></div>
                <div class="iphone-wrap wp2"></div>
        <div class="responsive-feature-img"><img src="resources/img/devices.png" alt="responsive devices"></div>
            </div>
        </div> 
    </section>-->
    <!-- <section class="features-extra section-padding" id="assets"> 
    <div class="macbook-wrap wp3"></div>
        <div class="responsive-feature-img"><img src="resources/img/macbook-pro.png" alt="responsive devices"></div>
         -->
                  
       <!--  <div class="container">
            <div class="row">
                <div class="col-md-5">
                    <div class="feature-list">
                    
                        <h3>Designed with Sketch!</h3>
                        <p>Easily change/switch/swap every placeholder inside every image on Sedna with the included Sketch files. Youâ€™ll have this template customised to suit your business in no time! </p>
                        <p>Nam vehicula malesuada lectus, interdum fringilla nibh. Duis aliquam vitae metus a pharetra. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec fermentum augue quis augue ornare, eget faucibus felis pharetra. Proin condimentum et leo quis fringilla.
                        </p>
                        <a href="/customize" class="btn btn-ghost btn-accent btn-small">Customize Now!!</a>
                    </div>
                </div>
            </div>
        </div>
        <div class="macbook-wrap wp3"></div>
        <div class="responsive-feature-img"><img src="resources/img/macbook-pro.png" alt="responsive devices"></div>
        
    </section> -->
	<!-- <section class="blog text-center" id="three" >
        <div class="container-fluid" >
           
        </div>
    </section> -->
    <section class="blog text-center" >
        <div class="container-fluid" >
            <div class="row">
                <div class="col-md-4">
                    <article class="blog-post" >
                        <figure>
                           <a href="/browses?weavetype=Plain" class="single_image">
                               <div class="blog-img-wrap">
                                    <div class="overlay">
                                        <i class="fa fa-search"></i>
                                    </div>
                                    <img src="resources/img/blog-img-01.jpg" alt="Fabric Image"></a>
                                </div>
                            
                            <figcaption>
                            <h2><a href="/browses?weavetype=Plain" class="blog-category" data-toggle="tooltip" data-placement="top" data-original-title="See more fabricss">Plain </a></h2>
                            <!-- <p><a href="#" class="blog-post-title">Getting started with Sedna <i class="fa fa-angle-right"></i></a></p> -->
                            </figcaption>
                        </figure>
                    </article>
                </div> 
                <div class="col-md-4">
                    <article class="blog-post">
                        <figure>
                           <a href="/browses?weavetype=Dobby" class="single_image">
                              <div class="blog-img-wrap">
                                    <div class="overlay">
                                        <i class="fa fa-search"></i>
                                    </div>
                                   
                                    <img src="resources/img/blog-img-02.jpg" alt="Fabric Image"/>
                                </div>
                            </a>
                            <figcaption>
                            <h2><a href="/browses?weavetype=Dobby" class="blog-category" data-toggle="tooltip" data-placement="top" data-original-title="See more fabrics"> Dobby </a></h2>
                           
                            </figcaption>
                        </figure>
                    </article>
                </div>
                <div class="col-md-4">
                    <article class="blog-post">
                        <figure>
                             <a href="/browses?weavetype=Poplin" class="single_image">
                                <div class="blog-img-wrap">
                                    <div class="overlay">
                                        <i class="fa fa-search"></i>
                                    </div>
                                    
                                    <img src="resources/img/blog-img-03.jpg" class="single_image" alt="Fabric Image"/>
                                </div>
                            </a>
                            <figcaption>
                            <h2><a href="/browses?weavetype=Poplin" class="blog-category" data-toggle="tooltip" data-placement="top" data-original-title="See more posts">Poplin</a></h2>
                           </figcaption>
                        </figure>
                    </article>
                </div>
                <!-- <a href="#" class="btn btn-ghost btn-accent btn-small">Browse</a>
            --> </div>
        </div>
    </section>
    
	 
	 <!-- <section class="testimonial-slider section-padding text-center wp3" id="car">
        <div class="container">
            <div class="row">
                <div class="col-md-12">
                    <div class="flexslider">
                        <ul class="slides">
                            <li>
                                <div class="avatar"><img src="resources/img/hero.jpg" alt="Sedna Testimonial Avatar"></div>
                                <h2>"Melfort, Red"</h2>
                                <p class="author">Oxford, 160 g/m2</p>
                            </li>
                            <li>
                                <div class="avatar"><img src="resources/img/shirt2.png" alt="Sedna Testimonial Avatar"></div>
                                <h2>"Milano, Black."</h2>
                                <p class="author">Poplin, 105 g/m2</p>
                            </li>
                            <li>
                                <div class="avatar"><img src="resources/img/shirt3.png" alt="Sedna Testimonial Avatar"></div>
                                <h2>"Burton RS, Purple"</h2>
                                <p class="author">Twill, 87 g/m2</p>
                            </li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
    </section> 		
     -->
    <%-- <section class="sign-up section-padding text-center" id="download">
        <div class="container">
            <div class="row">
                <div class="col-md-6 col-md-offset-3">
                    <h3>Get started with DefynU</h3>
                    <p>Grab your shirt today, exclusively from DefynU</p>
                    <p style="font-color:red">${message}</p>
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
    </section> --%>
    <section class="to-top">
        <div class="container">
            <div class="row">
                <div class="to-top-wrap">
                    <a href="#top" class="top"><i class="fa fa-angle-up"></i></a>
                </div>
            </div>
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
              <input type="password" class="form-control" id="newRegisterOTP" placeholder="4-Digit OTP" maxlength="4">
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



    <footer>
        <div class="container">
            <div class="row">
                <div class="col-md-7">
                    <div class="footer-links">
                        <ul class="footer-group">
                          
                            <li><a href="#top" >Sign up</a></li>
                            <li><a href="#feature">How It Works</a></li>
                            
                        </ul>
                        <p>Copyright © 2016 <a href="#">Bespokart <span class="fa fa-heart pulse2"></span></a><br>
                         </div>
                </div>
                
                <div class="contact">
                <h3 style="color:#fff;">Contact Us</h3>
                <h4 style="color:#fff; text-transform:none;">Email:&nbsp;support@bespokart.in</h4>
                <h4 style="color:#fff; text-transform:none;">Phone:&nbsp;&nbsp;+91-9563862124;&nbsp;+91-8902289337</h4></div>
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