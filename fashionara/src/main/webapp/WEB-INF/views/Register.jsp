<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ include file="Header.jsp" %>
<style>
div.ex {
	text-align: right width:300px;
	padding: 10px;
	border: 5px solid grey;
	margin: 0px
}
</style>
<div class="row">
<div class="col-xs-4">
<img src="D:\Training\fashionara\src\main\webapp\resources\images\dress11.jpg" alt="Image2">
</div>
<div class="col-xs-6" height:50px>
<h1>Registration Form</h1>  
<p>Use tab keys to move from one input field to the next.</p>  
<form name='registration'>  
<ul>  
<li><label for="userid">User id:</label></li>  
<li><input type="text" name="userid" size="12" /></li>  
<li><label for="passid">Password:</label></li>  
<li><input type="password" name="passid" size="12" /></li>  
<li><label for="username">Name:</label></li>  
<li><input type="text" name="username" size="50" /></li>  
<li><label for="address">Address:</label></li>  
<li><input type="text" name="address" size="50" /></li>  
<li><label for="country">Country:</label></li>  

<li><label for="zip">ZIP Code:</label></li>  
<li><input type="text" name="zip" /></li>  
<li><label for="email">Email:</label></li>  
<li><input type="text" name="email" size="50" /></li>  
<li><label id="gender">Sex:</label></li>  
<li><input type="radio" name="msex" value="Male" /><span>Male</span></li>  
<li><input type="radio" name="fsex" value="Female" /><span>Female</span></li>  
  
<li><input type="submit" name="submit" value="Submit" /></li>  
</ul>  
</form>  
</div>
<div class="col-xs-8">
<img src="D:\Training\fashionara\src\main\webapp\resources\images\dress11.jpg" alt="Image2">
</div>



</div>



