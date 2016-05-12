 <style>
 .carousel-inner img
  {
 	
    background: #pink;
    margin: auto;
    interval : 1000;
  }
    </style>    
 <%@ include file="/WEB-INF/views/Header.jsp" %> 

  <div class="container-fluid">
<div id="myCarousel" class="carousel slide" data-ride="carousel">
    <!-- Indicators -->
    
    <ol class="carousel-indicators">
      <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
      <li data-target="#myCarousel" data-slide-to="1" ></li>
      <li data-target="#myCarousel" data-slide-to="2" ></li>
      <li data-target="#myCarousel" data-slide-to="3" ></li>
      <li data-target="#myCarousel" data-slide-to="4" ></li>
    </ol>

    <!-- Wrapper for slides -->
    <div class="carousel-inner" role="listbox">
      <div class="item active">
         <img src="\resources\images\dress15.jpg" alt="Image2">
                
      </div>

      <div class="item">
        <img src="\resources\images\dress13.jpg" alt="Image2">
        
      </div>
      <div class="item">
        <img src="\resources\images\dress14.jpg" alt="Image2">
        
      </div>
      <div class="item">
         <img src="\resources\images\dress11.jpg" alt="Image2">
        
      </div>
    </div>

    <!-- Left and right controls -->
      <a class="left carousel-control" href="#myCarousel" data-slide="prev">
      <span class="glyphicon glyphicon-chevron-left"></span></a>
      <a class="right carousel-control" href="#myCarousel" data-slide="next">
      <span class="glyphicon glyphicon-chevron-right"></span></a>
</div>

<div class="container text-center">    
  <h1>Summer Launch</h1><br>
  <div class="row">
    <div class="col-sm-4">
       <img src="\resources\images\dress15.jpg" alt="Image2" class="img-responsive" alt="Image">
     
    </div>
 
    </div>
  </div>
</div>

  <%@ include file="/WEB-INF/views/Footer.jsp" %>
    