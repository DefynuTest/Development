<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">

<head>

<meta http-equiv="content-type" content="text/html; charset=UTF-8">
<meta http-equiv="content-language" content="en">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="description" content="Cotton Caress is the online store for made-to-measure shirts and custom clothes, Online since 2016 ." />
		<meta name="keywords" content="shirts, tailor-made, customized shirts" />
		<meta name="viewport" content="width=device-width, initial-scale=1">
  <!-- <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.0/jquery.min.js"></script>
  <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script> -->

<meta name="theme-color" content="#b11116">
 <script type="text/javascript" src="resources/js/modernizr.custom.js" ></script>

<spring:url value="/resources/css/customize.css" var="customizeCSS" />
<link href="${customizeCSS}" rel="stylesheet" />
<spring:url value="/resources/css/compoents.css" var="componentsCSS" />
<link href="${componntsCSS}" rel="stylesheet" />

<script>
function loadDoc(url) {
	
  var xhttp = new XMLHttpRequest();
  xhttp.onreadystatechange = function() {
    if (xhttp.readyState == 4 && xhttp.status == 200) {
      document.getElementById("background").innerHTML = xhttp.responseText;
      
    }
  };
  xhttp.open("GET",url, true);
  xhttp.send();
}

</script>
		
</head>
<body>
	 <div   class="logo"><a href="/hello"><img src="resources/img/aavarann-logo1.png" alt="Sedna logo"></a></div>
 <a id="cart" font-size="4em" align="right" href="#download" class="btn-white btn-small">BAG &nbsp; <span data-icon="&#xe027;" class="icon"></span> &nbsp; (${cart}) </a> 


<div class="container demo-1">	
			<!-- Codrops top bar -->
		<!--	<div class="codrops-top clearfix">
				<a href="http://tympanus.net/Tutorials/AppShowcase/"><strong>&laquo; Previous Demo: </strong>App Showcase</a>
				<span class="right"><a href="http://tympanus.net/codrops/?p=14753"><strong>Back to the Codrops Article</strong></a></span>
			</div><!--/ Codrops top bar -->
			<!--<header class="clearfix">
				<h1>Responsive Multi-Level Menu <span>Space-saving drop-down menu with subtle effects</span></h1>	
				 <nav class="codrops-demos">
					<a class="current-demo" href="index.html">Demo 1</a>
					<a href="index2.html">Demo 2</a>
					<a href="index3.html">Demo 3</a>
					<a href="index4.html">Demo 4</a>
					<a href="index5.html">Demo 5</a>
				</nav> 
			</header>
				-->
				
			<div class="main clearfix">
				
					</div>
				
		
				<div class="column">
					<div id="dl-menu" class="dl-menuwrapper">
						  		<button class="dl-trigger">Open Menu</button>
						<ul class="dl-menu">
						
							
