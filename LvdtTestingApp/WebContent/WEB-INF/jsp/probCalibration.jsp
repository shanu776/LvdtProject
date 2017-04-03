<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
    <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<style type="text/css">
.setReadingBlock{
margin-top:40px;
margin-left:10%;
width:70%;
height: 100px;
/* border:1px solid; */
}

.readingsBox{
margin-left:3%;
width:30%;
height:100px;
/* border:1px solid; */
display: inline-block;
}

.showFixesReadings{
margin-top:40px;

	width:70%;
	height: 200px;
	/* border: 1px solid; */
}
#usr{
width: 100%;
}

</style>


<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.0/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>

<div class="container">
  
  <ul class="nav nav-tabs">
    <li><a data-toggle="tab" href="#home">LVDT1</a></li>
    <li><a data-toggle="tab" href="#menu1">LVDT2</a></li>
    <li><a data-toggle="tab" href="#menu22">LVDT3</a></li>
    <li><a data-toggle="tab" href="#menu3">LVDT4</a></li>
    <li><a data-toggle="tab" href="#menu4">LVDT5</a></li>
    <li><a data-toggle="tab" href="#menu5">LVDT6</a></li>
    <li><a data-toggle="tab" href="#menu6">LVDT7</a></li>
    <li><a data-toggle="tab" href="#menu7">LVDT8</a></li>
  </ul>
<!-- =========================================LVDT1===================================================================== -->
  <div class="tab-content">
    <div id="home" class="tab-pane fade">
      <h3>LVDT1</h3>
      <div class="setReadingBlock">         
		<div class="readingsBox">	
			<form action="addRef1.zzz">
				<input type="hidden" name="id" value="1"/>			
				<label for="usr">REF1:</label>
	  			<input type="text" name="ref1" class="form-control" id="usr"/>
	  			<input type="submit" value="set" class="btn btn-default"> 
	  		</form>	 		
		</div>
		<div class="readingsBox">
			<form action="addRef2.zzz">
				<input type="hidden" name="id" value="1"/>			
				<label for="usr">REF2:</label>
	  			<input type="text" name="ref2" class="form-control" id="usr"/>
	  			<input type="submit" value="set" class="btn btn-default"> 
	  		</form>	 
		</div>
		<div class="readingsBox">
			<form action="addNominal.zzz">
				<input type="hidden" name="id" value="1"/>			
				<label for="usr">NOMINAL:</label>
	  			<input type="text" name="nominal" class="form-control" id="usr"/>
	  			<input type="submit" value="set" class="btn btn-default"> 
	  		</form>	 
		</div>
	 </div>
    </div>
      
<!-- =========================================LVDT2===================================================================== -->
  
    <div id="menu1" class="tab-pane fade">
      <h3>LVDT2</h3>
      <div class="setReadingBlock">         
		<div class="readingsBox">	
			<form action="addRef1.zzz">
				<input type="hidden" name="id" value="2"/>			
				<label for="usr">REF1:</label>
	  			<input type="text" name="ref1" class="form-control" id="usr"/>
	  			<input type="submit" value="set" class="btn btn-default"> 
	  		</form>	 		
		</div>
		<div class="readingsBox">
			<form action="addRef2.zzz">
				<input type="hidden" name="id" value="2"/>			
				<label for="usr">REF2:</label>
	  			<input type="text" name="ref2" class="form-control" id="usr"/>
	  			<input type="submit" value="set" class="btn btn-default"> 
	  		</form>	 
		</div>
		<div class="readingsBox">
			<form action="addNominal.zzz">
				<input type="hidden" name="id" value="2"/>			
				<label for="usr">NOMINAL:</label>
	  			<input type="text" name="nominal" class="form-control" id="usr"/>
	  			<input type="submit" value="set" class="btn btn-default"> 
	  		</form>	 
		</div>
	 </div>
    </div>
