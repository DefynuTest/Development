<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="f" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html lang="en">

<head>

<meta http-equiv="content-type" content="text/html; charset=UTF-8">
<meta http-equiv="content-language" content="en">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
 <title>Customize Your Shirt.  </title>
<meta name="description" content="Bespokart is the online store for made-to-measure shirts and custom clothes, Online since 2016 ." />
		<meta name="keywords" content="shirts, tailor-made, customized shirts" />
		<meta name="viewport" content="width=device-width, initial-scale=1">
  <!-- <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.0/jquery.min.js"></script>
  <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script> -->
 <!-- <!--  <link rel="stylesheet" href="/resources/css/maxcdn.bootstrapcdn3.3.6_min.css">
 --><script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
  <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
  
    <link rel="shortcut icon" href="resources/img/favicon.ico"> 
<meta name="theme-color" content="#b11116">
 <script type="text/javascript" src="resources/js/modernizr.custom.js" ></script>
<spring:url value="/resources/css/bs.css" var="bsCSS" />
<link href="${bsCSS}" rel="stylesheet" />
<spring:url value="/resources/css/customize.css" var="customizeCSS" />
<link href="${customizeCSS}" rel="stylesheet" />
<%--<spring:url value="/resources/css/compoents.css" var="componentsCSS" />
 <link href="${componntsCSS}" rel="stylesheet" /> --%>

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
	 <div   class="logo"><a href="/hello"><img src="resources/img/brandblack.png" alt="Sedna logo"></a></div>
 <a id="cart" font-size="4em" align="right" href="/checkout" class="btn-white btn-small">BAG &nbsp; <span data-icon="&#xe027;" class="icon"></span> &nbsp; (${cart}) </a> 
<!-- add measurement -->
<button id="measurement-btn" type="button" class="btn btn-success" data-toggle="modal"  data-target="#myModal">
  Add Measurement
</button>	
<h5 style="color:#000;position:relative; float:right;margin-top:100px;">Measurement Profile:&nbsp;&nbsp;&nbsp;<b>${profile}</b></h5>
 
<!-- Modal -->

<div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
<form action="/defaultmeasurement" method = "GET">	
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
        <h4 class="modal-title" id="myModalLabel">Measurement Profile</h4>
      </div>
      <div class="modal-body">
	  <h5>Standard Size:</h5>
	  	<button type="button" class="btn btn-primary btn-xs"><a href="/Defynu/defaultmeasurement?neck=37&chest=87&hip=80&waist=75&seat=87&length=69&shoulder=42&arm=6&wrist=16&profile=XS&object=${status.index}" >XS</a></button>&nbsp;
        <button type="button" class="btn btn-primary btn-xs"><a href="/defaultmeasurement?neck=38&chest=92&hip=89&waist=83&seat=94&length=72&shoulder=44&arm=65&wrist=17&profile=S&object=${status.index}" >S</a></button>&nbsp;
		<button type="button" class="btn btn-primary btn-xs"><a href="/defaultmeasurement?neck=41&chest=97&hip=95&waist=91&seat=100&length=73&shoulder=48&arm=68&wrist=18&profile=M&object=${status.index}" >M</a></button>&nbsp;
		<button type="button" class="btn btn-primary btn-xs"><a href="/defaultmeasurement?neck=43&chest=105&hip=104&waist=99&seat=108&length=76&shoulder=50&arm=69&wrist=19&profile=L&object=${status.index}" >L</a></button>&nbsp;
		<button type="button" class="btn btn-primary btn-xs"><a href="/defaultmeasurement?neck=45&chest=113&hip=112&waist=107&seat=116&length=78&shoulder=54&arm=70&wrist=20&profile=XL&object=${status.index}" >XL</a></button>&nbsp;
		<button type="button" class="btn btn-primary btn-xs"><a href="/defaultmeasurement?neck=47&chest=121&hip=119&waist=115&seat=124&length=81&shoulder=58&arm=73&wrist=21&profile=XXL&object=${status.index}" >XXL</a></button>&nbsp;
		<button type="button" class="btn btn-success btn-xs" data-toggle="modal" data-target="#myModal1">Size Chart</button>
		
		<hr>
		<h5>Best Suited Sizes:</h5>
		
		
		 <form  action="/measurement" method="get">
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
    <option value="Reymonds">
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
  <input class="btn btn-primary btn-xs" type="submit">
</form>
		 <hr>
		<h5>Size Me:</h5>
		
		<button type="submit" class="btn btn-primary btn-xs" formaction="/measurement">Add Your Body Measuremensts</button>&nbsp;
		
					
<%-- <h4>${value.profile}</h4> --%>
	
	 </div>
		

      <div class="modal-footer">
        <button type="button" class="btn btn-default btn-xs" data-dismiss="modal">Close</button>
        
      </div>
    </div>
  </div>
</form>
</div>
<!-- add measurement tag end -->



   

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
    <th><button><a href="/defaultmeasurement?neck=37&chest=87&hip=80&waist=75&seat=87&length=69&shoulder=42&arm=6&wrist=16&profile=XS&object=${status.index}" class="btn btn-default">XS</a></button></th>
    <th><button><a href="/defaultmeasurement?neck=38&chest=92&hip=89&waist=83&seat=94&length=72&shoulder=44&arm=65&wrist=17&profile=S&object=${status.index}" class="btn btn-default">S</a></button></th>
    <th><button><a href="/defaultmeasurement?neck=41&chest=97&hip=95&waist=91&seat=100&length=73&shoulder=48&arm=68&wrist=18&profile=M&object=${status.index}" class="btn btn-default">M</a></button></th>
    <th><button><a href="/defaultmeasurement?neck=43&chest=105&hip=104&waist=99&seat=108&length=76&shoulder=50&arm=69&wrist=19&profile=L&object=${status.index}" class="btn btn-default">L</a></button></th>
    <th><button><a href="/defaultmeasurement?neck=45&chest=113&hip=112&waist=107&seat=116&length=78&shoulder=54&arm=70&wrist=20&profile=XL&object=${status.index}" class="btn btn-default">XL</a></button></th>
    <th><button><a href="/defaultmeasurement?neck=47&chest=121&hip=119&waist=115&seat=124&length=81&shoulder=58&arm=73&wrist=21&profile=XXL&object=${status.index}" class="btn btn-default">XXL</a></button></th>
    
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
  