<li>
										<a ><p><img src="resources/img/fabric.png" alt="Smiley face"   align="left"> &nbsp;<p>Fabric</p><p>Type</p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </p></a></a>
									
										 <ul class="dl-submenu">
										 
										  <li onclick="loadDoc('/Defynu/designa?body=1&outercollar=bc1&innercollar=1&outercuff=sb1&innercuff=1&button=1&buttonplacket=1&outsidefastening=1&pocket=sp1&price=800')">
									
										<a><p><img src="resources/fabric/1.jpg" alt="Smiley face"   align="left"> &nbsp;<p>Telde, blue</p><p>Chambray</p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </p></a>
									
									</li>
									<li onclick="loadDoc('/Defynu/designa?body=2&outercollar=bc2&innercollar=2&outercuff=sb2&innercuff=2&button=2&buttonplacket=2&outsidefastening=2&pocket=sp2&price=1200')" >
										<a><p><img src="resources/fabric/2.jpg" alt="Smiley face"   align="left"> &nbsp;<p>Telde, red</p><p>Chambray</p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </p></a>
									
									</li>
									<li onclick="loadDoc('/Defynu/designa?body=3&outercollar=bc3&innercollar=3&outercuff=sb3&innercuff=3&button=3&buttonplacket=3&outsidefastening=3&pocket=sp3&price=1000')">
										<a><p><img src="resources/fabric/3.jpg" alt="Smiley face"   align="left"> &nbsp;<p>Verin, blue</p><p>Chambray</p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </p></a>
									
									</li>
									<li onclick="loadDoc('/Defynu/designa?body=4&outercollar=bc4&innercollar=4&outercuff=sb4&innercuff=4&button=4&buttonplacket=4&outsidefastening=4&pocket=sp4&price=1000')">
										<a ><p><img src="resources/fabric/4.jpg" alt="Smiley face"   align="left"> &nbsp;<p>Amadora, light blue</p><p>Plain</p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </p></a></a>
									
									</li>
									
									
									<li onclick="loadDoc('/Defynu/designa?body=5&outercollar=bc5&innercollar=5&outercuff=sb5&innercuff=5&button=5&buttonplacket=5&outsidefastening=5&pocket=sp5&price=1000')">
										<a ><p><img src="resources/fabric/5.jpg" alt="Smiley face"   align="left"> &nbsp;<p>Canha, red and blue</p><p>Plain</p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </p></a></a>
									
									</li>
									
									
									<li onclick="loadDoc('/Defynu/designa?body=6&outercollar=bc6&innercollar=6&outercuff=sb6&innercuff=6&button=6&buttonplacket=6&outsidefastening=6&pocket=sp6&price=1000')">
										<a ><img src="resources/fabric/6.jpg" alt="Smiley face"   align="left"> &nbsp;<p>Caucel, pink</p><p>Poplin</p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </p></a></a>
									
									</li>
									<li onclick="loadDoc('/Defynu/designa?body=7&outercollar=bc7&innercollar=7&outercuff=sb7&innercuff=7&button=7&buttonplacket=7&outsidefastening=7&pocket=sp7&price=1000')">
										<a><p><img src="resources/fabric/7.jpg" alt="Smiley face"   align="left"> &nbsp;<p>Nipigon, purple</p><p>Twill</p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </p></a></a>
									
									</li>
									
									
									<li onclick="loadDoc('/Defynu/designa?body=8&outercollar=bc8&innercollar=8&outercuff=sb8&innercuff=8&button=8&buttonplacket=8&outsidefastening=8&pocket=sp8&price=1000')">
										<a ><p><img src="resources/fabric/8.jpg" alt="Smiley face"   align="left"> &nbsp;<p>Smithers, blue</p><p>Twill</p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </p></a></a>
									
									</li>
											
										</ul> 
									</li>
							<li>
								<a ><p><img src="resources/img/businessclassic.svg" alt="Smiley face"   align="left"> &nbsp;<p>Collar</p><p>Type</p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </p></a></a>
									
								<ul class="dl-submenu">
								  <li onclick="loadDoc('/Defynu/designc?outercollar=bc&list=type')">	
									<a ><p><img src="resources/img/businessclassic.svg" alt="Smiley face"   align="left"> &nbsp;<p>Business</p><p>Classic</p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </p></a></a>
									</li>
									 <li onclick="loadDoc('/Defynu/designc?outercollar=ca&list=type')">
									 <a ><p><img src="resources/img/cutaway.svg" alt="Smiley face"   align="left"> &nbsp;<p>Cut Away</p><p>Modern</p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </p></a></a>
									</li>
									 
									<!--  <li onclick="loadDoc('/Defynu/designc?outercollar=cl&list=type')">
									 <a ><p><img src="resources/img/club.svg" alt="Smiley face"   align="left"> &nbsp;<p>Club</p><p>House </p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </p></a></a>
									</li> -->
									<li onclick="loadDoc('/Defynu/designc?outercollar=bd&list=type')">
									 <a ><p><img src="resources/img/buttondown.svg" alt="Smiley face"   align="left"> &nbsp;<p>Button</p><p>Down</p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </p></a></a>
									</li>
									 <li onclick="loadDoc('/Defynu/designc?outercollar=mh&list=type')">
									  <a ><p><img src="resources/img/mao.svg" alt="Smiley face"   align="left"> &nbsp;<p>Mao</p><p>Half Collar</p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </p></a></a>
									</li>
								</ul>
							</li>
							<li>
							   <a ><p><img src="resources/img/singlebutton.svg" alt="Smiley face"   align="left"> &nbsp;<p>Cuff</p><p>Type</p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </p></a></a>
									
								<ul class="dl-submenu">
									<li onclick="loadDoc('/Defynu/designocu?outercuff=sb&list=type')">
									 <a ><p><img src="resources/img/singlebutton.svg" alt="Smiley face"   align="left"> &nbsp;<p>Single Button</p><p>Cuff</p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </p></a></a>
									</li>
									<li onclick="loadDoc('/Defynu/designocu?outercuff=cc&list=type')">
									<a ><p><img src="resources/img/convertible.svg" alt="Smiley face"   align="left"> &nbsp;<p>Convertible</p><p>Cuff</p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </p></a></a>
									</li>
									<li onclick="loadDoc('/Defynu/designocu?outercuff=db&list=type')">
									<a ><p><img src="resources/img/doublebutton.svg" alt="Smiley face"   align="left"> &nbsp;<p>Double Button</p><p>Cuff</p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </p></a></a>
									</li>
									<li onclick="loadDoc('/Defynu/designocu?outercuff=fc&list=type')">
									<a ><p><img src="resources/img/french.svg" alt="Smiley face"   align="left"> &nbsp;<p>French</p><p>Cuff</p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </p></a></a>
									</li>
									
								</ul>
							</li>
							<li>
								<a ><p><img src="resources/img/straight.svg" alt="Smiley face"   align="left"> &nbsp;<p>Pocket</p><p>Type</p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </p></a></a>
									
								<ul class="dl-submenu">
									<li onclick="loadDoc('/Defynu/designp?pocket=np&list=type')">
									 <a ><p><img src="resources/img/disabled.png" alt="Smiley face"   align="left"> &nbsp;<p>No</p><p>Pocket</p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </p></a></a>
									</li>
									 <li onclick="loadDoc('/Defynu/designp?pocket=sp&list=type')">
									 <a ><p><img src="resources/img/straight.svg" alt="Smiley face"   align="left"> &nbsp;<p>Straight</p><p>Pocket</p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </p></a></a>
									</li>
									<li onclick="loadDoc('/Defynu/designp?pocket=fp&list=type')">
									<a ><p><img src="resources/img/pocketflap.svg" alt="Smiley face"   align="left"> &nbsp;<p>Flap</p><p>Pocket</p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </p></a></a>
									</li>
									<!-- <li>
										<a href="#">Wedding Jewelry</a>
										<ul class="dl-submenu">
											<li><a href="#">Engagement Rings</a></li>
											<li><a href="#">Bridal Sets</a></li>
											<li><a href="#">Women's Wedding Bands</a></li>
											<li><a href="#">Men's Wedding Bands</a></li>
										</ul>
									</li> -->
								</ul>
							</li>
							<li>
								<a ><p><img src="resources/img/button.png" alt="Smiley face"   align="left"> &nbsp;<p>Button</p><p>Type</p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </p></a></a>
									
								<ul class="dl-submenu">
									<li><a ><p><img src="resources/img/0.svg" alt="Smiley face"   align="left"> &nbsp;<p>Match with</p><p>Fabric</p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </p></a></a>
									</li>
									<li><a ><p><img src="resources/img/buttonblack.png" alt="Smiley face"   align="left"> &nbsp;<p>Black</p><p>.</p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </p></a></a>
									</li>
									<li><a ><p><img src="resources/img/button.png" alt="Smiley face"   align="left"> &nbsp;<p>White</p><p>.</p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </p></a></a>
									</li>
									<li><a ><p><img src="resources/img/buttonred.png" alt="Smiley face"   align="left"> &nbsp;<p>Red</p><p>.</p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </p></a></a>
									</li>
									
								</ul>
							</li>
							<li>
								<a ><p><img src="resources/img/contrast.svg" alt="Smiley face"   align="left"> &nbsp;<p>Contrasts</p><p>.</p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </p></a></a>
								
								<ul class="dl-submenu">
								
								
								<li>
									<a ><p><img src="resources/img/body.svg" alt="Smiley face"   align="left"> &nbsp;<p>Body</p><p>Fabric</p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </p></a></a>
									
										 <ul class="dl-submenu">
										 
										 
									
									<li onclick="loadDoc('/Defynu/designb?body=1&price=1000')">
									
										<a><p><img src="resources/fabric/1.jpg" alt="Smiley face"   align="left"> &nbsp;<p>Telde, blue</p><p>Chambray</p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </p> </a>
										
									</li>
									<li onclick="loadDoc('/Defynu/designb?body=2&price=1000')" >
										<a ><p><img src="resources/fabric/2.jpg" alt="Smiley face"   align="left"> &nbsp;<p>Telde, red</p><p>Chambray</p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </p></a></a>
									
									</li>
									<li onclick="loadDoc('/Defynu/designb?body=3&price=1000')">
										<a ><p><img src="resources/fabric/3.jpg" alt="Smiley face"   align="left"> &nbsp;<p>Verin, blue</p><p>Chambray</p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </p></a></a>
									
									</li>
									<li onclick="loadDoc('/Defynu/designb?body=4&price=1200')">
										<a ><p><img src="resources/fabric/4.jpg" alt="Smiley face"   align="left"> &nbsp;<p>Amadora, light blue</p><p>Plain</p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </p></a></a>
									
									</li>
									
									
									<li onclick="loadDoc('/Defynu/designb?body=5&price=1000')">
										<a ><p><img src="resources/fabric/5.jpg" alt="Smiley face"   align="left"> &nbsp;<p>Canha, red and blue</p><p>Plain</p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </p></a></a>
									
									</li>
									
									
									<li onclick="loadDoc('/Defynu/designb?body=6&price=1200')">
										<a ><p><img src="resources/fabric/6.jpg" alt="Smiley face"   align="left"> &nbsp;<p>Caucel, pink</p><p>Poplin</p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </p></a></a>
									
									</li>
									<li onclick="loadDoc('/Defynu/designb?body=7&price=1000')">
										<a><p><img src="resources/fabric/7.jpg" alt="Smiley face"   align="left"> &nbsp;<p>Nipigon, purple</p><p>Twill</p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </p></a></a>
									
									</li>
									
									
									<li onclick="loadDoc('/Defynu/designb?body=8&price=1000')">
										<a ><p><img src="resources/fabric/8.jpg" alt="Smiley face"   align="left"> &nbsp;<p>Smithers, blue</p><p>Twill</p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </p></a></a>
									
									
							</li>
										 
										 	</ul> 
									</li>
									<li>
									<a ><p><img src="resources/img/outercollar.svg" alt="Smiley face"   align="left"> &nbsp;<p>Collar</p><p>Fabric</p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </p></a></a>
									
										 <ul class="dl-submenu">
											<li onclick="loadDoc('/Defynu/designc?outercollar=1&list=contrast')">
									
										<a ><p><img src="resources/fabric/1.jpg" alt="Smiley face"   align="left"> &nbsp;<p>Telde, blue</p><p>Chambray</p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </p></a>
										
									</li>
									<li onclick="loadDoc('/Defynu/designc?outercollar=2&list=contrast')">
										<a ><p><img src="resources/fabric/2.jpg" alt="Smiley face"   align="left"> &nbsp;<p>Telde, red</p><p>Chambray</p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </p></a></a>
									
									</li>
									<li onclick="loadDoc('/Defynu/designc?outercollar=3&list=contrast')">
										<a ><p><img src="resources/fabric/3.jpg" alt="Smiley face"   align="left"> &nbsp;<p>Verin, blue</p><p>Chambray</p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </p></a></a>
									
									</li>
									<li onclick="loadDoc('/Defynu/designc?outercollar=4&list=contrast')">
										<a ><p><img src="resources/fabric/4.jpg" alt="Smiley face"   align="left"> &nbsp;<p>Amadora, light blue</p><p>Plain</p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </p></a></a>
									
									</li>
									
									
									<li onclick="loadDoc('/Defynu/designc?outercollar=5&list=contrast')">
										<a ><p><img src="resources/fabric/5.jpg" alt="Smiley face"   align="left"> &nbsp;<p>Canha, red and blue</p><p>Plain</p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </p></a></a>
									
									</li>
									
									
									<li onclick="loadDoc('/Defynu/designc?outercollar=6&list=contrast')">
										<a ><p><img src="resources/fabric/6.jpg" alt="Smiley face"   align="left"> &nbsp;<p>Caucel, pink</p><p>Poplin</p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </p></a></a>
									
									</li>
									<li onclick="loadDoc('/Defynu/designc?outercollar=7&list=contrast')">
										<a ><p><img src="resources/fabric/7.jpg" alt="Smiley face"   align="left"> &nbsp;<p>Nipigon, purple</p><p>Twill</p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </p></a></a>
									
									</li>
									
									
									<li onclick="loadDoc('/Defynu/designc?outercollar=8&list=contrast')">
										<a><p><img src="resources/fabric/8.jpg" alt="Smiley face"   align="left"> &nbsp;<p>Smithers, blue</p><p>Twill</p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </p></a></a>
									
									</li>
										</ul> 
									</li>
									<li>
										<a ><p><img src="resources/img/innercollar.svg" alt="Smiley face"   align="left"> &nbsp;<p>Innercollar</p><p>Fabric</p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </p></a></a>
									
											
											<ul class="dl-submenu">
												<li onclick="loadDoc('/Defynu/designic?innercollar=1')">
									
										<a><p><img src="resources/fabric/1.jpg" alt="Smiley face"   align="left"> &nbsp;<p>Telde, blue</p><p>Chambray</p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </p></a>
										
									</li>
									<li onclick="loadDoc('/Defynu/designic?innercollar=2')">
										<a><p><img src="resources/fabric/2.jpg" alt="Smiley face"   align="left"> &nbsp;<p>Telde, red</p><p>Chambray</p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </p></a></a>
									
									</li>
									<li onclick="loadDoc('/Defynu/designic?innercollar=3')">
										<a><p><img src="resources/fabric/3.jpg" alt="Smiley face"   align="left"> &nbsp;<p>Verin, blue</p><p>Chambray</p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </p></a></a>
									
									</li>
									<li onclick="loadDoc('/Defynu/designic?innercollar=4')">
										<a><p><img src="resources/fabric/4.jpg" alt="Smiley face"   align="left"> &nbsp;<p>Amadora, light blue</p><p>Plain</p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </p></a></a>
									
									</li>
									
									
									<li onclick="loadDoc('/Defynu/designic?innercollar=5')">
										<a><p><img src="resources/fabric/5.jpg" alt="Smiley face"   align="left"> &nbsp;<p>Canha, red and blue</p><p>Plain</p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </p></a></a>
									
									</li>
									
									
									<li onclick="loadDoc('/Defynu/designic?innercollar=6')">
										<a><p><img src="resources/fabric/6.jpg" alt="Smiley face"   align="left"> &nbsp;<p>Caucel, pink</p><p>Poplin</p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </p></a></a>
									
									</li>
									<li onclick="loadDoc('/Defynu/designic?innercollar=7')">
										<a><p><img src="resources/fabric/7.jpg" alt="Smiley face"   align="left"> &nbsp;<p>Nipigon, purple</p><p>Twill</p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </p></a></a>
									
									</li>
									
									
									<li onclick="loadDoc('/Defynu/designic?innercollar=8')">
										<a><p><img src="resources/fabric/8.jpg" alt="Smiley face"   align="left"> &nbsp;<p>Smithers, blue</p><p>Twill</p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </p></a></a>
									
									</li>
											</ul>
												
									</li>
									
									
									
									<li>
										<a ><p><img src="resources/img/outercuff.svg" alt="Smiley face"   align="left"> &nbsp;<p>Outercuff</p><p>Fabric</p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </p></a></a>
									
											
											<ul class="dl-submenu">
											
													<li onclick="loadDoc('/Defynu/designocu?outercuff=1&list=contrast')">
									
										<a><p><img src="resources/fabric/1.jpg" alt="Smiley face"   align="left"> &nbsp;<p>Telde, blue</p><p>Chambray</p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </p></a>
										
									</li>
									<li onclick="loadDoc('/Defynu/designocu?outercuff=2&list=contrast')">
										<a><p><img src="resources/fabric/2.jpg" alt="Smiley face"   align="left"> &nbsp;<p>Telde, red</p><p>Chambray</p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </p></a></a>
									
									</li>
									<li onclick="loadDoc('/Defynu/designocu?outercuff=3&list=contrast')">
										<a><p><img src="resources/fabric/3.jpg" alt="Smiley face"   align="left"> &nbsp;<p>Verin, blue</p><p>Chambray</p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </p></a></a>
									
									</li>
									<li onclick="loadDoc('/Defynu/designocu?outercuff=4&list=contrast')">
										<a><p><img src="resources/fabric/4.jpg" alt="Smiley face"   align="left"> &nbsp;<p>Amadora, light blue</p><p>Plain</p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </p></a></a>
									
									</li>
									
									
									<li onclick="loadDoc('/Defynu/designocu?outercuff=5&list=contrast')">
										<a><p><img src="resources/fabric/5.jpg" alt="Smiley face"   align="left"> &nbsp;<p>Canha, red and blue</p><p>Plain</p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </p></a></a>
									
									</li>
									
									
									<li onclick="loadDoc('/Defynu/designocu?outercuff=6&list=contrast')">
										<a><p><img src="resources/fabric/6.jpg" alt="Smiley face"   align="left"> &nbsp;<p>Caucel, pink</p><p>Poplin</p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </p></a></a>
									
									</li>
									<li onclick="loadDoc('/Defynu/designocu?outercuff=7&list=contrast')">
										<a><p><img src="resources/fabric/7.jpg" alt="Smiley face"   align="left"> &nbsp;<p>Nipigon, purple</p><p>Twill</p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </p></a></a>
									
									</li>
									
									
									<li onclick="loadDoc('/Defynu/designocu?outercuff=8&list=contrast')">
										<a><p><img src="resources/fabric/8.jpg" alt="Smiley face"   align="left"> &nbsp;<p>Smithers, blue</p><p>Twill</p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </p></a></a>
									
									</li>
											</ul>
												
									</li>
									
									<li>
										<a ><p><img src="resources/img/innercuff.svg" alt="Smiley face"   align="left"> &nbsp;<p>Innercuff</p><p>Fabric</p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </p></a></a>
									
											
											<ul class="dl-submenu">
									
												<li onclick="loadDoc('/Defynu/designicu?innercuff=1')">
									
										<a><p><img src="resources/fabric/1.jpg" alt="Smiley face"   align="left"> &nbsp;<p>Telde, blue</p><p>Chambray</p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </p></a>
										
									</li>
									<li onclick="loadDoc('/Defynu/designicu?innercuff=2')">
										<a><p><img src="resources/fabric/2.jpg" alt="Smiley face"   align="left"> &nbsp;<p>Telde, red</p><p>Chambray</p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </p></a></a>
									
									</li>
									<li onclick="loadDoc('/Defynu/designicu?innercuff=3')">
										<a><p><img src="resources/fabric/3.jpg" alt="Smiley face"   align="left"> &nbsp;<p>Verin, blue</p><p>Chambray</p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </p></a></a>
									
									</li>
									<li onclick="loadDoc('/Defynu/designicu?innercuff=4')">
										<a><p><img src="resources/fabric/4.jpg" alt="Smiley face"   align="left"> &nbsp;<p>Amadora, light blue</p><p>Plain</p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </p></a></a>
									
									</li>
									
									
									<li onclick="loadDoc('/Defynu/designicu?innercuff=5')">
										<a><p><img src="resources/fabric/5.jpg" alt="Smiley face"   align="left"> &nbsp;<p>Canha, red and blue</p><p>Plain</p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </p></a></a>
									
									</li>
									
									
									<li onclick="loadDoc('/Defynu/designicu?innercuff=6')">
										<a><p><img src="resources/fabric/6.jpg" alt="Smiley face"   align="left"> &nbsp;<p>Caucel, pink</p><p>Poplin</p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </p></a></a>
									
									</li>
									<li onclick="loadDoc('/Defynu/designicu?innercuff=7')">
										<a><p><img src="resources/fabric/7.jpg" alt="Smiley face"   align="left"> &nbsp;<p>Nipigon, purple</p><p>Twill</p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </p></a></a>
									
									</li>
									
									
									<li onclick="loadDoc('/Defynu/designicu?innercuff=8')">
										<a><p><img src="resources/fabric/8.jpg" alt="Smiley face"   align="left"> &nbsp;<p>Smithers, blue</p><p>Twill</p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </p></a></a>
									
									</li>
									
											</ul>
												
									</li>
									
									
									
									<li>
										<a ><p><img src="resources/img/buttonplacket.svg" alt="Smiley face"   align="left"> &nbsp;<p>Button</p><p>Placket</p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </p></a></a>
									
											
											<ul class="dl-submenu">
											<li onclick="loadDoc('/Defynu/designbp?buttonplacket=1')">
									
										<a><p><img src="resources/fabric/1.jpg" alt="Smiley face"   align="left"> &nbsp;<p>Telde, blue</p><p>Chambray</p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </p></a>
										
									</li>
									<li onclick="loadDoc('/Defynu/designbp?buttonplacket=2')">
										<a><p><img src="resources/fabric/2.jpg" alt="Smiley face"   align="left"> &nbsp;<p>Telde, red</p><p>Chambray</p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </p></a></a>
									
									</li>
									<li onclick="loadDoc('/Defynu/designbp?buttonplacket=3')">
										<a><p><img src="resources/fabric/3.jpg" alt="Smiley face"   align="left"> &nbsp;<p>Verin, blue</p><p>Chambray</p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </p></a></a>
									
									</li>
									<li onclick="loadDoc('/Defynu/designbp?buttonplacket=4')">
										<a><p><img src="resources/fabric/4.jpg" alt="Smiley face"   align="left"> &nbsp;<p>Amadora, light blue</p><p>Plain</p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </p></a></a>
									
									</li>
									
									
									<li onclick="loadDoc('/Defynu/designbp?buttonplacket=5')">
										<a><p><img src="resources/fabric/5.jpg" alt="Smiley face"   align="left"> &nbsp;<p>Canha, red and blue</p><p>Plain</p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </p></a></a>
									
									</li>
									
									
									<li onclick="loadDoc('/Defynu/designbp?buttonplacket=6')">
										<a><p><img src="resources/fabric/6.jpg" alt="Smiley face"   align="left"> &nbsp;<p>Caucel, pink</p><p>Poplin</p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </p></a></a>
									
									</li>
									<li onclick="loadDoc('/Defynu/designbp?buttonplacket=7')">
										<a><p><img src="resources/fabric/7.jpg" alt="Smiley face"   align="left"> &nbsp;<p>Nipigon, purple</p><p>Twill</p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </p></a></a>
									
									</li>
									
									
									<li onclick="loadDoc('/Defynu/designbp?buttonplacket=8')">
										<a><p><img src="resources/fabric/8.jpg" alt="Smiley face"   align="left"> &nbsp;<p>Smithers, blue</p><p>Twill</p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </p></a></a>
									
									</li>
											</ul>
												
									</li>
									
									<li>
										<a ><p><img src="resources/img/outsidefastening.svg" alt="Smiley face"   align="left"> &nbsp;<p>Outside</p><p>Fastening</p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </p></a></a>
								
											
											<ul class="dl-submenu">
										
										
										
										<li onclick="loadDoc('/Defynu/designof?outsidefastening=1')">
									
										<a><p><img src="resources/fabric/1.jpg" alt="Smiley face"   align="left"> &nbsp;<p>Telde, blue</p><p>Chambray</p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </p></a>
										
									</li>
									<li onclick="loadDoc('/Defynu/designof?outsidefastening=2')">
										<a><p><img src="resources/fabric/2.jpg" alt="Smiley face"   align="left"> &nbsp;<p>Telde, red</p><p>Chambray</p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </p></a></a>
									
									</li>
									<li onclick="loadDoc('/Defynu/designof?outsidefastening=3')">
										<a><p><img src="resources/fabric/3.jpg" alt="Smiley face"   align="left"> &nbsp;<p>Verin, blue</p><p>Chambray</p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </p></a></a>
									
									</li>
									<li onclick="loadDoc('/Defynu/designof?outsidefastening=4')">
										<a><p><img src="resources/fabric/4.jpg" alt="Smiley face"   align="left"> &nbsp;<p>Amadora, light blue</p><p>Plain</p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </p></a></a>
									
									</li>
									
									
									<li onclick="loadDoc('/Defynu/designof?outsidefastening=5')">
										<a><p><img src="resources/fabric/5.jpg" alt="Smiley face"   align="left"> &nbsp;<p>Canha, red and blue</p><p>Plain</p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </p></a></a>
									
									</li>
									
									
									<li onclick="loadDoc('/Defynu/designof?outsidefastening=6')">
										<a><p><img src="resources/fabric/6.jpg" alt="Smiley face"   align="left"> &nbsp;<p>Caucel, pink</p><p>Poplin</p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </p></a></a>
									
									</li>
									<li onclick="loadDoc('/Defynu/designof?outsidefastening=7')">
										<a><p><img src="resources/fabric/7.jpg" alt="Smiley face"   align="left"> &nbsp;<p>Nipigon, purple</p><p>Twill</p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </p></a></a>
									
									</li>
									
									
									<li onclick="loadDoc('/Defynu/designof?outsidefastening=8')">
										<a><p><img src="resources/fabric/8.jpg" alt="Smiley face"   align="left"> &nbsp;<p>Smithers, blue</p><p>Twill</p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </p></a></a>
									
									</li>
											</ul>
												
									</li>
									
									<li>
										<a ><p><img src="resources/img/pocket.svg" alt="Smiley face"   align="left"> &nbsp;<p>Pocket</p><p>Fabric</p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </p></a></a>
									
											
											<ul class="dl-submenu">
										
										
										
										<li onclick="loadDoc('/Defynu/designp?pocket=1&list=contrast')">
									
										<a><p><img src="resources/fabric/1.jpg" alt="Smiley face"   align="left"> &nbsp;<p>Telde, blue</p><p>Chambray</p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </p></a>
										
									</li>
									<li onclick="loadDoc('/Defynu/designp?pocket=2&list=contrast')">
										<a><p><img src="resources/fabric/2.jpg" alt="Smiley face"   align="left"> &nbsp;<p>Telde, red</p><p>Chambray</p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </p></a></a>
									
									</li>
									<li onclick="loadDoc('/Defynu/designp?pocket=3&list=contrast')">
										<a><p><img src="resources/fabric/3.jpg" alt="Smiley face"   align="left"> &nbsp;<p>Verin, blue</p><p>Chambray</p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </p></a></a>
									
									</li>
									<li onclick="loadDoc('/Defynu/designp?pocket=4&list=contrast')">
										<a><p><img src="resources/fabric/4.jpg" alt="Smiley face"   align="left"> &nbsp;<p>Amadora, light blue</p><p>Plain</p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </p></a></a>
									
									</li>
									
									
									<li onclick="loadDoc('/Defynu/designp?pocket=5&list=contrast')">
										<a><p><img src="resources/fabric/5.jpg" alt="Smiley face"   align="left"> &nbsp;<p>Canha, red and blue</p><p>Plain</p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </p></a></a>
									
									</li>
									
									
									<li onclick="loadDoc('/Defynu/designp?pocket=6&list=contrast')">
										<a><p><img src="resources/fabric/6.jpg" alt="Smiley face"   align="left"> &nbsp;<p>Caucel, pink</p><p>Poplin</p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </p></a></a>
									
									</li>
									<li onclick="loadDoc('/Defynu/designp?pocket=7&list=contrast')">
										<a><p><img src="resources/fabric/7.jpg" alt="Smiley face"   align="left"> &nbsp;<p>Nipigon, purple</p><p>Twill</p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </p></a></a>
									
									</li>
									
									
									<li onclick="loadDoc('/Defynu/designp?pocket=8&list=contrast')">
										<a><p><img src="resources/fabric/8.jpg" alt="Smiley face"   align="left"> &nbsp;<p>Smithers, blue</p><p>Twill</p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </p></a></a>
									
									</li>
											</ul>
												
									</li>
									
									
									
									
									
									
									
									
									
								</ul>
							</li>
							
							
							
							
						</ul>
					</div><!-- /dl-menuwrapper -->
				</div>
			</div>
		<!-- /container -->
		<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.9.1/jquery.min.js"></script>
		 <script type="text/javascript" src="resources/js/jquery.dlmenu.js" ></script>
		 
		 <script>
			$(function() {
				$( '#dl-menu' ).dlmenu();
			});
			</script>
	