<!-- =========================================LVDT3===================================================================== -->   
      <div id="menu22" class="tab-pane fade">
      <h3>LVDT3</h3>
      <div class="setReadingBlock">         
		<div class="readingsBox">	
			<form action="addRef1.zzz">
				<input type="hidden" name="id" value="3"/>			
				<label for="usr">REF1:</label>
	  			<input type="text" name="ref1" class="form-control" id="usr"/>
	  			<input type="submit" value="set" class="btn btn-default"> 
	  		</form>	 		
		</div>
		<div class="readingsBox">
			<form action="addRef2.zzz">
				<input type="hidden" name="id" value="3"/>			
				<label for="usr">REF2:</label>
	  			<input type="text" name="ref2" class="form-control" id="usr"/>
	  			<input type="submit" value="set" class="btn btn-default"> 
	  		</form>	 
		</div>
		<div class="readingsBox">
			<form action="addNominal.zzz">
				<input type="hidden" name="id" value="3"/>			
				<label for="usr">NOMINAL:</label>
	  			<input type="text" name="nominal" class="form-control" id="usr"/>
	  			<input type="submit" value="set" class="btn btn-default"> 
	  		</form>	 
		</div>
	 </div>
    </div>
    
<!-- =========================================LVDT4===================================================================== -->    
    

    <div id="menu3" class="tab-pane fade">
      <h3>LVDT4</h3>
      <div class="setReadingBlock">         
		<div class="readingsBox">	
			<form action="addRef1.zzz">
				<input type="hidden" name="id" value="4"/>			
				<label for="usr">REF1:</label>
	  			<input type="text" name="ref1" class="form-control" id="usr"/>
	  			<input type="submit" value="set" class="btn btn-default"> 
	  		</form>	 		
		</div>
		<div class="readingsBox">
			<form action="addRef2.zzz">
				<input type="hidden" name="id" value="4"/>			
				<label for="usr">REF2:</label>
	  			<input type="text" name="ref2" class="form-control" id="usr"/>
	  			<input type="submit" value="set" class="btn btn-default"> 
	  		</form>	 
		</div>
		<div class="readingsBox">
			<form action="addNominal.zzz">
				<input type="hidden" name="id" value="4"/>			
				<label for="usr">NOMINAL:</label>
	  			<input type="text" name="nominal" class="form-control" id="usr"/>
	  			<input type="submit" value="set" class="btn btn-default"> 
	  		</form>	 
		</div>
	 </div>
    </div>

<!-- =========================================LVDT5===================================================================== -->
 
   
    <div id="menu4" class="tab-pane fade">
      <h3>LVDT5</h3>
      <div class="setReadingBlock">         
		<div class="readingsBox">	
			<form action="addRef1.zzz">
				<input type="hidden" name="id" value="5"/>			
				<label for="usr">REF1:</label>
	  			<input type="text" name="ref1" class="form-control" id="usr"/>
	  			<input type="submit" value="set" class="btn btn-default"> 
	  		</form>	 		
		</div>
		<div class="readingsBox">
			<form action="addRef2.zzz">
				<input type="hidden" name="id" value="5"/>			
				<label for="usr">REF2:</label>
	  			<input type="text" name="ref2" class="form-control" id="usr"/>
	  			<input type="submit" value="set" class="btn btn-default"> 
	  		</form>	 
		</div>
		<div class="readingsBox">
			<form action="addNominal.zzz">
				<input type="hidden" name="id" value="5"/>			
				<label for="usr">NOMINAL:</label>
	  			<input type="text" name="nominal" class="form-control" id="usr"/>
	  			<input type="submit" value="set" class="btn btn-default"> 
	  		</form>	 
		</div>
	 </div>
    </div>
    
<!-- =========================================LVDT6===================================================================== -->

  
    <div id="menu5" class="tab-pane fade">
      <h3>LVDT6</h3>
      <div class="setReadingBlock">         
		<div class="readingsBox">	
			<form action="addRef1.zzz">
				<input type="hidden" name="id" value="6"/>			
				<label for="usr">REF1:</label>
	  			<input type="text" name="ref1" class="form-control" id="usr"/>
	  			<input type="submit" value="set" class="btn btn-default"> 
	  		</form>	 		
		</div>
		<div class="readingsBox">
			<form action="addRef2.zzz">
				<input type="hidden" name="id" value="6"/>			
				<label for="usr">REF2:</label>
	  			<input type="text" name="ref2" class="form-control" id="usr"/>
	  			<input type="submit" value="set" class="btn btn-default"> 
	  		</form>	 
		</div>
		<div class="readingsBox">
			<form action="addNominal.zzz">
				<input type="hidden" name="id" value="6"/>			
				<label for="usr">NOMINAL:</label>
	  			<input type="text" name="nominal" class="form-control" id="usr"/>
	  			<input type="submit" value="set" class="btn btn-default"> 
	  		</form>	 
		</div>
	 </div>
    </div>
    
