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

        	 
        	        $scope.music = ${mprod};
        	        $scope.myFunction = function() 
        	        {
        	        	$scope.music = <%=request.getAttribute("mprod")%>;
        	        	
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
        
       
    
   
  <table  class="table table-bordered" >		

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
   
         <!--  <tr ng-repeat="roll in music"> -->
         
        <td>${mprod.dressid}</td>
        <td>${mprod.color}</td>
        <td>${mprod.price}</td>
        <td>${mprod.size}</td>
        <td>${mprod.style}</td>
        <td>${mprod.gtype}</td>
        <td>${mprod.name}</td>
        
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
     