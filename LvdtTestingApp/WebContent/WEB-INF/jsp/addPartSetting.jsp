<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<style type="text/css">
.PartSettingForm{
width:90%;
height: 600px;
/* border: 1px solid gray; */
margin-left: 5%;
margin-top: 10px;

}

.formRow{
height: 70px;
border-bottom: 1px groove;
margin-top: 10px;
}

/* ========================================================StyleSheet For Model Form=============================================================== */

.addModelForm{
position:fixed;
top:0;
left:0;
margin-left:33%;
margin-top:100px;
width: 490px;
height: 350px;
border:2px groove;
z-index: 1;
background-color: white;
border-radius: 7px;
box-shadow: 0 1px 6px rgba(0, 0, 0, 0.32), 0 1px 4px rgba(0, 0, 0, 0.44);
display: none;
}

.formData{
width: 100%;
height: 20%;
margin-left: 5%;:
/* border: 1px solid; */
}
input[type=radio]{
cursor: pointer;
}

</style>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<script type="text/javascript" src="js/jquery-3.1.1.min.js"></script>
<title>Insert title here</title>
</head>
<body>
<div class="mainBody" style="position:absolute; width:90%; height:90%;z-index: -1;"></div>
<div class="PartSettingForm">

<div class="formRow">

	<div class="form-group" style=" float:left; width: 20%;">
	  <label for="usr">Model No:</label>
	  <select class="form-control" id="sel1">
	    <option>1</option>
	    <option>2</option>
	    <option>3</option>
	    <option>4</option>
	  </select>
	</div>
	
	<div class="form-group" style="float:left; width: 20%; margin-left: 6%;">
	  <label for="usr">Model Name:</label>
		 <select class="form-control" id="sel1">
	    <option>1</option>
	    <option>2</option>
	    <option>3</option>
	    <option>4</option>
	  </select>
	</div>	
	
	<div style="float:left; width: 3%; margin-left: 1%;">
	<label>&nbsp;</label>
	<input type="button" class="btn btn-default" value="+" id="addModel">
	</div>	
	
	<div class="form-group" style="float:left; width: 20%; margin-left: 2%;">
	  <label for="usr">Parameter No:</label>
	  <input type="text" class="form-control" id="usr" placeholder="">
	</div>
	
	<div class="form-group" style="float:left; width: 20%; margin-left: 6%;">
	  <label for="usr">Parameter Name:</label>
	  <input type="text" class="form-control" id="usr" placeholder="">
	</div>	
	
</div>

<div class="formRow" style="height: 40px;">
	
	<div class="form-group" style=" float:left; width: 10%;">
	  <label for="usr">DIA:</label>
	  <input type="radio" name="">
	</div>
	
	<div class="form-group" style=" float:left; width: 20%; ">
	  <label for="usr">Height:</label>
	  <input type="radio" name="">
	</div>
	
</div>

<div class="formRow">

	<div class="form-group" style="float:left; width: 20%;">
	  <label for="usr">APG NO:</label>
	  <select class="form-control" id="sel1">
	    <option>1</option>
	    <option>2</option>
	    <option>3</option>
	    <option>4</option>
	  </select>
	</div>
	
	<div class="form-group" style=" float:left; width: 20%; margin-left: 6%;">
	  <label for="usr">Iteration:</label>
	  <select class="form-control" id="sel1">
	    <option>1</option>
	    <option>2</option>
	    <option>3</option>
	    <option>4</option>
	  </select>
	</div>		
	
	<div class="form-group" style=" float:left; width: 20%; margin-left: 6%;">
	  <label for="usr">Offset:</label>
	  <input type="text" class="form-control" id="usr" placeholder="">
	</div>	
	
</div>

