<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<style type="text/css">
.lvdt1Reading,.lvdt2Reading,.lvdt3Reading,.lvdt4Reading,.lvdt5Reading,.lvdt6Reading,.lvdt7Reading,.lvdt8Reading,.lvdt9Reading,.lvdt10Reading{
margin-top:;
margin-left:2%;
width:13%;
height: 150px;
float: left;
border: 1px ;
border-radius:5px;
background-color: #4d4d4d;
}

.lvdtReading{
margin-top:2%;
margin-left:5%;
width:9%;
height: 20%;
float: left;
border: 1px groove;
border-radius:5px;
background-color: #ff6666;
}
</style>

<script type="text/javascript">
		var val= '${reaging }'
		if(val=='10')
			{
			 document.getElementById("demo").style.background = '#ff6666';
			}
		else
			document.getElementByClass("demo").style.backgroundColor= '#4dff4d';
		
		</script>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<c:forEach items="${ranging}" var="range">
	<c:if test="${range =='1'}">
	<div class="lvdt1Reading" style="background-image: url('image/lightbulb.png'); background-position: -3.5% 70%;">
	</c:if>
	<c:if test="${range =='0'}">
	<div class="lvdt1Reading" style="background-image: url('image/lightbulb.png'); background-position: 103% 70%;">
	</c:if>
		<div style="width: 100%;height:20%; font:20px bolder; text-align: center; border-bottom: 1px ;"></div>
		<div style="width: 100%; height: 100px; text-align: center;">
		<label style="margin-top: 10%;"><%-- <c:out value="${reaging }"></c:out> --%></label>
		</div>
	</div>
</c:forEach>
		
		<%-- <div class="lvdt9Reading">
			<div style="width: 100%;height:20%; font:20px bolder; text-align: center;border-bottom: 1px groove;">Lvdt-9</div>
			<div style="width: 100%; height: 100px; text-align: center;">
			<label style="margin-top: 10%;"><c:out value="${reaging }"></c:out></label>
			</div>
		</div>
		<div class="lvdt10Reading">
			<div style="width: 100%;height:20%; font:20px bolder; text-align: center;border-bottom: 1px groove;">Lvdt-10</div>
			<div style="width: 100%; height: 100px; text-align: center;">
			<label style="margin-top: 10%;"><c:out value="${reaging }"></c:out></label>
			</div>
		</div>  --%>
						
</body>
</html>