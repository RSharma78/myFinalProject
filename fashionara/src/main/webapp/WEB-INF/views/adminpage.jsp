<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1" isELIgnored="false" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
 <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ include file="Header.jsp"%>

<link rel="sheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css" />
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.2/jquery.min.js"></script>
<script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
<script src="http://ajax.googleapis.com/ajax/libs/angularjs/1.4.8/angular.min.js"></script>
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
<div = "height:300">


<form:form method="POST" action="addnewdress" commandName="dresses" modelAttribute="dress"  
class="form-horizontal" role="form" enctype="multipart/form-data">

 <!--  <div class="container panel panel-center" style="width: 500px; border-radius: 0px;"> -->
   <div>
   <table align="center">
<c:if test="${!empty dresses.name}"> 
   
   
    <tr ="padding:10px;">
        <td>
            <form:label class="control-label" path="name">
                <spring:message text="ID"/>
            </form:label>
        </td>
        <td>
            <form:input path="dressid" readonly="true" size="8"  disabled="true" ng-model="dressid" class="form-control" />
            <form:input path="dressid" />
        </td> 
    </tr>
     </c:if> 
    <tr>
        <td><form:label path="size">Size</form:label></td>
        <td><form:input path="size" /></td>
        <td><form:errors path="size"/></td>
    </tr>
    <tr>
        <td><form:label path="style">Style</form:label></td>
        <td><form:input path="style" /></td>
        <td><form:errors path="style"/></td>
    </tr>
     <tr>
        <td><form:label path="color">Color</form:label></td>
        <td><form:input path="color" /></td>
        <td><form:errors path="color"/></td>
    </tr>
     <tr>
        <td><form:label path="price">Price</form:label></td>
        <td><form:input path="price" /></td>
        <td><form:errors path="price"/></td>
    </tr>
    <tr>
        <tr>
        <td>
            <form:label path="gtype">
                <spring:message text="gtype" />
                <td><form:errors path="gtype"/></td>
            </form:label>
        </td>
        <td>
           <form:select path="gtype">
           		<form:option value="Men">Men's</form:option>
           		<form:option value="Women">Women's</form:option>
           		<form:option value="kids">Kids'</form:option>
           </form:select>
        </td></tr>
        <tr>
        <td><form:label path="name">Name</form:label></td>
        <td><form:input path="name" /></td>
        <td><form:errors path="name"/></td>
    </tr>
  
    <tr>
 <td>
            <form:input type="file" path="img"  ng-model="img" class="form-control"/>
        </td>
        <td> <form:errors path="img" cssStyle="color: #c0392b;"/></td>

 <td>
<%-- 
<c:if test="${!empty dresses.name}">
<input type="submit" value="<spring:message text="Edit"/>" />
</c:if>
<c:if test="${empty dresses.name}">
<input type="submit" value="<spring:message text="Add"/>" />
</c:if> --%>

 <c:if test="${empty dress.name}">
                <button type="submit" class="btn" style=" width:100px; background-color:
				#00A2E8; color:white; text-align: center; font-size: 015x; border-radius: 0px;">
				<spring:message text="Add Product"/></button>
            </c:if>
 
 
 <c:if test="${!empty dress.name}">
                <button type="submit" class="btn" style="margin: 0px;width:100px; background-color:
                 #00A2E8; color:white; text-align: center; font-size: 015x; border-radius: 0px;">
                 <spring:message text="Edit Product"/></button>
            </c:if>
            
         </td>
         </tr>   

  </table>
 </form:form>
   
<br><br><br>

