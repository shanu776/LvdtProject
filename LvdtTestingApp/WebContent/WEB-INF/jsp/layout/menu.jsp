<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

<head>
<style type="text/css">
.dropdown .dropdown-submenu{
    position: relative;
}

.dropdown .dropdown-menu {
    top: 0;
    left: 100%;
    margin-top: -1px;
}  
li{
list-style: none;
}
ul{
padding: 0px;
}


</style>
<script type="text/javascript" src="js/jquery-3.1.1.min.js"></script>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<div class="menu">
	<!-- <div style="margin-top: 1%; width: 100%;" id="menu1" >
		<div style="width: 100%;"><input type="button" onclick="menu();" class="btn btn-danger menuButton" value="Menu" style="width: 100%;" /></div>
	</div> -->
	
	<div id="menu2">
	<ul>
	    <li class="dropdown headerLi" style="text-align: center; margin-top: 5%;"><a class="test menuFont" data-hover="dropdown"><font color="black" size="3">Menu</font></a>
		      <ul class="dropdown-menu" style="background-color: #99ffff;">	
		      
		      <li><a href="index.zzz">Home</a>
		      	
		      </li>	
		      	     
		      <li class="dropdown-submenu"><a href="measurement.zzz">Measurement</a>
		      	<!-- <ul class="dropdown-menu" style="background-color: #ccffff;">
		      	<li><a>=======</a></li>
		      	<li><a>=======</a></li>
		      	</ul> -->
		      </li>	
		      	      
		     <li class="dropdown-submenu"><a class="test1" data-hover="dropdown">Results</a>
		      	<ul class="dropdown-menu" style="background-color: #ccffff;">
		      	 	<li class="dropdown-submenu"><a class="test2" data-hover="dropdown">Chart</font></a>
				      	<ul class="dropdown-menu" style="background-color: #ccffff;">
					      	<li><a>X Chart</a></li>
					      	<li><a>Pie Chart</a></li>
					      	<li><a>Histogram</a></li>
					      	<li><a>X Bar R</a></li>
					      	<li><a>X bar S</a></li>
			      		</ul>
		      		</li>		   
		      	<li class="dropdown-submenu"><a class="test2" data-hover="dropdown">Readings Report</font></a>
				      	<!-- <ul class="dropdown-menu" style="background-color: #ccffff;">
					      	<li><a>X Chart</a></li>
					      	<li><a>Pie Chart</a></li>
					      	<li><a>Histogram</a></li>
					      	<li><a>X Bar R</a></li>
					      	<li><a>X bar S</a></li>
			      		</ul> -->
		      		</li>	
		      	<li><a>Consolidated Report With Job No</a></li>
		      	<li><a>Calibration Report</a></li>
		      	<li><a>Consolidate</a></li>
		      	</ul>
		      </li>	
		      		  
		      <li class="dropdown-submenu"><a class="test1" data-hover="dropdown">Utilities</a>
		      	<ul class="dropdown-menu" style="background-color: #ccffff;">
		      	<li><a href="showChangePass.zzz">Change Password</a></li>
		      	<li><a>Change Date/Time/Operator</a></li>
		      	<li><a>Change Shift Time</a></li>
		      	</ul>
		      </li>		 
		      <li class="dropdown-submenu"><a class="test1" data-hover="dropdown">Setup</a>
		      	<ul class="dropdown-menu" style="background-color: #ccffff;">
		      	<li><a href="partSettingForm.zzz">Part Setup</a></li>
		      	<li><a>Tolerance Limit</a></li>
		      	<li><a>Set Probes</a></li>
		      	<li><a href="probecalibration.zzz">Probe Calibration</a></li>
		      	<li><a>IO Test</a></li>
		      	<li><a>Mastering Interval Setting</a></li>
		      	<li><a>Comm. Port Setting</a></li>
		      	<li><a>Excel Path Setting</a></li>
		      	<li><a>Average Setting</a></li>
		      	</ul>
		      </li>		  
		      <li class="dropdown-submenu"><a class="test1" data-hover="dropdown">Logout</a>
		      	<!-- <ul class="dropdown-menu" style="background-color: #ccffff;">
		      	<li><a>==========</a></li>
		      	<li><a>==========</a></li>
		      	</ul> -->
		      </li>		 
		      <!-- <li class="dropdown-submenu"><a class="test1" data-hover="dropdown">Tolerance</a>
		      	<ul class="dropdown-menu" style="background-color: #ccffff;">
		      	<li><a>==========</a></li>
		      	<li><a>==========</a></li>
		      	</ul>
		      </li>		 
		      <li class="dropdown-submenu"><a class="test1" data-hover="dropdown">Buzz ON/OFF</a>
		      	<ul class="dropdown-menu" style="background-color: #ccffff;">
		      	<li><a>On</a></li>
		      	<li><a>Off</a></li>
		      	</ul>
		      </li>		 
		      <li class="dropdown-submenu"><a class="test1" data-hover="dropdown">=======</a>
		      	<ul class="dropdown-menu" style="background-color: #ccffff;">
		      	<li><a>=========</a></li>
		      	<li><a>========</a></li>
		      	</ul>
		      </li>		 
		      <li class="dropdown-submenu"><a class="test1" data-hover="dropdown">========</a>
		      	<ul class="dropdown-menu" style="background-color: gray;">
		      	<li><a>=======</a></li>
		      	<li><a>=======</a></li>
		      	</ul>
		      </li>		 -->
		      </ul>
        </li>	      
	</ul>  
	</div>
	
</div>

<script>
 $(document).ready(function(){
  $('.dropdown a.test').on("click mouseenter", function(e){
	  $(".test").next('ul').hide();
    $(this).next('ul').toggle();   
    e.stopPropagation();
    e.preventDefault();
  });
  $(this).on("click",function(e){
	  $(".test").next('ul').hide();
  })
  $('.dropdown a.test1').on("click mouseenter", function(e){
	$(".test1").next('ul').hide();
    $(this).next('ul').toggle();   
    e.stopPropagation();
    e.preventDefault();
  });
  
  $('.dropdown a.test2').on("click mouseenter", function(e){
		$(".test2").next('ul').hide();
	    $(this).next('ul').toggle();   
	    e.stopPropagation();
	    e.preventDefault();
	  });
  
});
 
/*  function menu(){
	 var password=prompt("enter password","password");
	 
	 if(password=="admin")
		 {		
		 document.getElementById('menu2').style.display = 'block';
		 document.getElementById("menu1").style.display="none";		 
		 }
	 else
		 {
		 document.getElementById('menu1').style.display = 'block';
		 document.getElementById("menu2").style.display="none";
		 }
 } */
</script>
</body>
</html>