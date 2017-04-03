<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
	<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<style type="text/css">
.readingbox{
width: 90%;
}
.lvdtOff{
margin-top:20px;
margin-left:5%;
float:left;
width:7%;
height:80px;
display: inline-block;
border: 1px solid;
background-color: red;
}
.lvdton{
margin-top:20px;
margin-left:5%;
float:left;
width:7%;
height:80px;
display: inline-block;
border: 1px solid;
background-color: green;
}

</style>
</head>
<body>
<div class="container readingbox">
<c:forEach items="${ranging}" var="range" varStatus="status">
	<c:if test="${range == '1' }">
	<div class="lvdtOff" style="text-align: center;">				
			<label style="margin-top: 10%;">APG<c:out value="${status.count }"></c:out></label>			
		</div>
		</c:if>
		
		<c:if test="${range == '0' }">
		<div class="lvdton" style="text-align: center;">		
			<label style="margin-top: 10%;">APG<c:out value="${status.count }"></c:out></label>			
		</div>
		</c:if>
</c:forEach>
</div>
</body>
</html>