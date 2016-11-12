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
    <meta charset="utf-8">
    <!--<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">-->
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <title>Avaran-Suit your Style environment.  </title>
    <meta name="description" content="">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <spring:url value="/resources/css/normalize.css" var="normalizeCSS" />
    <spring:url value="/resources/css/bootstrap.css" var="bootstrapCSS" />
    <spring:url value="/resources/css/flexslider.css" var="flexsliderCSS" />
    <spring:url value="/resources/css/browse.css" var="browseCSS" />
    <spring:url value="/resources/css/queries.css" var="queriesCSS" />
	<spring:url value="http://maxcdn.bootstrapcdn.com/font-awesome/4.3.0/css/font-awesome.min.css" var="font-awesome.minCSS" />
	<link href="${normalizeCSS}" rel="stylesheet" />
	<link href="${bootstrapCSS}" rel="stylesheet" />
	<link href="${flexsliderCSS}" rel="stylesheet" />
	<link href="${browseCSS}" rel="stylesheet" />
	<link href="${queriesCSS}" rel="stylesheet" />
	<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/font-awesome/4.3.0/css/font-awesome.min.css">
	<link rel="stylesheet" href="/Defynu/resources/css/jquery.fancybox.css">
	<link rel="stylesheet" href="/Defynu/resources/css/etline-font.css">
	 <link rel="stylesheet" href="/Defynu/resources/css/animate.min.css">
   
    <script type="text/javascript" src="resources/js/modernizr-2.8.3-respond-1.4.2.min.js" ></script>

    <link rel="apple-touch-icon" href="apple-touch-icon.png">
    <link rel="icon" type="image/png" href="favicon-32x32.png" sizes="32x32" />
    <link rel="icon" type="image/png" href="favicon-16x16.png" sizes="16x16" />
</head>
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



<body id="top">

    <!--[if lt IE 8]>
    <p class="browserupgrade">You are using an <strong>outdated</strong> browser. Please <a href="http://browsehappy.com/">upgrade your browser</a> to improve your experience.</p>
    <![endif]-->
    <section class="hero">
        <section class="navigation">
            <header>
                <div class="header-content">
                    <div class="logo"><a href="#"><img src="resources/img/aavaran-logo.png" alt="Sedna logo"></a></div>
                    <div class="header-nav">
                        <nav>
                            <ul class="primary-nav">
							    <li><a href="#feature">Customize</a></li>
                                <li><a href="#features">Shirts</a></li>
                               <li><a href="#three">FABRICS</a></li>
                            
                            </ul>
                            <ul class="member-actions">
               
                           
                           <c:set var="uname" scope="session" value="${loggedInUser}"/>
<c:choose>
  <c:when test="${uname == null}">
   <li><a href="#download" class="login">Sign In / Sign Up</a></li> 
  </c:when>
  
<c:otherwise>
   <li><a href="/Defynu/logout" class="login">Signout</a></li>
  </c:otherwise>