<div class="formRow">

	<div class="form-group" style="float:left; width: 20%;">
	  <label for="usr">Tolerance Limit:</label>
	  <input type="text" class="form-control" id="usr" placeholder="Spec">
	</div>
	
	<div class="form-group" style=" float:left; width: 20%; margin-left: 6%;">
	  <label for="usr">&nbsp;</label>
	  <input type="text" class="form-control" id="usr" placeholder="USL">
	</div>		
	
	<div class="form-group" style=" float:left; width: 20%; margin-left: 6%;">
	  <label for="usr">&nbsp;</label>
	  <input type="text" class="form-control" id="usr" placeholder="LSL">
	</div>	
	
</div>

<div class="formRow" style="height: 40px;">

	<div class="form-group" style="float:left; width: 20%;">
	  <label for="usr">Master-Dim:</label>
	  Low:<input type="radio" id="usr" placeholder="Spec">
	</div>
	
	<div class="form-group" style=" float:left; width: 10%;">
	  <label for="usr">&nbsp;</label>
	  High:<input type="radio" id="usr" placeholder="USL">
	</div>		
	
</div>

<div class="formRow">

	<div class="form-group" style="float:left; width: 20%;">
	  <label for="usr">APG NO:</label>
	  <select class="form-control" id="sel1">
	    <option>1</option>
	    <option>2</option>
	    <option>3</option>
	    <option>4</option>
	  </select>
	</div>
	
	<div class="form-group" style=" float:left; width: 20%; margin-left: 6%;">
	  <label for="usr">Iteration:</label>
	  <select class="form-control" id="sel1">
	    <option>1</option>
	    <option>2</option>
	    <option>3</option>
	    <option>4</option>
	  </select>
	</div>		
	
	<div class="form-group" style=" float:left; width: 20%; margin-left: 6%;">
	  <label for="usr">Offset:</label>
	  <input type="text" class="form-control" id="usr" placeholder="">
	</div>	
	
</div>
</div>

<!-- ===============================================AddModel Form Starts here==================================================================== -->
<div class="addModelForm">
<div style="width: 100%; height: 5%; text-align: right; "><a id="close" style="margin-right: 5%; text-decoration: none; cursor: pointer;">close</a></div>
<form:form>
<div class="formData">
<div class="form-group" style="float:left; width: 40%;">
	  <label for="usr">Model No:</label>
	  <input type="text" class="form-control" id="mno" placeholder="">
	</div>
	
	<div class="form-group" style=" float:left; width: 40%; margin-left: 6%;">
	  <label for="usr">Model Name:</label>
	  <input type="text" class="form-control" id="mname" placeholder="">
	</div>	
</div>
<div class="formData">

	<div class="form-group" style="float:left; width: 40%;">
	  <label for="usr">Customer Name:</label>
	  <input type="text" class="form-control" id="cname" placeholder="">
	</div>
	
	<div class="form-group" style=" float:left; width: 40%; margin-left: 6%;">
	  <label for="usr">Job Entry Type:</label><br>
	  Auto &nbsp;<input type="Radio" name="radio"> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Manual &nbsp;<input type="Radio" name="radio">
	</div>		
</div>

<div class="formData" style="height: 10%;">
<input type="button" value="Submit" class="btn btn-defalt" onclick="addModel();">
</div>
</form:form>
<div class="table-responsive" style="width: 100%; height: 50%" >
	<table class="table">
	<thead>
		<tr>
			<th>O</th>
			<th>Model No</th>
			<th>Model Name</th>
			<th>Customer Name</th>
			<th>JobEntrt Type</th>
		</tr>
	</thead>
	<tbody>
		<tr>
			<td><input type="radio"></td>
			<td>demo</td>
			<td>demo</td>
			<td>demo</td>
			<td>demo</td>
		</tr>
	</tbody>
	</table>
</div>

</div>
<!-- ============================================================AddModel Form End Here============================================================ -->


<script type="text/javascript">
$('#addModel').on('click',function(){		
	$('.addModelForm').slideDown();
	$('.PartSettingForm').css("display","none");
	$('.mainBody').css("background-color","rgba(0,0,0,0.3)");
});

$('#close').on('click',function(){
	$('.addModelForm').hide();
	$('.PartSettingForm').css("display","block");
	$('.mainBody').css("background-color","white");
})
</script>

</body>
</html>