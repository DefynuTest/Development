
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
     <link rel="stylesheet" href="/Defynu/resources/css/reset.css"> <!-- CSS reset -->
	 <link rel="stylesheet" href="/Defynu/resources/css/fabric.css"> <!-- Resource style -->
	  <link rel="stylesheet" href="/Defynu/resources/css/bs.css"> <!-- BS reset -->
	<!--  <link rel="stylesheet" href="/Defynu/resources/css/hello.css"> -->
   	<script src="resources/js/modernizr.js"></script> <!-- Modernizr -->
    <script type="text/javascript" src="resources/js/modernizr-2.8.3-respond-1.4.2.min.js" ></script>

    <link rel="apple-touch-icon" href="apple-touch-icon.png">
    <link rel="icon" type="image/png" href="favicon-32x32.png" sizes="32x32" />
    <link rel="icon" type="image/png" href="favicon-16x16.png" sizes="16x16" />
   <!--  <link rel="stylesheet" href="http://code.jquery.com/mobile/1.4.5/jquery.mobile-1.4.5.min.css">
 --><script src="http://code.jquery.com/jquery-1.11.3.min.js"></script>
<script src="http://code.jquery.com/mobile/1.4.5/jquery.mobile-1.4.5.min.js"></script>
    
    <link rel="shortcut icon" href="../favicon.ico"> 
   
 
	 
       <!--  <link rel="stylesheet" type="text/css" href="/resources/css/demo.css" />
        <link rel="stylesheet" type="text/css" href="/resources/css/style1.css" /> -->
		<!-- <script type="text/javascript" src="resources/js/modernizr.custom.86080.js"></script>
 -->
  
 
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
 
