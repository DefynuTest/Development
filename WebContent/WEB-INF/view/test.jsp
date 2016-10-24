<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html >
  <head>
    <meta charset="UTF-8">
    <title>Multi Step Form with Progress Bar using jQuery and CSS3</title>
    
    
    <link rel="stylesheet" href="resources/css/reset.css">

    
        <link rel="stylesheet" href="resources/css/style.css">

    
    
    
    
  </head>

  <body>

    <!-- multistep form -->
<form id="msform" action="/Defynu/buy" method="POST">
  <!-- progressbar -->
  <ul id="progressbar">
    <li class="active">Delivery Address</li>
    <li>Payment Details</li>
  </ul>
  <!-- fieldsets -->
  <fieldset>
    <h2 class="fs-title">Delivery Address</h2>
    <input type="text" name="fname" placeholder="First Name" />
    <input type="text" name="lname" placeholder="Last Name" />
    <input type="text" name="number" placeholder="Phone" />
    <textarea name="address" placeholder="Address"></textarea>
    <input type="text" name="pin" placeholder="Pin Code" />
    <input type="button" name="next" class="next action-button" value="Next" />
  </fieldset>
  <fieldset>
    <h2 class="fs-title">Payment Details</h2>
    <h3 class="fs-subtitle">100% Secure Payment</h3>
    <input type="radio" name="pay" value="cod" >Cash on Delivery<br>
    <input type="radio" name="pay"value="online">Pay Online<br>
    <input type="button" name="previous" class="previous action-button" value="Previous" />
    <input type="submit" name="submit" class="submit action-button" value="Submit" />
  </fieldset>
</form>
    <script src='http://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js'></script>
<script src='http://cdnjs.cloudflare.com/ajax/libs/jquery-easing/1.3/jquery.easing.min.js'></script>

        <script src="resources/js/index.js"></script>

    
    
  </body>
</html>
    