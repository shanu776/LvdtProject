<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
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
z-index: 99;
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
<form:form action="savePartSetting.zzz" modelAttribute="partsetting" method="post">
<div class="formRow">

	<div class="form-group" style=" float:left; width: 20%;">
	  <label for="usr">Model No:</label>
	  <form:select path="model_no" class="form-control" id="sel1">
	    <c:forEach items="${modelList }" var="model">
	    <form:option value="${model.model_no }">${model.model_no }</form:option>
	    </c:forEach>	    
	 </form:select>
	</div>
	
	<div class="form-group" style="float:left; width: 20%; margin-left: 6%;">
	  <label for="usr">Model Name:</label>
		 <form:select path="model_name" class="form-control" id="sel1">
	   <c:forEach items="${modelList }" var="model">
	    <form:option value="${model.model_no }">${model.model_name }</form:option>
	    </c:forEach>	   
	  	</form:select>	
	</div>	
	
	<div style="float:left; width: 3%; margin-left: 1%;">
	<label>&nbsp;</label>
	<input type="button" class="btn btn-default" value="+" id="addModel">
	</div>	
	
	<div class="form-group" style="float:left; width: 20%; margin-left: 2%;">
	  <label for="usr">Parameter No:</label>
	  <form:input path="parameter_no" type="text" class="form-control" id="usr" placeholder="Parameter No"/>
	</div>
	
	<div class="form-group" style="float:left; width: 20%; margin-left: 6%;">
	  <label for="usr">Parameter Name:</label>
	  <form:input path="parameter_name" type="text" class="form-control" id="usr" placeholder="Parameter Name"/>
	</div>	
	
</div>

<div class="formRow" style="height: 40px;">
	
	<div class="form-group" style=" float:left; width: 10%;">
	  <label for="usr">DIA:</label>
	  <form:radiobutton path="dia" type="radio" value="dia"/>
	</div>
	
	<div class="form-group" style=" float:left; width: 20%; ">
	  <label for="usr">Height:</label>
	  <form:radiobutton path="dia" type="radio" value="height"/>
	</div>
	
</div>

<div class="formRow">

	<div class="form-group" style="float:left; width: 20%;">
	  <label for="usr">APG NO:</label>
	  <form:select path="apg_no" class="form-control" id="sel1">
	    <form:option value="">1</form:option>	    
	  </form:select>
	</div>
	
	<div class="form-group" style=" float:left; width: 20%; margin-left: 6%;">
	  <label for="usr">Iteration:</label>
	  <form:select path="iteration" class="form-control" id="sel1">
	    <form:option value="1">1</form:option>
	  </form:select>
	</div>		
	
	<div class="form-group" style=" float:left; width: 20%; margin-left: 6%;">
	  <label for="usr">deviceReading:</label>
	  <form:input path="deviceReading" type="text" class="form-control" id="offset" placeholder="deviceReading" readonly="true"/>
	</div>	
	
	<div class="form-group" style=" float:left; width: 20%; margin-left: 6%;">
	  <label for="usr">Offset:</label>
	  <form:input path="offset" type="text" class="form-control" id="usr" placeholder="OffSet"/>
	</div>	
	
</div>

<div class="formRow">

	<div class="form-group" style="float:left; width: 20%;">
	  <label for="usr">Tolerance Limit:</label>
	  <form:input path="tolerance_limit" type="text" class="form-control" id="usr" placeholder="Spec"/>
	</div>
	
	<div class="form-group" style=" float:left; width: 20%; margin-left: 6%;">
	  <label for="usr">&nbsp;</label>
	  <form:input path="usl" type="text" class="form-control" id="usr" placeholder="USL"/>
	</div>		
	
	<div class="form-group" style=" float:left; width: 20%; margin-left: 6%;">
	  <label for="usr">&nbsp;</label>
	  <form:input path="lsl" type="text" class="form-control" id="usr" placeholder="LSL"/>
	</div>	
	
</div>

<div class="formRow" style="height: 40px;">

	<div class="form-group" style="float:left; width: 20%;">
	  <label for="usr">Master-Dim:</label>
	  Low:<form:radiobutton path="master_dim" name="master_dim" id="usr" value="low"/>
	</div>
	
	<div class="form-group" style=" float:left; width: 10%;">
	  <label for="usr">&nbsp;</label>
	  High:<form:radiobutton path="master_dim" name="master_dim" id="usr" value="high" />
	</div>		
	
</div>

<div class="formRow">

	<div class="form-group" style="float:left; width: 20%;">
	  <label for="usr">No Of Master</label>
	  <form:select path="no_of_master" class="form-control" id="sel1">
	    <form:option value="1">1</form:option>	    
	  </form:select>
	</div>
	
	<div class="form-group" style=" float:left; width: 20%; margin-left: 6%;">
	  <label for="usr">Least Count:</label>
	  <form:select path="least_count" class="form-control" id="sel1">
	    <form:option value="1">1</form:option>	    
	  </form:select>
	</div>		
	
	<div class="form-group" style=" float:left; width: 20%; margin-left: 6%;">
	  <label for="usr">Color Code:</label>
	  <form:input path="color_code" class="form-control" id="usr" placeholder="ColorCode"/>
	</div>	
	
</div>
<div style="margin-top:10px; text-align:center; width: 100%;"><input type="submit" value="submit" class="btn btn-default" style="width: 20%;" > </div>
</form:form>
</div>

<!-- ===============================================AddModel Form Starts here==================================================================== -->
<div class="addModelForm">
<div style="width: 100%; height: 5%; text-align: right; "><a id="close" style="margin-right: 5%; text-decoration: none; cursor: pointer;">close</a></div>
<form:form action="saveModelData.zzz" modelAttribute="model">
<div class="formData">
<div class="form-group" style="float:left; width: 40%;">
	  <label for="usr">Model No:</label>
	  <form:input path="model_no" type="text" class="form-control" id="mno" placeholder="model_no" required="required"/>
	</div>
	
	<div class="form-group" style=" float:left; width: 40%; margin-left: 6%;">
	  <label for="usr">Model Name:</label>
	  <form:input path="model_name" type="text" class="form-control" id="mname" placeholder="model_name" required="required"/>
	</div>	
</div>
<div class="formData">

	<div class="form-group" style="float:left; width: 40%;">
	  <label for="usr">Customer Name:</label>
	  <form:input path="customer_name" class="form-control" id="cname" placeholder="customer_name"  required="required"/>
	</div>
	
	<div class="form-group" style=" float:left; width: 40%; margin-left: 6%;">
	  <label for="usr">Job Entry Type:</label><br>
	  Auto &nbsp;<form:radiobutton path="job_entry_type" type="Radio" name="radio" value="auto"/> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Manual &nbsp;<form:input path="job_entry_type" type="Radio" name="radio" value="manual"/>
	</div>		
</div>

<div class="formData" style="height: 10%;">
<input type="submit" value="Submit" class="btn btn-defalt"">
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
	<c:forEach var="models" items="${modelList }">
		<tr>
			<td><input type="radio" name="radio"></td>
			<td><c:out value="${models.model_no}"></c:out></td>
			<td><c:out value="${models.model_name}"></c:out></td>
			<td><c:out value="${models.customer_name}"></c:out></td>
			<td><c:out value="${models.job_entry_type}"></c:out></td>
		</tr>
	</c:forEach>
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

$(function(){
	setInterval(getReadings,200);
});
function getReadings(){
	$.ajax({url: "getreadings.zzz", 
    	success: function(result){
    		/* alert(result); */
    	$("#offset").val(result);     	 	
    }
    });
};
</script>

</body>
</html>