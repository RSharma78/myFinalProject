<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">


<%@ include file="Header.jsp" %>

<div style="height: 50px"></div>

<div class="container panel panel-default" style="width: 600px; border-radius: 0px;">

  <div class="panel-heading" style="margin: 0px;background-color: #0pinkE8; color:black; font-weight: bold;
   text-align: center; font-size: 30px; border-radius: 0px;">
Registration  Page</div>
  <div class="panel-body">

<div class="text-center" style="padding-top: 50px;">
<form class="form-horizontal" role="form" action="thankyou.jsp" method="post">
  <div class="form-group">
    <label class="control-label col-sm-2" for="username">Email:</label>
    <div class="col-sm-10">
      <input type="text" class="form-control" id="username" name="username" placeholder="Enter username">
    </div>
  </div>
  <div class="form-group">
    <label class="control-label col-sm-2" for="pwd">Password:</label>
    <div class="col-sm-10"> 
      <input type="password" class="form-control" id="password" name="password" placeholder="Enter password">
    </div>
  </div>
  
   <div class="form-group">
    <label class="control-label col-sm-2" for="pwd">Confirm Password:</label>
    <div class="col-sm-10"> 
      <input type="password" class="form-control" id="password" name="cpassword" placeholder="Confirm Password">
    </div>
  </div>
   <div class="form-group">
    <label class="control-label col-sm-2" for="pwd">EMail ID:</label>
    <div class="col-sm-10"> 
      <input type="Email" class="form-control" id="password" name="emailid" placeholder="Enter Email ID">
    </div>
  </div>
  </form>
  
  <form action="">
	<h4></h4>
	<button   class="btn" style="margin: 0px;width:100px; background-color: #00A2E8; color:white; text-align: 
	center; font-size: 015x; border-radius: 0px;">
      Sign Up </button></form>
	</div>

	</div>
</div>


<jsp:include page="Footer.jsp"/>