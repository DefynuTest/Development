<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title></title>
</head>
<body>

<div id="background">
	<div id="price">INR:&nbsp;${Price}<br>(30% Discount on Checkout)</div></div>
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
			<br><br><br><br><br><br><br><br><br><br><br><br> <input id="atc" type="submit" formmethod =  "POST" value="Add to Cart"></form> <br><br><br><br><br><br><br>
			
		</div>

</body>
</html>