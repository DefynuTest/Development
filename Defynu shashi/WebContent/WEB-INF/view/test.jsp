<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html >
  <head>
    <meta charset="UTF-8">
    <title>Fast Delivery and Secure Payment</title>
    
    
    <link rel="stylesheet" href="resources/css/reset.css">

    
        <link rel="stylesheet" href="resources/css/style.css">

    
    
    
    
  </head>

  <body>

    <!-- multistep form -->
<form id="msform" action="/buy" method="POST">
  <!-- progressbar -->
  <ul id="progressbar">
    <li class="active">Delivery Address</li>
    <li>Payment Details</li>
  </ul>
  <!-- fieldsets -->
  <fieldset>
    <h2 class="fs-title">Delivery Address</h2>
    <input type="text" name="fname" id="fname" placeholder="First Name" />
    <input type="text" name="lname" id="lname" placeholder="Last Name" />
    <input type="text" name="number" id="number" placeholder="Phone" />
    <textarea name="address" id="address" placeholder="Address"></textarea>
    <input type="text" name="pin" id="pin" placeholder="Pin Code" />
    <input type="button" onclick="validate()" name="next"  class="next action-button" value="Next" />
  </fieldset>
  
  <fieldset>
    <h2 class="fs-title">Payment Details</h2>
    <h3 class="fs-subtitle">100% Secure Payment</h3>
     <input type="radio" name="pay" id="payCOD"  value="cod" checked >Cash on Delivery<br> 
    <!-- <input type="radio" name="pay" id="payAmont" value="online">Pay Online<br> -->
    <input type="button" name="previous" class="previous action-button" value="Previous" />
    <input type="submit" name="submit" onclick="validatePaymentMethod()" class="submit action-button" value="Submit" />
  </fieldset>
</form>
    <script src='http://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js'></script>
<script src='http://cdnjs.cloudflare.com/ajax/libs/jquery-easing/1.3/jquery.easing.min.js'></script>

        <script src="resources/js/index.js"></script>
        
        <script type="text/javascript">
        
        function trimfield(str) 
        { 
            return str.replace(/^\s+|\s+$/g,''); 
        }
        
        function validate(){
        	
        	var fname = document.getElementById('fname').value;
        	var lname = document.getElementById('lname').value;
        	var number = document.getElementById('number').value;
        	var pin = document.getElementById('pin').value;
        	var address = document.getElementById('address').value;
        	
        	if("" == fname || "" == lname || "" == number || "" == pin || ("" == trimfield(address))) 
            {        
        		animating = true;

        	}else{
        		animating = false;
        	}
        	
        	
        
        }
        
        function validatePaymentMethod(){
        	var fname = document.getElementById('payCOD').value;
        	var lname = document.getElementById('payAmont').value;
        	
        	if((!document.getElementById('payCOD').checked) && (!document.getElementById('payAmont').checked)){
        		
        	animating = true;

    	}else{
    		animating = false;
    	}
        	
        }
        </script>

    
    
  </body>
</html>
    