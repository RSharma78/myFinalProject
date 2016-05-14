

  <style>
 .carousel-inner img
  {
 	
    background: #pink;
    margin: auto;
    interval : 1000;
 </style>  
  }

 
 <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.2/jquery.min.js"></script>
<script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>


<div id="main">
	<div id="header"></div>

	<%@ include file="Header.jsp"%>
</div>

<div id="body">
	


<div class="container-fluid">
<div id="myCarousel" class="carousel slide" data-ride="carousel">

<!-- Indicators -->
    <ol class="carousel-indicators">
      <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
      <li data-target="#myCarousel" data-slide-to="1" ></li>
    </ol>

<!-- Wrapper for slides -->
    <div class="carousel-inner" role="listbox">
      <div class="item active"><img src="resources/images/dress12.jpg" alt="Image1"></div>
      <div class="item "><img src="resources/images/dress13.jpg" alt="Image2"> </div>
        

    </div>
 <!-- Left and right controls -->
      <a class="left carousel-control" href="#myCarousel" data-slide="prev">
      <span class="glyphicon glyphicon-chevron-left"></span></a>
      <a class="right carousel-control" href="#myCarousel" data-slide="next">
      <span class="glyphicon glyphicon-chevron-right"></span></a>
</div>
</div>
<br><br>


<!-- <div class="container text-center">    
 
  <div class="row">
    <div class="col-sm-4">
      <img src="" class="img-responsive" style="width:100%" alt="Image">
    
    </div>
    <div class="col-sm-4"> 
      <img src="" class="img-responsive" style="width:100%" alt="Image">
     
    </div>
    <div class="col-sm-4">
      <img src="" class="img-responsive" style="width:100%" alt="Image">
   
      </div>
   
    </div>

			<div class="container text-center"><h1>Summer Launch</h1>
					<br><div class="row"><div class="col-sm-4">
							<imgsrc="\resources\images\dress12.jpg">

						</div>

					</div>
				</div>
			</div> -->





		<%-- <div id="foot">
  <%@ include file="/WEB-INF/views/Footer.jsp" %></div> --%>