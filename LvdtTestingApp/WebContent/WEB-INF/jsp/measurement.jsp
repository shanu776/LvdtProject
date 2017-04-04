<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<script type="text/javascript" src="js/script.js"></script>
<!-- <script type="text/javascript" src="js/angular.min.js"></script> -->
<!-- <script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.4.8/angular.min.js"></script> -->
<title>Insert title here</title>
<style type="text/css">
#readings{

}
.measurement{
width: 100%;
height: 400px;
border: 1px solid;
}
.mHeader{
width: 100%;
height: 70px;
border: 1px solid;
}
.form-group{
float:left;
width: 10%;
margin-left: 3%;
}

.batterymeter-readings{
margin-top:20px;
position:relative;
width: 10%;
height: 200px;
float: left;
}

.batterymeter{
margin-top:20px;
position:relative;
width: 10%;
height: 200px;
float: left;
border: 3px groove;
border-radius: 5px;
}
.battery-level{
position:absolute;
width:100%;
background-color:  #99ff66;
height: 80%;
bottom: 0;

}
</style>
</head>
<body>
<div class="measurement" ng-app="">
<div class="mHeader" >
<div class="form-group" > 
  Model_no:<select class="form-control" onchange="measurementGraph(this.value);">
  <option>select Model:</option>
   <c:forEach var="setting" items="${partSetting}">
    <option value="${setting.id }">${setting.model_name }</option>
   </c:forEach>
  </select>  
</div>

<div class="form-group">
Model_name:<input type="text" class="form-control model-name" >
</div>

</div>

<div id="measurementgraph" class="container" style="height:330px; border: 1px solid;" >
<div class="batterymeter-readings" style="margin-top:50px; float:left;">
<label style="position: absolute; top: 0; margin-top: -10px;" id="ulm"></label>
<label style="position: absolute; bottom: 0; margin-top: 7px;" id="llm"></label>
</div>

<div class="batterymeter" style="margin-top:40px;">
	<div class="battery-level"></div>
</div>
</div>

</div>

<div id="readings"></div>

</body>
<script type="text/javascript">
var map=new Object();
</script>
<c:forEach items="${probCalibtation}" var="calibration">
<script type="text/javascript">
map['${calibration.id}']='${calibration.scaleFactor}';
</script>
</c:forEach>

</html>