</div>




















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
			 
				 
		
				<div class="column">
					<div id="dl-menu" class="dl-menuwrapper">
					
						  		<button class="dl-trigger">Open Menu</button>
						  		   
						<ul class="dl-menu">
						
							
<li>
										<a ><p><img src="resources/img/fabric.png" alt="Smiley face"   align="left"> &nbsp;<p>Fabric</p><p>Type</p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </p></a></a>
									
										 <ul class="dl-submenu">
										 
										  <li style="padding-top:35px;" onclick="loadDoc('/Defynu/designa?body=1&outercollar=bc0001&innercollar=0001&outercuff=sb0001&innercuff=0001&button=0001&buttonplacket=0001&outsidefastening=0001&pocket=sp0001&price=800')">
									
										<a><p><img src="resources/fabric/1.jpg" alt="Smiley face"   align="left"> &nbsp;<p>Gingham, Red</p><p>Oxford</p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </p></a>
									
									</li>
									<li onclick="loadDoc('/Defynu/designa?body=2&outercollar=bc0002&innercollar=0002&outercuff=sb0002&innercuff=0002&button=0002&buttonplacket=0002&outsidefastening=0002&pocket=sp0002&price=1200')" >
										<a><p><img src="resources/fabric/2.jpg" alt="Smiley face"   align="left"> &nbsp;<p>Aura, Purple</p><p>Oxford</p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </p></a>
									
									</li>
									<li onclick="loadDoc('/Defynu/designa?body=3&outercollar=bc0003&innercollar=0003&outercuff=sb0003&innercuff=0003&button=0003&buttonplacket=0003&outsidefastening=0003&pocket=sp0003&price=1000')">
										<a><p><img src="resources/fabric/3.jpg" alt="Smiley face"   align="left"> &nbsp;<p>Carmine, Red</p><p>Poplin</p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </p></a>
									
									</li>
									<li onclick="loadDoc('/Defynu/designa?body=4&outercollar=bc0004&innercollar=0004&outercuff=sb0004&innercuff=0004&button=0004&buttonplacket=0004&outsidefastening=0004&pocket=sp0004&price=1000')">
										<a ><p><img src="resources/fabric/4.jpg" alt="Smiley face"   align="left"> &nbsp;<p>Charcoal, Blue</p><p>Dobby</p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </p></a></a>
									
									</li>
									
									
									<li onclick="loadDoc('/Defynu/designa?body=5&outercollar=bc0005&innercollar=0005&outercuff=sb0005&innercuff=0005&button=0005&buttonplacket=0005&outsidefastening=0005&pocket=sp0005&price=1000')">
										<a ><p><img src="resources/fabric/5.jpg" alt="Smiley face"   align="left"> &nbsp;<p>Peacock, Blue</p><p>Twill</p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </p></a></a>
									
									</li>
									
									
									<li onclick="loadDoc('/Defynu/designa?body=6&outercollar=bc0006&innercollar=0006&outercuff=sb0006&innercuff=0006&button=0006&buttonplacket=0006&outsidefastening=0006&pocket=sp0006&price=1000')">
										<a ><img src="resources/fabric/6.jpg" alt="Smiley face"   align="left"> &nbsp;<p>Gingham, Blue</p><p>Poplin</p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </p></a></a>
									
									</li>
									<li onclick="loadDoc('/Defynu/designa?body=7&outercollar=bc0007&innercollar=0007&outercuff=sb0007&innercuff=0007&button=0007&buttonplacket=0007&outsidefastening=0007&pocket=sp0007&price=1000')">
										<a><p><img src="resources/fabric/7.jpg" alt="Smiley face"   align="left"> &nbsp;<p>Minigrid, Lilac</p><p>Dobby</p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </p></a></a>
									
									</li>
									
									
									<li onclick="loadDoc('/Defynu/designa?body=8&outercollar=bc0008&innercollar=0008&outercuff=sb0008&innercuff=0008&button=0008&buttonplacket=0008&outsidefastening=0008&pocket=sp0008&price=1000')">
										<a ><p><img src="resources/fabric/8.jpg" alt="Smiley face"   align="left"> &nbsp;<p>Arctic,Blue</p><p>Poplin</p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </p></a></a>
									
									</li>
									
									<li onclick="loadDoc('/Defynu/designa?body=9&outercollar=bc0009&innercollar=0009&outercuff=sb0009&innercuff=0009&button=0009&buttonplacket=0009&outsidefastening=0009&pocket=sp0009&price=1000')">
										<a ><p><img src="resources/fabric/9.jpg" alt="Smiley face"   align="left"> &nbsp;<p>Ethnic, Blue</p><p>Plain</p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </p></a></a>
									
									</li>
									
									<li onclick="loadDoc('/Defynu/designa?body=10&outercollar=bc0010&innercollar=0010&outercuff=sb0010&innercuff=0010&button=0010&buttonplacket=0010&outsidefastening=0010&pocket=sp0010&price=1000')">
										<a ><p><img src="resources/fabric/10.jpg" alt="Smiley face"   align="left"> &nbsp;<p>Heaven, White</p><p>Dobby</p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </p></a></a>
									
									</li>
									<li onclick="loadDoc('/Defynu/designa?body=11&outercollar=bc0011&innercollar=0011&outercuff=sb0011&innercuff=0011&button=0011&buttonplacket=0011&outsidefastening=0011&pocket=sp0011&price=1100')">
										<a ><p><img src="resources/fabric/11.jpg" alt="Smiley face"   align="left"> &nbsp;<p>Ethnic, Pink</p><p>Plain</p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </p></a></a>
									
									</li>
									<li onclick="loadDoc('/Defynu/designa?body=12&outercollar=bc0012&innercollar=0012&outercuff=sb0012&innercuff=0012&button=0012&buttonplacket=0012&outsidefastening=0012&pocket=sp0012&price=1200')">
										<a ><p><img src="resources/fabric/12.jpg" alt="Smiley face"   align="left"> &nbsp;<p>Ethnic, Peach</p><p>Plain</p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </p></a></a>
									
									</li>
											
										</ul> 
									</li>
							<li>
								<a ><p><img src="resources/img/businessclassic.svg" alt="Smiley face"   align="left"> &nbsp;<p>Collar</p><p>Type</p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </p></a></a>
									
								<ul class="dl-submenu">
								  <li style="padding-top:35px;" onclick="loadDoc('/Defynu/designc?outercollar=bc&list=type')">	
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
									<li style="padding-top:35px;" onclick="loadDoc('/Defynu/designocu?outercuff=sb&list=type')">
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
									<li style="padding-top:35px;" onclick="loadDoc('/Defynu/designp?pocket=np&list=type')">
									 <a ><p><img src="resources/img/disabled.png" alt="Smiley face"   align="left"> &nbsp;<p>No</p><p>Pocket</p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </p></a></a>
									</li>
									 <li onclick="loadDoc('/Defynu/designp?pocket=sp&list=type')">
									 <a ><p><img src="resources/img/straight.svg" alt="Smiley face"   align="left"> &nbsp;<p>Straight</p><p>Pocket</p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </p></a></a>
									</li>
									<!-- <li onclick="loadDoc('/Defynu/designp?pocket=fp&list=type')">
									<a ><p><img src="resources/img/pocketflap.svg" alt="Smiley face"   align="left"> &nbsp;<p>Flap</p><p>Pocket</p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </p></a></a>
									</li> -->
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
									<!-- <li style="padding-top:35px;"><a ><p><img src="resources/img/0.svg" alt="Smiley face"   align="left"> &nbsp;<p>Match with</p><p>Fabric</p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </p></a></a>
									</li> -->
									<li onclick="loadDoc('/Defynu/designbtn?button=0004')"><a ><p><img src="resources/img/buttonblack.png" alt="Smiley face"   align="left"> &nbsp;<p>Black</p><p>.</p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </p></a></a>
									</li>
									<li onclick="loadDoc('/Defynu/designbtn?button=0001')">><a><p><img src="resources/img/button.png" alt="Smiley face"   align="left"> &nbsp;<p>White</p><p>.</p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </p></a></a>
									</li>
									<!-- <li><a ><p><img src="resources/img/buttonred.png" alt="Smiley face"   align="left"> &nbsp;<p>Red</p><p>.</p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </p></a></a>
									</li> -->
									
								</ul>
							</li>
							<li>
								<a ><p><img src="resources/img/contrast.svg" alt="Smiley face"   align="left"> &nbsp;<p>Contrasts</p><p>.</p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </p></a></a>
								
								<ul class="dl-submenu">
								
								
								<li  >
									<a ><p style="padding-top:35px;"><img src="resources/img/body.svg" alt="Smiley face"   align="left"> &nbsp;<p>Body</p><p>Fabric</p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </p></a></a>
									
										 <ul class="dl-submenu">
										 
										 
									
									<li style="padding-top:35px;" onclick="loadDoc('/Defynu/designb?body=1&price=1000')">
									
										<a><p><img src="resources/fabric/1.jpg" alt="Smiley face"   align="left"> &nbsp;<p>Gingham, Red</p><p>Oxford</p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </p> </a>
										
									</li>
									<li onclick="loadDoc('/Defynu/designb?body=2&price=1000')" >
										<a ><p><img src="resources/fabric/2.jpg" alt="Smiley face"   align="left"> &nbsp;<p>Aura, Purple</p><p>Oxford</p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </p></a></a>
									
									</li>
									<li onclick="loadDoc('/Defynu/designb?body=3&price=1000')">
										<a ><p><img src="resources/fabric/3.jpg" alt="Smiley face"   align="left"> &nbsp;<p>Carmine, Red</p><p>Poplin</p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </p></a></a>
									
									</li>
									<li onclick="loadDoc('/Defynu/designb?body=4&price=1200')">
										<a ><p><img src="resources/fabric/4.jpg" alt="Smiley face"   align="left"> &nbsp;<p>Charcoal, Blue</p><p>Dobby</p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </p></a></a>
									
									</li>
									
									
									<li onclick="loadDoc('/Defynu/designb?body=5&price=1000')">
										<a ><p><img src="resources/fabric/5.jpg" alt="Smiley face"   align="left"> &nbsp;<p>Peacock, Blue</p><p>Twill</p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </p></a></a>
									
									</li>
									
									
									<li onclick="loadDoc('/Defynu/designb?body=6&price=1200')">
										<a ><p><img src="resources/fabric/6.jpg" alt="Smiley face"   align="left"> &nbsp;<p>Gingham, Blue</p><p>Poplin</p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </p></a></a>
									
									</li>
									<li onclick="loadDoc('/Defynu/designb?body=7&price=1000')">
										<a><p><img src="resources/fabric/7.jpg" alt="Smiley face"   align="left"> &nbsp;<p>Minigrid, Purple</p><p>Dobby</p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </p></a></a>
									
									</li>
									
									
									<li onclick="loadDoc('/Defynu/designb?body=8&price=1000')">
										<a ><p><img src="resources/fabric/8.jpg" alt="Smiley face"   align="left"> &nbsp;<p>Arctic, Blue</p><p>Poplin</p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </p></a></a>
									
									
							       </li>
							       
							       <li onclick="loadDoc('/Defynu/designb?body=9&price=1000')">
										<a><p><img src="resources/fabric/9.jpg" alt="Smiley face"   align="left"> &nbsp;<p>Ethnic, Blue</p><p>Plain</p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </p></a></a>
									
									</li>
									
									<li onclick="loadDoc('/Defynu/designb?body=10&price=1000')">
										<a><p><img src="resources/fabric/10.jpg" alt="Smiley face"   align="left"> &nbsp;<p>Heaven, White</p><p>Dobby</p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </p></a></a>
									
									</li>
									
									<li onclick="loadDoc('/Defynu/designb?body=11&price=1000')">
										<a><p><img src="resources/fabric/11.jpg" alt="Smiley face"   align="left"> &nbsp;<p>Ethnic, Pink</p><p>Plain</p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </p></a></a>
									
									</li>
									
									<li onclick="loadDoc('/Defynu/designb?body=12&price=1000')">
										<a><p><img src="resources/fabric/12.jpg" alt="Smiley face"   align="left"> &nbsp;<p>Ethnic, Peach</p><p>Plain</p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </p></a></a>
									
									</li>
										 
										 	</ul> 
									</li>
									
									
									<li>
									<a ><p><img src="resources/img/outercollar.svg" alt="Smiley face"   align="left"> &nbsp;<p>Collar</p><p>Fabric</p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </p></a></a>
									
										 <ul class="dl-submenu">
											<li style="padding-top:35px;" onclick="loadDoc('/Defynu/designc?outercollar=0001&list=contrast')">
									
										<a ><p><img src="resources/fabric/1.jpg" alt="Smiley face"   align="left"> &nbsp;<p>Gingham, Red</p><p>Oxford</p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </p></a>
										
									</li>
									<li onclick="loadDoc('/Defynu/designc?outercollar=0002&list=contrast')">
										<a ><p><img src="resources/fabric/2.jpg" alt="Smiley face"   align="left"> &nbsp;<p>Aura, Purple</p><p>Oxford</p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </p></a></a>
									
									</li>
									<li onclick="loadDoc('/Defynu/designc?outercollar=0003&list=contrast')">
										<a ><p><img src="resources/fabric/3.jpg" alt="Smiley face"   align="left"> &nbsp;<p>Carmine, Red</p><p>Poplin</p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </p></a></a>
									
									</li>
									<li onclick="loadDoc('/Defynu/designc?outercollar=0004&list=contrast')">
										<a ><p><img src="resources/fabric/4.jpg" alt="Smiley face"   align="left"> &nbsp;<p>Charcoal, Blue</p><p>Dobby</p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </p></a></a>
									
									</li>
									
									
									<li onclick="loadDoc('/Defynu/designc?outercollar=0005&list=contrast')">
										<a ><p><img src="resources/fabric/5.jpg" alt="Smiley face"   align="left"> &nbsp;<p>Peacock, Blue</p><p>Twill</p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </p></a></a>
									
									</li>
									
									
									<li onclick="loadDoc('/Defynu/designc?outercollar=0006&list=contrast')">
										<a ><p><img src="resources/fabric/6.jpg" alt="Smiley face"   align="left"> &nbsp;<p>Gingham, Blue</p><p>Poplin</p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </p></a></a>
									
									</li>
									<li onclick="loadDoc('/Defynu/designc?outercollar=0007&list=contrast')">
										<a ><p><img src="resources/fabric/7.jpg" alt="Smiley face"   align="left"> &nbsp;<p>Minigrid, Lilac</p><p>Dobby</p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </p></a></a>
									
									</li>
									
									
									<li onclick="loadDoc('/Defynu/designc?outercollar=0008&list=contrast')">
										<a><p><img src="resources/fabric/8.jpg" alt="Smiley face"   align="left"> &nbsp;<p>Arctic, blue</p><p>Poplin</p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </p></a></a>
									
									</li>
									<li onclick="loadDoc('/Defynu/designc?outercollar=0009&list=contrast')">
										<a><p><img src="resources/fabric/9.jpg" alt="Smiley face"   align="left"> &nbsp;<p>Ethnic, blue</p><p>Plain</p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </p></a></a>
									
									</li>
									<li onclick="loadDoc('/Defynu/designc?outercollar=0010&list=contrast')">
										<a><p><img src="resources/fabric/10.jpg" alt="Smiley face"   align="left"> &nbsp;<p>Heaven, White</p><p>Dobby</p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </p></a></a>
									
									</li>
									<li onclick="loadDoc('/Defynu/designc?outercollar=0011&list=contrast')">
										<a><p><img src="resources/fabric/11.jpg" alt="Smiley face"   align="left"> &nbsp;<p>Ethnic, Pink</p><p>Plain</p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </p></a></a>
									
									</li>
									<li onclick="loadDoc('/Defynu/designc?outercollar=0012&list=contrast')">
										<a><p><img src="resources/fabric/12.jpg" alt="Smiley face"   align="left"> &nbsp;<p>Ethnic, Peach</p><p>Plain</p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </p></a></a>
									
									</li>
										</ul> 
									</li>
									<li>
										<a ><p><img src="resources/img/innercollar.svg" alt="Smiley face"   align="left"> &nbsp;<p>Innercollar</p><p>Fabric</p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </p></a></a>
									
											
											<ul class="dl-submenu">
											
												<li style="padding-top:35px;" onclick="loadDoc('/Defynu/designic?innercollar=0001')">
									
										<a><p><img src="resources/fabric/1.jpg" alt="Smiley face"   align="left"> &nbsp;<p>Gingham, Red</p><p>Oxford</p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </p></a>
										
									</li>
									<li onclick="loadDoc('/Defynu/designic?innercollar=0002')">
										<a><p><img src="resources/fabric/2.jpg" alt="Smiley face"   align="left"> &nbsp;<p>Aura, Purple</p><p>Oxford</p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </p></a></a>
									
									</li>
									<li onclick="loadDoc('/Defynu/designic?innercollar=0003')">
										<a><p><img src="resources/fabric/3.jpg" alt="Smiley face"   align="left"> &nbsp;<p>Carmine, Red</p><p>Poplin</p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </p></a></a>
									
									</li>
									<li onclick="loadDoc('/Defynu/designic?innercollar=0004')">
										<a><p><img src="resources/fabric/4.jpg" alt="Smiley face"   align="left"> &nbsp;<p>Charcoal, Blue</p><p>Dobby</p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </p></a></a>
									
									</li>
									
									
									<li onclick="loadDoc('/Defynu/designic?innercollar=0005')">
										<a><p><img src="resources/fabric/5.jpg" alt="Smiley face"   align="left"> &nbsp;<p>Peacock, Blue</p><p>Twill</p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </p></a></a>
									
									</li>
									
									
									<li onclick="loadDoc('/Defynu/designic?innercollar=0006')">
										<a><p><img src="resources/fabric/6.jpg" alt="Smiley face"   align="left"> &nbsp;<p>Gingham, Blue</p><p>Poplin</p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </p></a></a>
									
									</li>
									<li onclick="loadDoc('/Defynu/designic?innercollar=0007')">
										<a><p><img src="resources/fabric/7.jpg" alt="Smiley face"   align="left"> &nbsp;<p>Minigrid, Lilac</p><p>Dobby</p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </p></a></a>
									
									</li>
									
									
									<li onclick="loadDoc('/Defynu/designic?innercollar=0008')">
										<a><p><img src="resources/fabric/8.jpg" alt="Smiley face"   align="left"> &nbsp;<p>Arctic, Blue</p><p>Poplin</p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </p></a></a>
									
									</li>
									
									<li onclick="loadDoc('/Defynu/designic?innercollar=0009')">
										<a><p><img src="resources/fabric/9.jpg" alt="Smiley face"   align="left"> &nbsp;<p>Ethnic, Blue</p><p>Plain</p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </p></a></a>
									
									</li>
									
									<li onclick="loadDoc('/Defynu/designic?innercollar=0010')">
										<a><p><img src="resources/fabric/10.jpg" alt="Smiley face"   align="left"> &nbsp;<p>Heaven, White</p><p>Dobby</p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </p></a></a>
									
									</li>
									
									<li onclick="loadDoc('/Defynu/designic?innercollar=0011')">
										<a><p><img src="resources/fabric/11.jpg" alt="Smiley face"   align="left"> &nbsp;<p>Ethnic, Pink</p><p>Plain</p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </p></a></a>
									
									</li>
									
									<li onclick="loadDoc('/Defynu/designic?innercollar=0012')">
										<a><p><img src="resources/fabric/12.jpg" alt="Smiley face"   align="left"> &nbsp;<p>Ethnic, Peach</p><p>Plain</p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </p></a></a>
									
									</li>
											</ul>
												
									</li>
									
									
									
									<li>
										<a ><p><img src="resources/img/outercuff.svg" alt="Smiley face"   align="left"> &nbsp;<p>Outercuff</p><p>Fabric</p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </p></a></a>
									
											
											<ul class="dl-submenu">
											
													<li style="padding-top:35px;" onclick="loadDoc('/Defynu/designocu?outercuff=0001&list=contrast')">
									
										<a><p><img src="resources/fabric/1.jpg" alt="Smiley face"   align="left"> &nbsp;<p>Gingham, Red</p><p>Oxford</p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </p></a>
										
									</li>
									<li onclick="loadDoc('/Defynu/designocu?outercuff=0002&list=contrast')">
										<a><p><img src="resources/fabric/2.jpg" alt="Smiley face"   align="left"> &nbsp;<p>Aura, Purple</p><p>Oxford</p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </p></a></a>
									
									</li>
									<li onclick="loadDoc('/Defynu/designocu?outercuff=0003&list=contrast')">
										<a><p><img src="resources/fabric/3.jpg" alt="Smiley face"   align="left"> &nbsp;<p>Carmine, Red</p><p>Poplin</p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </p></a></a>
									
									</li>
									<li onclick="loadDoc('/Defynu/designocu?outercuff=0004&list=contrast')">
										<a><p><img src="resources/fabric/4.jpg" alt="Smiley face"   align="left"> &nbsp;<p>Charcoal, Blue</p><p>Dobby</p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </p></a></a>
									
									</li>
									
									
									<li onclick="loadDoc('/Defynu/designocu?outercuff=0005&list=contrast')">
										<a><p><img src="resources/fabric/5.jpg" alt="Smiley face"   align="left"> &nbsp;<p>Peacock, Blue</p><p>Twill</p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </p></a></a>
									
									</li>
									
									
									<li onclick="loadDoc('/Defynu/designocu?outercuff=0006&list=contrast')">
										<a><p><img src="resources/fabric/6.jpg" alt="Smiley face"   align="left"> &nbsp;<p>Gingham, Blue</p><p>Poplin</p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </p></a></a>
									
									</li>
									<li onclick="loadDoc('/Defynu/designocu?outercuff=0007&list=contrast')">
										<a><p><img src="resources/fabric/7.jpg" alt="Smiley face"   align="left"> &nbsp;<p>Minigrid, Lilac</p><p>Dobby</p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </p></a></a>
									
									</li>
									
									
									<li onclick="loadDoc('/Defynu/designocu?outercuff=0008&list=contrast')">
										<a><p><img src="resources/fabric/8.jpg" alt="Smiley face"   align="left"> &nbsp;<p>Arctic, Blue</p><p>Poplin</p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </p></a></a>
									
									</li>
									
									
									<li onclick="loadDoc('/Defynu/designocu?outercuff=0009&list=contrast')">
										<a><p><img src="resources/fabric/9.jpg" alt="Smiley face"   align="left"> &nbsp;<p>Ethnic, Blue</p><p>Plain</p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </p></a></a>
									
									</li>
									
									
									<li onclick="loadDoc('/Defynu/designocu?outercuff=0010&list=contrast')">
										<a><p><img src="resources/fabric/10.jpg" alt="Smiley face"   align="left"> &nbsp;<p>Heaven, White</p><p>Dobby</p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </p></a></a>
									
									</li>
									
									
									<li onclick="loadDoc('/Defynu/designocu?outercuff=0011&list=contrast')">
										<a><p><img src="resources/fabric/11.jpg" alt="Smiley face"   align="left"> &nbsp;<p>Ethnic, Pink</p><p>Plain</p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </p></a></a>
									
									</li>
									
									
									<li onclick="loadDoc('/Defynu/designocu?outercuff=0012&list=contrast')">
										<a><p><img src="resources/fabric/12.jpg" alt="Smiley face"   align="left"> &nbsp;<p>Ethnic, Peach</p><p>Plain</p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </p></a></a>
									
									</li>
											</ul>
												
									</li>
									
									<li>
										<a ><p><img src="resources/img/innercuff.svg" alt="Smiley face"   align="left"> &nbsp;<p>Innercuff</p><p>Fabric</p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </p></a></a>
									
											
											<ul class="dl-submenu">
									
												<li style="padding-top:35px;" onclick="loadDoc('/Defynu/designicu?innercuff=0001')">
									
										<a><p><img src="resources/fabric/1.jpg" alt="Smiley face"   align="left"> &nbsp;<p>Gingham, Red</p><p>Oxford</p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </p></a>
										
									</li>
									<li onclick="loadDoc('/Defynu/designicu?innercuff=0002')">
										<a><p><img src="resources/fabric/2.jpg" alt="Smiley face"   align="left"> &nbsp;<p>Aura, Purple</p><p>Oxford</p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </p></a></a>
									
									</li>
									<li onclick="loadDoc('/Defynu/designicu?innercuff=0003')">
										<a><p><img src="resources/fabric/3.jpg" alt="Smiley face"   align="left"> &nbsp;<p>Carmine, Red</p><p>Poplin</p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </p></a></a>
									
									</li>
									<li onclick="loadDoc('/Defynu/designicu?innercuff=0004')">
										<a><p><img src="resources/fabric/4.jpg" alt="Smiley face"   align="left"> &nbsp;<p>Charcoal, Blue</p><p>Dobby</p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </p></a></a>
									
									</li>
									
									
									<li onclick="loadDoc('/Defynu/designicu?innercuff=0005')">
										<a><p><img src="resources/fabric/5.jpg" alt="Smiley face"   align="left"> &nbsp;<p>Peacock, Blue</p><p>Twill</p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </p></a></a>
									
									</li>
									
									
									<li onclick="loadDoc('/Defynu/designicu?innercuff=0006')">
										<a><p><img src="resources/fabric/6.jpg" alt="Smiley face"   align="left"> &nbsp;<p>Gingham, Blue</p><p>Poplin</p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </p></a></a>
									
									</li>
									<li onclick="loadDoc('/Defynu/designicu?innercuff=0007')">
										<a><p><img src="resources/fabric/7.jpg" alt="Smiley face"   align="left"> &nbsp;<p>Minigrid, Lilac</p><p>Dobby</p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </p></a></a>
									
									</li>
									
									
									<li onclick="loadDoc('/Defynu/designicu?innercuff=0008')">
										<a><p><img src="resources/fabric/8.jpg" alt="Smiley face"   align="left"> &nbsp;<p>Arctic, Blue</p><p>Poplin</p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </p></a></a>
									
									</li>
									
									<li onclick="loadDoc('/Defynu/designicu?innercuff=0009')">
										<a><p><img src="resources/fabric/9.jpg" alt="Smiley face"   align="left"> &nbsp;<p>Ethnic, Blue</p><p>Plain</p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </p></a></a>
									
									</li>
									
									<li onclick="loadDoc('/Defynu/designicu?innercuff=0010')">
										<a><p><img src="resources/fabric/10.jpg" alt="Smiley face"   align="left"> &nbsp;<p>Heaven, White</p><p>Dobby</p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </p></a></a>
									
									</li>
									
									<li onclick="loadDoc('/Defynu/designicu?innercuff=0011')">
										<a><p><img src="resources/fabric/11.jpg" alt="Smiley face"   align="left"> &nbsp;<p>Ethnic, Pink</p><p>Plain</p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </p></a></a>
									
									</li>
									
									<li onclick="loadDoc('/Defynu/designicu?innercuff=0012')">
										<a><p><img src="resources/fabric/12.jpg" alt="Smiley face"   align="left"> &nbsp;<p>Arctic, Peach</p><p>Plain</p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </p></a></a>
									
									</li>
									
											</ul>
												
									</li>
									
									
									
									<li>
										<a ><p><img src="resources/img/buttonplacket.svg" alt="Smiley face"   align="left"> &nbsp;<p>Button</p><p>Placket</p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </p></a></a>
									
											
											<ul class="dl-submenu">
											<li style="padding-top:35px;" onclick="loadDoc('/Defynu/designbp?buttonplacket=0001')">
									
										<a><p><img src="resources/fabric/1.jpg" alt="Smiley face"   align="left"> &nbsp;<p>Gingham, Red</p><p>Oxford</p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </p></a>
										
									</li>
									<li onclick="loadDoc('/Defynu/designbp?buttonplacket=0002')">
										<a><p><img src="resources/fabric/2.jpg" alt="Smiley face"   align="left"> &nbsp;<p>Aura, Purple</p><p>Oxford</p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </p></a></a>
									
									</li>
									<li onclick="loadDoc('/Defynu/designbp?buttonplacket=0003')">
										<a><p><img src="resources/fabric/3.jpg" alt="Smiley face"   align="left"> &nbsp;<p>Carmine, Red</p><p>Poplin</p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </p></a></a>
									
									</li>
									<li onclick="loadDoc('/Defynu/designbp?buttonplacket=0004')">
										<a><p><img src="resources/fabric/4.jpg" alt="Smiley face"   align="left"> &nbsp;<p>Charcoal, Blue</p><p>Dobby</p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </p></a></a>
									
									</li>
									
									
									<li onclick="loadDoc('/Defynu/designbp?buttonplacket=0005')">
										<a><p><img src="resources/fabric/5.jpg" alt="Smiley face"   align="left"> &nbsp;<p>Peacock, Blue</p><p>Twill</p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </p></a></a>
									
									</li>
									
									
									<li onclick="loadDoc('/Defynu/designbp?buttonplacket=0006')">
										<a><p><img src="resources/fabric/6.jpg" alt="Smiley face"   align="left"> &nbsp;<p>Gingham, Blue</p><p>Poplin</p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </p></a></a>
									
									</li>
									<li onclick="loadDoc('/Defynu/designbp?buttonplacket=0007')">
										<a><p><img src="resources/fabric/7.jpg" alt="Smiley face"   align="left"> &nbsp;<p>Minigrid, Lilac</p><p>Dobby</p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </p></a></a>
									
									</li>
									
									
									<li onclick="loadDoc('/Defynu/designbp?buttonplacket=0008')">
										<a><p><img src="resources/fabric/8.jpg" alt="Smiley face"   align="left"> &nbsp;<p>Arctic, Blue</p><p>Poplin</p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </p></a></a>
									
									</li>
									
									<li onclick="loadDoc('/Defynu/designbp?buttonplacket=0009')">
										<a><p><img src="resources/fabric/9.jpg" alt="Smiley face"   align="left"> &nbsp;<p>Ethnic, Blue</p><p>Plain</p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </p></a></a>
									
									</li>
									
									<li onclick="loadDoc('/Defynu/designbp?buttonplacket=0010')">
										<a><p><img src="resources/fabric/10.jpg" alt="Smiley face"   align="left"> &nbsp;<p>Heaven, White</p><p>Dobby</p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </p></a></a>
									
									</li>
									
									<li onclick="loadDoc('/Defynu/designbp?buttonplacket=0011')">
										<a><p><img src="resources/fabric/11.jpg" alt="Smiley face"   align="left"> &nbsp;<p>Ethnic, Pink</p><p>Plain</p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </p></a></a>
									
									</li>
									
									<li onclick="loadDoc('/Defynu/designbp?buttonplacket=0012')">
										<a><p><img src="resources/fabric/12.jpg" alt="Smiley face"   align="left"> &nbsp;<p>Ethnic, Peach</p><p>Plain</p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </p></a></a>
									
									</li>
											</ul>
												
									</li>
									
									<li>
										<a ><p><img src="resources/img/outsidefastening.svg" alt="Smiley face"   align="left"> &nbsp;<p>Outside</p><p>Fastening</p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </p></a></a>
								
											
											<ul class="dl-submenu">
										
										
										
										<li style="padding-top:35px;" onclick="loadDoc('/Defynu/designof?outsidefastening=0001')">
									
										<a><p><img src="resources/fabric/1.jpg" alt="Smiley face"   align="left"> &nbsp;<p>Gingham, Red</p><p>Oxford</p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </p></a>
										
									</li>
									<li onclick="loadDoc('/Defynu/designof?outsidefastening=0002')">
										<a><p><img src="resources/fabric/2.jpg" alt="Smiley face"   align="left"> &nbsp;<p>Aura, Purple</p><p>Oxford</p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </p></a></a>
									
									</li>
									<li onclick="loadDoc('/Defynu/designof?outsidefastening=0003')">
										<a><p><img src="resources/fabric/3.jpg" alt="Smiley face"   align="left"> &nbsp;<p>Carmine, Red</p><p>Poplin</p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </p></a></a>
									
									</li>
									<li onclick="loadDoc('/Defynu/designof?outsidefastening=0004')">
										<a><p><img src="resources/fabric/4.jpg" alt="Smiley face"   align="left"> &nbsp;<p>Charcoal, Blue</p><p>Dobby</p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </p></a></a>
									
									</li>
									
									
									<li onclick="loadDoc('/Defynu/designof?outsidefastening=0005')">
										<a><p><img src="resources/fabric/5.jpg" alt="Smiley face"   align="left"> &nbsp;<p>Peacock, Blue</p><p>Twill</p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </p></a></a>
									
									</li>
									
									
									<li onclick="loadDoc('/Defynu/designof?outsidefastening=0006')">
										<a><p><img src="resources/fabric/6.jpg" alt="Smiley face"   align="left"> &nbsp;<p>Gingham, Blue</p><p>Poplin</p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </p></a></a>
									
									</li>
									<li onclick="loadDoc('/Defynu/designof?outsidefastening=0007')">
										<a><p><img src="resources/fabric/7.jpg" alt="Smiley face"   align="left"> &nbsp;<p>Minnigrid, Lilac</p><p>Dobby</p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </p></a></a>
									
									</li>
									
									
									<li onclick="loadDoc('/Defynu/designof?outsidefastening=0008')">
										<a><p><img src="resources/fabric/8.jpg" alt="Smiley face"   align="left"> &nbsp;<p>Arctic, Blue</p><p>Poplin</p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </p></a></a>
									
									</li>
									
									<li onclick="loadDoc('/Defynu/designof?outsidefastening=0009')">
										<a><p><img src="resources/fabric/9.jpg" alt="Smiley face"   align="left"> &nbsp;<p>Ethinc, Blue</p><p>Poplin</p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </p></a></a>
									
									</li>
									
									<li onclick="loadDoc('/Defynu/designof?outsidefastening=0010')">
										<a><p><img src="resources/fabric/10.jpg" alt="Smiley face"   align="left"> &nbsp;<p>Heaven, White</p><p>Dobby</p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </p></a></a>
									
									</li>
									
									<li onclick="loadDoc('/Defynu/designof?outsidefastening=0011')">
										<a><p><img src="resources/fabric/10.jpg" alt="Smiley face"   align="left"> &nbsp;<p>Ethnic, Pink</p><p>Plain</p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </p></a></a>
									
									</li>
									
									<li onclick="loadDoc('/Defynu/designof?outsidefastening=0012')">
										<a><p><img src="resources/fabric/12.jpg" alt="Smiley face"   align="left"> &nbsp;<p>Ethnic, Peach</p><p>Plain</p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </p></a></a>
									
									</li>
											</ul>
												
									</li>
									
									<li>
										<a ><p><img src="resources/img/pocket.svg" alt="Smiley face"   align="left"> &nbsp;<p>Pocket</p><p>Fabric</p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </p></a></a>
									
											
											<ul class="dl-submenu">
										
										
										
										<li style="padding-top:35px;" onclick="loadDoc('/Defynu/designp?pocket=0001&list=contrast')">
									
										<a><p><img src="resources/fabric/1.jpg" alt="Smiley face"   align="left"> &nbsp;<p>Gingham, Red</p><p>Oxford</p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </p></a>
										
									</li>
									<li onclick="loadDoc('/Defynu/designp?pocket=0002&list=contrast')">
										<a><p><img src="resources/fabric/2.jpg" alt="Smiley face"   align="left"> &nbsp;<p>Aura, Purple</p><p>Oxford</p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </p></a></a>
									
									</li>
									<li onclick="loadDoc('/Defynu/designp?pocket=0003&list=contrast')">
										<a><p><img src="resources/fabric/3.jpg" alt="Smiley face"   align="left"> &nbsp;<p>Carmine, Red</p><p>Poplin</p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </p></a></a>
									
									</li>
									<li onclick="loadDoc('/Defynu/designp?pocket=0004&list=contrast')">
										<a><p><img src="resources/fabric/4.jpg" alt="Smiley face"   align="left"> &nbsp;<p>Charcoal, Blue</p><p>Dobby</p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </p></a></a>
									
									</li>
									
									
									<li onclick="loadDoc('/Defynu/designp?pocket=0005&list=contrast')">
										<a><p><img src="resources/fabric/5.jpg" alt="Smiley face"   align="left"> &nbsp;<p>Peacock, Blue</p><p>Twill</p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </p></a></a>
									
									</li>
									
									
									<li onclick="loadDoc('/Defynu/designp?pocket=0006&list=contrast')">
										<a><p><img src="resources/fabric/6.jpg" alt="Smiley face"   align="left"> &nbsp;<p>Gingham, Blue</p><p>Poplin</p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </p></a></a>
									
									</li>
									<li onclick="loadDoc('/Defynu/designp?pocket=0007&list=contrast')">
										<a><p><img src="resources/fabric/7.jpg" alt="Smiley face"   align="left"> &nbsp;<p>Minigrid, Lilac</p><p>Dobby</p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </p></a></a>
									
									</li>
									
									
									<li onclick="loadDoc('/Defynu/designp?pocket=0008&list=contrast')">
										<a><p><img src="resources/fabric/8.jpg" alt="Smiley face"   align="left"> &nbsp;<p>Arctic, Blue</p><p>Poplin</p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </p></a></a>
									
									</li>
									
									<li onclick="loadDoc('/Defynu/designp?pocket=0009&list=contrast')">
										<a><p><img src="resources/fabric/9.jpg" alt="Smiley face"   align="left"> &nbsp;<p>Ethnic, Blue</p><p>Plain</p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </p></a></a>
									
									</li>
									
									<li onclick="loadDoc('/Defynu/designp?pocket=0010&list=contrast')">
										<a><p><img src="resources/fabric/10.jpg" alt="Smiley face"   align="left"> &nbsp;<p>Heaven, White</p><p>Dobby</p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </p></a></a>
									
									</li>
									
									<li onclick="loadDoc('/Defynu/designp?pocket=0011&list=contrast')">
										<a><p><img src="resources/fabric/11.jpg" alt="Smiley face"   align="left"> &nbsp;<p>Ethnic, Pink</p><p>Peach</p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </p></a></a>
									
									</li>
									
									<li onclick="loadDoc('/Defynu/designp?pocket=0012&list=contrast')">
										<a><p><img src="resources/fabric/12.jpg" alt="Smiley face"   align="left"> &nbsp;<p>Ethnic, Peach</p><p>Peach</p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </p></a></a>
									
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

 

		<div id="price">INR:&nbsp;${Price}<br>(30% Discount on Checkout)</div>
			<div id="body"><img src="resources/body/body${shirt}.png"></div>
			<div id="innercuff"><img src="resources/innercuff/innercuff${InnerCuff}.png"></div>
			<div id="outercuff"><img src="resources/outercuff/outercuff${OuterCuff}.png"></div>
			<div id="button"><img src="resources/button/button${Button}.png"></div>
			<div id="outsidefastening"><img src="resources/outsidefastening/outsidefastening${OutsideFastening}.png"></div>
			<div id="buttonplacket"><img src="resources/buttonplacket/buttonplacket${ButtonPlacket}.png"></div>
			<div id="innercollar"><img src="resources/innercollar/innercollar${InnerCollar}.png"></div>
			<div id="outercollar"><img src="resources/outercollar/outercollar${OuterCollar}.png"></div>
			<div id="pocket"><img src="resources/pocket/pocket${Pocket}.png"></div>
			
			
			                           
                           <c:set var="profile" scope="session" value="${profile}"/>
<c:choose>
  <c:when test="${profile == null}">
  		<br><br><br><br><br><br><br><br><br><br><br><br><button id="atc" type="button" class="btn btn-success" data-toggle="modal"  data-target="#myModal">
  Add to Cart
</button> <br><br><br><br><br><br><br>
	

 </c:when>
  
<c:otherwise>
   <form action= "/Defynu/addtocart?body=${shirt}&outercollar=${OuterCollar}&innercollar=${InnerCollar}&outercuff=${OuterCuff}&innercuff=${InnerCuff}&button=${Button}&buttonplacket=${ButtonPlacket}&outsidefastening=${OutsideFastening}&price=${Price}&pocket=${Pocket}">
			<br><br><br><br><br><br><br><br><br><br><br><br><input id="atc" type="submit" formmethod =  "POST" value = "Add to Cart"></form> <br><br><br><br><br><br><br>
	  
  </c:otherwise>
</c:choose>
			
			
		  </div>
		   
		   <button id="reset" onclick="loadDoc('/Defynu/designa?body=1&outercollar=bc0001&innercollar=0001&outercuff=sb0001&innercuff=0001&button=0001&buttonplacket=0001&outsidefastening=0001&price=800&pocket=sp1')">Reset</button> 

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

</body>

</html>
 