<div id="background">

 

		<div id="price">INR:&nbsp;${Price}</div>
			<div id="body"><img src="resources/body/body${shirt}.png"></div>
			<div id="innercuff"><img src="resources/innercuff/innercuff${InnerCuff}.png"></div>
			<div id="outercuff"><img src="resources/outercuff/outercuff${OuterCuff}.png"></div>
			<div id="button"><img src="resources/button/button${Button}.png"></div>
			<div id="outsidefastening"><img src="resources/outsidefastening/outsidefastening${OutsideFastening}.png"></div>
			<div id="buttonplacket"><img src="resources/buttonplacket/buttonplacket${ButtonPlacket}.png"></div>
			<div id="innercollar"><img src="resources/innercollar/innercollar${InnerCollar}.png"></div>
			<div id="outercollar"><img src="resources/outercollar/outercollar${OuterCollar}.png"></div>
			<div id="pocket"><img src="resources/pocket/pocket${Pocket}.png"></div>
			<form action= "/Defynu/addtocart?body=${shirt}&outercollar=${OuterCollar}&innercollar=${InnerCollar}&outercuff=${OuterCuff}&innercuff=${InnerCuff}&button=${Button}&buttonplacket=${ButtonPlacket}&outsidefastening=${OutsideFastening}&price=${Price}&pocket=${Pocket}">
			<br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><input id="atc" type="submit" formmethod =  "POST" value = "Add to Cart"></form> <br><br><br><br><br><br><br>

<button id="atc" onclick="loadDoc('/Defynu/designa?body=1&outercollar=bc1&innercollar=1&outercuff=sb1&innercuff=1&button=1&buttonplacket=1&outsidefastening=1&pocket=sp1&price=800')">Reset</button> 
		</div>
	 
		 
</body>
</html>
 