<!-- =========================================LVDT7===================================================================== -->

   
    <div id="menu6" class="tab-pane fade">
      <h3>LVDT7</h3>
      <div class="setReadingBlock">         
		<div class="readingsBox">	
			<form action="addRef1.zzz">
				<input type="hidden" name="id" value="7"/>			
				<label for="usr">REF1:</label>
	  			<input type="text" name="ref1" class="form-control" id="usr"/>
	  			<input type="submit" value="set" class="btn btn-default"> 
	  		</form>	 		
		</div>
		<div class="readingsBox">
			<form action="addRef2.zzz">
				<input type="hidden" name="id" value="7"/>			
				<label for="usr">REF2:</label>
	  			<input type="text" name="ref2" class="form-control" id="usr"/>
	  			<input type="submit" value="set" class="btn btn-default"> 
	  		</form>	 
		</div>
		<div class="readingsBox">
			<form action="addNominal.zzz">
				<input type="hidden" name="id" value="7"/>			
				<label for="usr">NOMINAL:</label>
	  			<input type="text" name="nominal" class="form-control" id="usr"/>
	  			<input type="submit" value="set" class="btn btn-default"> 
	  		</form>	 
		</div>
	 </div>
    </div>
    
    <!-- =========================================LVDT8===================================================================== -->

  
    <div id="menu7" class="tab-pane fade">
      <h3>LVDT8</h3>
      <div class="setReadingBlock">         
		<div class="readingsBox">	
			<form action="addRef1.zzz">
				<input type="hidden" name="id" value="8"/>			
				<label for="usr">REF1:</label>
	  			<input type="text" name="ref1" class="form-control" id="usr"/>
	  			<input type="submit" value="set" class="btn btn-default"> 
	  		</form>	 		
		</div>
		<div class="readingsBox">
			<form action="addRef2.zzz">
				<input type="hidden" name="id" value="8"/>			
				<label for="usr">REF2:</label>
	  			<input type="text" name="ref2" class="form-control" id="usr"/>
	  			<input type="submit" value="set" class="btn btn-default"> 
	  		</form>	 
		</div>
		<div class="readingsBox">
			<form action="addNominal.zzz">
				<input type="hidden" name="id" value="8"/>			
				<label for="usr">NOMINAL:</label>
	  			<input type="text" name="nominal" class="form-control" id="usr"/>
	  			<input type="submit" value="set" class="btn btn-default"> 
	  		</form>	 
		</div>
	 </div>
    </div>
    
    
  </div>
</div>

<div class="container showFixesReadings">

<table class="table">
<tr>
<th>Probe No.</th>
<th>REF1</th>
<th>REF2</th>
<th>NOMINAL</th>
<th>SCALEFACTOR</th>
<th>DELETE</th>
</tr>
<%-- <c:if test="${!empty settings }"> --%>
<c:forEach items="${settings}" var="setting">
<tr>
<td><c:out value="${setting.id }"></c:out></td>
<td><c:out value="${setting.ref1 }"></c:out></td>
<td><c:out value="${setting.ref2 }"></c:out></td>
<td><c:out value="${setting.nominalval }"></c:out></td>
<td><c:out value="${setting.scaleFactor }"></c:out></td>
<td>X</td>
</tr>
</c:forEach>
<%-- </c:if> --%>
</table>
</div>


<script>
 $(function(){
	setInterval(getReadings, 200);
	}); 
function getReadings(){
	$.ajax({url: "getreadings.zzz", 
    	success: function(result){
    	$(".form-control").val(result);    	
    }
    });
};
getReadings();


</script>
</body>
</html>