<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ include file="Header.jsp" %>


 <script>
        var myApp=angular.module('myApp', [])

        myApp.controller('jsonCtrl', function($scope,$http) {

        	 
        	        $scope.music = <%=request.getAttribute("list")%>;
        	        $scope.myFunction = function() 
        	        {
        	        	$scope.music = <%=request.getAttribute("list")%>;
        	        	
        	        	$scope.dressid=music.dressid;
        	         	$scope.color=music.color;
        	           	$scope.price=music.price;
        	        	$scope.size=music.size;
        	        	$scope.style=music.style;
        	          	$scope.gtype=music.gtype;
	       	      		$scope.name=music.name;
        	                    	
        	        	

        	       }
        	      
        	      
        });
        </script>
        
        <table >
        <tr>
        
        
          <td>
        <form  method="post" action=" deleteDress">
      	<input type="hidden" value={{roll.dressid}} name="dressid"/>
        <input type="hidden" value={{roll.color}} name="color"/>
        <input type="hidden" value={{roll.price}} name="price"/>
        <input type="hidden" value={{roll.size}} name="size"/>
         <input type="hidden" value={{roll.style}} name="style"/>
         <input type="hidden" value={{roll.gtype}} name="gtype"/>
         <input type="hidden" value={{roll.name}} name="name"/>
       
       
        </form></td></tr>
        <tr>
      
         <!-- <tr ng-repeat="roll in music | orderBy:sortType:sortReverse | filter:searchMusic"> -->
         
        <td>{{ roll.dressid }}</td>
        <td>{{ roll.color }}</td>
        <td>{{ roll.price }}</td>
        <td>{{ roll.size }}</td>
        <td>{{ roll.style}}</td>
        <td>{{ roll.gtype }}</td>
        <td>{{ roll.name}}</td>
     
        </tr>
        
        </table>



<%--  <div class="container">
  <img src="resources/images/img24.jpg" />
  <p><font face="Algerian" color="blue" size="60"><%=request.getParameter("name")%></font></p>
      </div>
      
      
      <div class="container">
     <p align="right">
     <font face="Times new roman" size="20">
      <%=request.getParameter("list")%></font></p>
    <p align="right"><font size="20">  <%=request.getParameter("list")%></font></p>
      <p align="right"><font size="20"><%=request.getParameter("list")%></font></p>
       <p align="right"><button type="submit" class="btn btn-primary">
       <span class="glyphicon glyphicon-shopping-cart">
       </span> Add to Cart</button></p>
       </div>
 --%>

<%@ include file="Footer.jsp" %>​