</c:choose>
                   
                                <h7 style="color:white;">${loggedInUser}</h7>
                               <li><a href="/Defynu/checkout" class="btn-white btn-small">bag &nbsp; <span data-icon="&#xe027;" class="icon"></span> &nbsp; (${cart})</a></li>
                            </ul>
                        </nav>
                    </div>
                    <div class="navicon">
                        <a class="nav-toggle" href="#"><span></span></a>
                    </div>
                </div>
            </header>
        </section>
        
    <div id="sorting">
    
						 
	<div class="filters">
						<div class="selector">
					<h4><u>Fabric type</u></h4>
										<a class="selectable selected" href="javascript:loadFabrics('product_type_id=24');">Shirt fabrics</a>	</div>
										<div class="selector">
					<h4><u>Line</u></h4>
											<a href="/Defynu/browse">All</a><br>
										<li  onclick="setGetParameter('line', 'Basic')"><a>Basic - From INR 800 </a><br>
										</li>
										<li  onclick="setGetParameter('line','Exclusive')"><a>Exclusive - From INR 1000 </a><br>
										</li>
										
										<li  onclick="setGetParameter('line','Premium')"><a >Premium - From INR 1200</a>	
										</li>			
										</div>
							<div class="selector">
					<h4><u>Category</u></h4>
											<a href="/Defynu/browses" class="selectable selected all">All</a><br>
							
										<li  onclick="setGetParameter('category','Casual')"><a>Casual</a><br></li>
										<li  onclick="setGetParameter('category','Business')"><a class="selectable">Business </a><br></li>
										<li  onclick="setGetParameter('category','Classic')"><a class="selectable">Classic </a><br></li>	
										<div class="selector color">
					
					<h4><u>Pattern</u></h4>
											<a href="/Defynu/browsec" class="selectable selected all">All</a><br>
										<li  onclick="setGetParameter('pattern','Solid')"><a class="selectable">Solid </a><br></li>
										<a class="selectable" href="/Defynu/filter?search=Checked">Checked</a><br>
										<a class="selectable" href="/Defynu/filter?search=Striped">Striped</a><br>
									<a class="selectable" href="/Defynu/filter?search=Patterned">Patterned</a>
									</div>
									<div class="selector">
					<h4><u>Weaving type</u></h4>
											<a href="/Defynu/browse" class="selectable selected all">All</a><br>
										<a class="selectable" href="/Defynu/filter?search=Poplin">Poplin</a><br>
										<a class="selectable" href="/Defynu/filter?search=Oxford">Oxford</a><br>
										<a class="selectable" href="/Defynu/filter?search=Twill">Twill</a><br>
										<a class="selectable" href="/Defynu/filter?search=Plain">Plain</a>
										</div>	
										
					 
			 	</div>
    </div>
    
    
		<div id="fabric"> 
		 <h1>Shirt fabrics</h1>
		 <section class="features-extra section-padding" id="assets">
        <div class="container">
         <div><h3>Shirt Fabric</h3></div>
            <div class="row">
                <div class="col-md-5">
                    <div class="evrythin">
		 
		<div id="fabric-list" class="products">		<%-- 
		<c:forEach items="${fabric}" var="value" varStatus="status"> --%>
		 
            </div>
        </div>
        <!-- <div class="macbook-wrap wp3"></div>
        <div class="responsive-feature-img"><img src="/resources/img/macbook-pro.png" alt="responsive devices"></div>
    --> </section>
	
    
    <section class="blog text-center" >
        <div class="container-fluid" >
        
            <div class="row">
            
                <div class="col-md-4">
                    <article class="blog-post" >
                        <figure>
                            <a href="/Defynu/design?body=2&outercollar=bc1&innercollar=1&outercuff=sb1&innercuff=1&button=1&buttonplacket=1&outsidefastening=1&pocket=sp1&price=800" class="single_image">
                                <div class="blog-img-wrap">
                                    <div class="overlay">
                                        <i class="fa fa-search"></i>
                                    </div>
                                    <img src="resources/img/blog-img-01.jpg" alt="Sedna blog image"/>
                                </div>
                            </a>
                            <figcaption>
                            <h2><a href="/Defynu/browse" class="blog-category" data-toggle="tooltip" data-placement="top" data-original-title="See more posts">100% Cotton</a></h2>
                            <!-- <p><a href="#" class="blog-post-title">Getting started with Sedna <i class="fa fa-angle-right"></i></a></p> -->
                            </figcaption>
                        </figure>
                    </article>
                </div>
                <div class="col-md-4">
                    <article class="blog-post">
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
                            <h2><a href="/Defynu/browse" class="blog-category" data-toggle="tooltip" data-placement="top" data-original-title="See more posts">Pima Cotton</a></h2>
                           
                            </figcaption>
                        </figure>
                    </article>
                </div>
                 <div class="col-md-4">
                    <article class="blog-post">
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
                            <h2><a href="/Defynu/browse" class="blog-category" data-toggle="tooltip" data-placement="top" data-original-title="See more posts">Pima Cotton</a></h2>
                           
                            </figcaption>
                        </figure>
                    </article>
                </div>
                 <div class="col-md-4">
                    <article class="blog-post">
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
                            <h2><a href="/Defynu/browse" class="blog-category" data-toggle="tooltip" data-placement="top" data-original-title="See more posts">Pima Cotton</a></h2>
                           
                            </figcaption>
                        </figure>
                    </article>
                </div>
                 <div class="col-md-4">
                    <article class="blog-post">
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
                            <h2><a href="/Defynu/browse" class="blog-category" data-toggle="tooltip" data-placement="top" data-original-title="See more posts">Pima Cotton</a></h2>
                           
                            </figcaption>
                        </figure>
                    </article>
                </div>
                 <div class="col-md-4">
                    <article class="blog-post">
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
                            <h2><a href="/Defynu/browse" class="blog-category" data-toggle="tooltip" data-placement="top" data-original-title="See more posts">Pima Cotton</a></h2>
                           
                            </figcaption>
                        </figure>
                    </article>
                </div>
                 <div class="col-md-4">
                    <article class="blog-post">
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
                            <h2><a href="/Defynu/browse" class="blog-category" data-toggle="tooltip" data-placement="top" data-original-title="See more posts">Pima Cotton</a></h2>
                           
                            </figcaption>
                        </figure>
                    </article>
                </div>
                 <div class="col-md-4">
                    <article class="blog-post">
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
                            <h2><a href="/Defynu/browse" class="blog-category" data-toggle="tooltip" data-placement="top" data-original-title="See more posts">Pima Cotton</a></h2>
                           
                            </figcaption>
                        </figure>
                    </article>
                </div>
                <div class="col-md-4">
                    <article class="blog-post">
                        <figure>
                            <a href="resources/img/blog-img-03.jpg" class="single_image">
                                <div class="blog-img-wrap">
                                    <div class="overlay">
                                        <i class="fa fa-search"></i>
                                    </div>
                                    <img src="resources/img/blog-img-03.jpg" class="single_image" alt="Sedna blog image"/>
                                </div>
                            </a>
                            <figcaption>
                            <h2><a href="/Defynu/browse" class="blog-category" data-toggle="tooltip" data-placement="top" data-original-title="See more posts">Giza Cotton</a></h2>
                           </figcaption>
                        </figure>
                    </article>
                </div>
                 </div>
        </div>
    </section>
    
	  		
    </div>
    <section class="sign-up section-padding text-center" id="download">
        <div class="container">
            <div class="row">
                <div class="col-md-6 col-md-offset-3">
                    <h3>Get started with Aavaran</h3>
                    <p>Grab your shirt today, exclusively from Aavaran</p>
                    <form class="signup-form" action="/Defynu/hello" method="POST" role="form">
                        <div class="form-input-group">
                            <i class="fa fa-envelope"></i><input type="text" name="email" id="email" class="formfield long" placeholder="Enter your email" required>
                        </div>
                        <div class="form-input-group">
                            <i class="fa fa-lock"></i><input type="password" name="password" id="password" class="formfield small" placeholder="Enter your password" required>
                        </div>
                        <button type="submit" class="btn-fill sign-up-btn">Sign in </button>
						<button type="submit" formaction="/Defynu/register" class="btn-fill-new sign-up-btn">Sign up </button>
						
                    </form>
                </div>
            </div>
        </div>
    </section>
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
                        <p>Copyright © 2016 <a href="#">AAVARAN <span class="fa fa-heart pulse2"></span></a><br>
                         </div>
                </div>
                <div class="social-share">
                    <p>Share Avaran with your friends</p>
                    <a href="https://twitter.com/peterfinlan" class="twitter-share"><i class="fa fa-twitter"></i></a> <a href="#" class="facebook-share"><i class="fa fa-facebook"></i></a>
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
</body>
</html>