<body>
	<header class="cd-main-header">
	
		<a href="#0" class="cd-logo"><img src="resources/img/logobr.png" alt="Logo"> </a>
		
		<%-- <div class="cd-search is-hidden">
			<form action="#0">
				<input type="search" placeholder="Search...">
			</form>
		</div> <!-- cd-search -->
 --%>
		<a href="#0" class="cd-nav-trigger">Menu<span></span></a>

		<nav class="cd-nav">
			<ul class="cd-top-nav">
			<li><a href="/design?body=1&outercollar=bc1&innercollar=1&outercuff=sb1&innercuff=1&button=1&buttonplacket=1&outsidefastening=1&pocket=sp1&price=800">Customize</a></li>
                                <li><a href="/design?body=1&outercollar=bc1&innercollar=1&outercuff=sb1&innercuff=1&button=1&buttonplacket=1&outsidefastening=1&pocket=sp1&price=800">Shirts</a></li>
                               <li><a href="/browse">FABRICS</a></li>
                                                
				<li><a href="/Defynu/design?body=1&outercollar=bc1&innercollar=1&outercuff=sb1&innercuff=1&button=1&buttonplacket=1&outsidefastening=1&pocket=sp1&price=800">Tour</a></li>
				<li><a href="#0">Support</a></li>
				
				
				<li class="has-children account">
					<a href="#0">
						
						Account
					</a>

					<!-- <ul>

						<li><a href="#0">My Account</a></li>
						<li><a href="#0">Edit Account</a></li>
						<li><a href="#0">Logout</a></li>
					</ul> -->
				</li>
			</ul>
		</nav>
		
	</header> <!-- .cd-main-header -->

	<main class="cd-main-content">
		<nav class="cd-side-nav">
			<ul>
				<li class="cd-label">Main</li>
				
				<li class="has-children notifications active">
					<a href="#0">Line </a>
					
					<ul>
						<li><a href="/Defynu/browses">All </a></li>
						<li  onclick="setGetParameter('line', 'Basic')"><a>Basic - From INR 800 </a><br></li>
						<li  onclick="setGetParameter('line','Exclusive')"><a>Exclusive - From INR 1000 </a><br></li>
						<li  onclick="setGetParameter('line','Premium')"><a >Premium - From INR 1200</a></li>
					</ul>
				</li>
				<li class="has-children overview active">
					<a href="#0">Category</a>
					
					<ul>
						<li><a href="/Defynu/browses">All</a></li>
						<li  onclick="setGetParameter('category','Soilid')"><a>Solid</a><br></li>
						<li  onclick="setGetParameter('category','Checked')"><a class="selectable">Checked </a><br></li>
						<li  onclick="setGetParameter('category','Striped')"><a class="selectable">Striped </a><br></li>	
						<li  onclick="setGetParameter('category','Patterned')"><a class="selectable">Patterned </a><br></li>				
					</ul>
				</li>

				<li class="has-children comments active">
					<a href="#0">Weaving Types</a>
					
					<ul>
						<li><a href="/Defynu/browses">All</a></li>
						<li  onclick="setGetParameter('weavetype','Poplin')"><a>Poplin</a><br></li>
						<li  onclick="setGetParameter('weavetype','Oxford')"><a class="selectable">Oxford </a><br></li>
						<li  onclick="setGetParameter('weavetype','Twill')"><a class="selectable">Twill </a><br></li>	
						<li  onclick="setGetParameter('weavetype','Plain')"><a class="selectable">Plain </a><br></li>	
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
            
             <div class="col-md-4">
                    <article class="blog-post">
                        <figure>
                            <!-- <a href="img/blog-img-01.jpg" class="single_image"> -->
                                <div class="blog-img-wrap">
                                    <div class="overlay">
                                        <i class="fa fa-search"></i>
                                    </div>
                                    <img src="resources/img/blog-img-01.jpg" alt="Sedna blog image"/>
                                </div>
                            </a>
                            <figcaption>
                            <h2><a href="#" class="blog-category" data-toggle="tooltip" data-placement="top" data-original-title="See more posts">Gingham,Blue</a></h2>
                            <p><a href="#" class="blog-post-title">Getting started with Sedna <i class="fa fa-angle-right"></i></a></p>
                            </figcaption>
                        </figure>
                    </article>
                </div><div class="col-md-4">
                    <article class="blog-post">
                        <figure>
                            <!-- <a href="img/blog-img-01.jpg" class="single_image"> -->
                                <div class="blog-img-wrap">
                                    <div class="overlay">
                                        <i class="fa fa-search"></i>
                                    </div>
                                    <img src="resources/img/blog-img-01.jpg" alt="Sedna blog image"/>
                                </div>
                            </a>
                            <figcaption>
                            <h2><a href="#" class="blog-category" data-toggle="tooltip" data-placement="top" data-original-title="See more posts">Ethinc,Peach</a></h2>
                            <p><a href="#" class="blog-post-title">Plain, 100% Cotton <i class="fa fa-angle-right"></i></a></p>
                            </figcaption>
                        </figure>
                    </article>
                </div><div class="col-md-4">
                    <article class="blog-post">
                        <figure>
                            <!-- <a href="img/blog-img-01.jpg" class="single_image"> -->
                                <div class="blog-img-wrap">
                                    <div class="overlay">
                                        <i class="fa fa-search"></i>
                                    </div>
                                    <img src="resources/img/blog-img-01.jpg" alt="Sedna blog image"/>
                                </div>
                            </a>
                            <figcaption>
                            <h2><a href="#" class="blog-category" data-toggle="tooltip" data-placement="top" data-original-title="See more posts">Gingham,Red</a></h2>
                            <p><a href="#" class="blog-post-title">Oxford, 100 % Cotton<i class="fa fa-angle-right"></i></a></p>
                            </figcaption>
                        </figure>
                    </article>
                </div><div class="col-md-4">
                    <article class="blog-post">
                        <figure>
                            <!-- <a href="img/blog-img-01.jpg" class="single_image"> -->
                                <div class="blog-img-wrap">
                                    <div class="overlay">
                                        <i class="fa fa-search"></i>
                                    </div>
                                    <img src="resources/img/blog-img-01.jpg" alt="Sedna blog image"/>
                                </div>
                            </a>
                            <figcaption>
                            <h2><a href="#" class="blog-category" data-toggle="tooltip" data-placement="top" data-original-title="See more posts">Ethnic,Pink</a></h2>
                            <p><a href="#" class="blog-post-title">Plain, 100% Cotton <i class="fa fa-angle-right"></i></a></p>
                            </figcaption>
                        </figure>
                    </article>
                </div><div class="col-md-4">
                    <article class="blog-post">
                        <figure>
                            <!-- <a href="img/blog-img-01.jpg" class="single_image"> -->
                                <div class="blog-img-wrap">
                                    <div class="overlay">
                                        <i class="fa fa-search"></i>
                                    </div>
                                    <img src="resources/img/blog-img-01.jpg" alt="Sedna blog image"/>
                                </div>
                            </a>
                            <figcaption>
                            <h2><a href="#" class="blog-category" data-toggle="tooltip" data-placement="top" data-original-title="See more posts">Aura,Purple</a></h2>
                            <p><a href="#" class="blog-post-title">Getting started with Sedna <i class="fa fa-angle-right"></i></a></p>
                            </figcaption>
                        </figure>
                    </article>
                </div><div class="col-md-4">
                    <article class="blog-post">
                        <figure>
                            <!-- <a href="img/blog-img-01.jpg" class="single_image"> -->
                                <div class="blog-img-wrap">
                                    <div class="overlay">
                                        <i class="fa fa-search"></i>
                                    </div>
                                    <img src="resources/img/blog-img-01.jpg" alt="Sedna blog image"/>
                                </div>
                            </a>
                            <figcaption>
                            <h2><a href="#" class="blog-category" data-toggle="tooltip" data-placement="top" data-original-title="See more posts">Arctic,Blue</a></h2>
                            <p><a href="#" class="blog-post-title">Poplin, 100% Cotton <i class="fa fa-angle-right"></i></a></p>
                            </figcaption>
                        </figure>
                    </article>
                </div><div class="col-md-4">
                    <article class="blog-post">
                        <figure>
                            <!-- <a href="img/blog-img-01.jpg" class="single_image"> -->
                                <div class="blog-img-wrap">
                                    <div class="overlay">
                                        <i class="fa fa-search"></i>
                                    </div>
                                    <img src="resources/img/blog-img-01.jpg" alt="Sedna blog image"/>
                                </div>
                            </a>
                            <figcaption>
                            <h2><a href="#" class="blog-category" data-toggle="tooltip" data-placement="top" data-original-title="See more posts">Heaven,White</a></h2>
                            <p><a href="#" class="blog-post-title">Dobby, 100% Cotton<i class="fa fa-angle-right"></i></a></p>
                            </figcaption>
                        </figure>
                    </article>
                </div><div class="col-md-4">
                    <article class="blog-post">
                        <figure>
                            <!-- <a href="img/blog-img-01.jpg" class="single_image"> -->
                                <div class="blog-img-wrap">
                                    <div class="overlay">
                                        <i class="fa fa-search"></i>
                                    </div>
                                    <img src="resources/img/blog-img-01.jpg" alt="Sedna blog image"/>
                                </div>
                            </a>
                            <figcaption>
                            <h2><a href="#" class="blog-category" data-toggle="tooltip" data-placement="top" data-original-title="See more posts">Carmine,Red</a></h2>
                            <p><a href="#" class="blog-post-title">Poplin, 100% Cotton <i class="fa fa-angle-right"></i></a></p>
                            </figcaption>
                        </figure>
                    </article>
                </div><div class="col-md-4">
                    <article class="blog-post">
                        <figure>
                            <!-- <a href="img/blog-img-01.jpg" class="single_image"> -->
                                <div class="blog-img-wrap">
                                    <div class="overlay">
                                        <i class="fa fa-search"></i>
                                    </div>
                                    <img src="resources/img/blog-img-01.jpg" alt="Sedna blog image"/>
                                </div>
                            </a>
                            <figcaption>
                            <h2><a href="#" class="blog-category" data-toggle="tooltip" data-placement="top" data-original-title="See more posts">Ethnic,Blue</a></h2>
                            <p><a href="#" class="blog-post-title">Plain, 100% Cotton <i class="fa fa-angle-right"></i></a></p>
                            </figcaption>
                        </figure>
                    </article>
                </div><div class="col-md-4">
                    <article class="blog-post">
                        <figure>
                            <!-- <a href="img/blog-img-01.jpg" class="single_image"> -->
                                <div class="blog-img-wrap">
                                    <div class="overlay">
                                        <i class="fa fa-search"></i>
                                    </div>
                                    <img src="resources/img/blog-img-01.jpg" alt="Sedna blog image"/>
                                </div>
                            </a>
                            <figcaption>
                            <h2><a href="#" class="blog-category" data-toggle="tooltip" data-placement="top" data-original-title="See more posts">Peacock,Blue</a></h2>
                            <p><a href="#" class="blog-post-title">Twill, 100% Cotton <i class="fa fa-angle-right"></i></a></p>
                            </figcaption>
                        </figure>
                    </article>
                </div>
			 
                <%-- <div class="col-md-4">
                    <article class="blog-post">
                        <figure>
                            <!-- <a href="img/blog-img-01.jpg" class="single_image"> -->
                                <div class="blog-img-wrap">
                                    <div class="overlay">
                                        <i class="fa fa-search"></i>
                                    </div>
                                    <img src="resources/img/blog-img-01.jpg" alt="Sedna blog image"/>
                                </div>
                            </a>
                            <figcaption>
                            <h2><a href="#" class="blog-category" data-toggle="tooltip" data-placement="top" data-original-title="See more posts">Product</a></h2>
                             
                            </figcaption>
                        </figure>
                    </article>
                </div> --%>
               <div class="col-md-4">
                    <article class="blog-post">
                        <figure>
                            <!-- <a href="img/blog-img-01.jpg" class="single_image"> -->
                                <div class="blog-img-wrap">
                                    <div class="overlay">
                                        <i class="fa fa-search"></i>
                                    </div>
                                    <img src="resources/img/blog-img-01.jpg" alt="Sedna blog image"/>
                                </div>
                            </a>
                            <figcaption>
                            <h2><a href="#" class="blog-category" data-toggle="tooltip" data-placement="top" data-original-title="See more posts">Minigrid, Lilac</a></h2>
                            <p><a href="#" class="blog-post-title">Dobby, 100% Cotton <i class="fa fa-angle-right"></i></a></p>
                            </figcaption>
                        </figure>
                    </article>
                </div><div class="col-md-4">
                    <article class="blog-post">
                        <figure>
                            <!-- <a href="img/blog-img-01.jpg" class="single_image"> -->
                                <div class="blog-img-wrap">
                                    <div class="overlay">
                                        <i class="fa fa-search"></i>
                                    </div>
                                    <img src="resources/img/blog-img-01.jpg" alt="Sedna blog image"/>
                                </div>
                            </a>
                            <figcaption>
                            <h2><a href="#" class="blog-category" data-toggle="tooltip" data-placement="top" data-original-title="See more posts">Charcoal,Blue</a></h2>
                            <p><a href="#" class="blog-post-title">Dobby,100% Cotton <i class="fa fa-angle-right"></i></a></p>
                            </figcaption>
                        </figure>
                    </article>
                </div>
            </div>
            </div>    
        </div>
		</section>
		</div> <!-- .content-wrapper -->
	</main> <!-- .cd-main-content -->
<script src="resources/js/jquery-2.1.4.js"></script>
<script src="resources/js/jquery.menu-aim.js"></script>
<script src="resources/js/main.js"></script> <!-- Resource jQuery -->
</body>
</html>