<div class="container" ng-app="myApp" ng-controller="jsonCtrl" ="padding-top:30px">
   
  <table  class="table table-bordered">		

    <thead>
      <tr>
        <td>
          <a href="#" ng-click="sortType = 'dressid'; sortReverse = !sortReverse">
            Dress ID 
            <span ng-show="sortType == 'dressid' && !sortReverse" class="glyphicon glyphicon-arrow-up"></span>
            <span ng-show="sortType == 'dressid' && sortReverse" class="glyphicon glyphicon-arrow-down"></span>
          </a>
        </td>
         <td>
          <a href="#" ng-click="sortType = 'color'; sortReverse = !sortReverse">
         	Color
            <span ng-show="sortType == 'color' && !sortReverse" class="glyphicon glyphicon-arrow-up"></span>
            <span ng-show="sortType == 'color' && sortReverse" class="glyphicon glyphicon-arrow-down"></span>
          </a>
        </td>
         <td>
          <a href="#" ng-click="sortType = 'price'; sortReverse = !sortReverse">
         	Price
            <span ng-show="sortType == 'price' && !sortReverse" class="glyphicon glyphicon-arrow-up"></span>
            <span ng-show="sortType == 'price' && sortReverse" class="glyphicon glyphicon-arrow-down"></span>
          </a>
        </td>
        <td>
          <a href="#" ng-click="sortType = 'size'; sortReverse = !sortReverse">
          Size
            <span ng-show="sortType == 'size' && !sortReverse" class="glyphicon glyphicon-arrow-up"></span>
            <span ng-show="sortType == 'size' && sortReverse" class="glyphicon glyphicon-arrow-down"></span>
          </a>
        </td>
         <td>
          <a href="#" ng-click="sortType = 'style'; sortReverse = !sortReverse">
         style
            <span ng-show="sortType == 'style' && !sortReverse" class="glyphicon glyphicon-arrow-up"></span>
            <span ng-show="sortType == 'style' && sortReverse" class="glyphicon glyphicon-arrow-down"></span>
          </a>
        </td>
        
         <td>
          <a href="#" ng-click="sortType = 'gtype'; sortReverse = !sortReverse">
         Garment type
            <span ng-show="sortType == 'gtype' && !sortReverse" class="glyphicon glyphicon-arrow-up"></span>
            <span ng-show="sortType == 'gtype' && sortReverse" class="glyphicon glyphicon-arrow-down"></span>
          </a>
        </td>
          <td>
          <a href="#" ng-click="sortType = 'name'; sortReverse = !sortReverse">
         	Name
            <span ng-show="sortType == 'name' && !sortReverse" class="glyphicon glyphicon-arrow-up"></span>
            <span ng-show="sortType == 'name' && sortReverse" class="glyphicon glyphicon-arrow-down"></span>
          </a>
        </td>
       </tr>      
    </thead>
    
    <tbody>
   
      <tr ng-repeat="roll in music | orderBy:sortType:sortReverse | filter:searchMusic">
         
        <td>{{ roll.dressid }}</td>
        <td>{{ roll.color }}</td>
        <td>{{ roll.price }}</td>
        <td>{{ roll.size }}</td>
        <td>{{ roll.style}}</td>
        <td>{{ roll.gtype }}</td>
        <td>{{ roll.name}}</td>
     
        
       
        
       <td>
        <form action="adminpage" method="post">
      	<input type="hidden" value={{roll.dressid}} name="dressid"/>
        <input type="hidden" value={{roll.color}} name="color"/>
        <input type="hidden" value={{roll.price}} name="price"/>
        <input type="hidden" value={{roll.size}} name="size"/>
         <input type="hidden" value={{roll.style}} name="style"/>
         <input type="hidden" value={{roll.gtype}} name="gtype"/>
         <input type="hidden" value={{roll.name}} name="name"/>
        
  

<a href="/fashionara/edit/{{roll.dressid}}">     
         <button type="button" class="btn" style="margin: 0px;width:100px; background-color: #d35400; 
         color:white; text-align: center; font-size: 015x; border-radius: 0px;">
        Edit &nbsp;&nbsp;&nbsp;<span class="glyphicon glyphicon-edit"></span>
        </button></a>
      </form>
       </td>
       
       
       
       
       <td>
       <form action="adminpage">
     	<input type="hidden" value={{roll.dressid}} name="dressid"/>
        <input type="hidden" value={{roll.color}} name="color"/>
        <input type="hidden" value={{roll.price}} name="price"/>
        <input type="hidden" value={{roll.size}} name="size"/>
         <input type="hidden" value={{roll.style}} name="style"/>
         <input type="hidden" value={{roll.gtype}} name="gtype"/>
         <input type="hidden" value={{roll.name}} name="name"/>
        

       <a href="/fashionara/remove/{{roll.dressid}}">     
        <button type="button" class="btn" style="margin: 0px;width:100px; background-color:
        #c0392b; color:white; text-align: center; font-size: 015x; border-radius: 0px;">
        Delete &nbsp;&nbsp;&nbsp;<span class="glyphicon glyphicon-remove"></span>
        </button>
    </a>
</form>
        </td>
        
       
         <td>
        <form  method="post" action="productdetails">
      	<input type="hidden" value={{roll.dressid}} name="dressid"/>
        <input type="hidden" value={{roll.color}} name="color"/>
        <input type="hidden" value={{roll.price}} name="price"/>
        <input type="hidden" value={{roll.size}} name="size"/>
         <input type="hidden" value={{roll.style}} name="style"/>
         <input type="hidden" value={{roll.gtype}} name="gtype"/>
         <input type="hidden" value={{roll.name}} name="name"/>
         
         
         <a href="retrieve/{{roll.dressid}}">         
        <button type="button" class="btn" style="margin: 0px;width:100px; background-color:
        #c0902b; color:white; text-align: center; font-size: 015x; border-radius: 0px;">
        Click &nbsp;&nbsp;&nbsp;<span class="glyphicon glyphicon-click"></span></button></a>
      </form>
        
     
       </td>
      </tr>
                     
    </tbody>
    
  </table>

 </div></div>
 

<jsp:include page="Footer.jsp"/>