<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
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
width: 10%;
height: auto;
border: 1px solid;
}
</style>
</head>
<body>
<div class="measurement">
<div class="mHeader">
<div class="form-group" style="width: 100%;"> 
  <select class="form-control" onchange="measurementGraph(this.value);">
  <option>select Model:</option>
   <c:forEach var="setting" items="${partSetting}">
    <option value="${setting.model_no }">${setting.model_name }</option>
   </c:forEach>
  </select>  
</div>
</div>
<div id="measurementgraph"></div>

</div>

<div id="readings"></div>


<script type="text/javascript">
var scalef = parseFloat($('#sel1').val());
var readings;
function getselected(){	
	alert(scalef*readings);
}

$(function(){
	setInterval(oneSecondFunction, 200);
	setInterval(getReadings, 200);
	});

function getReadings(){
	$.ajax({url: "getreadings.zzz", 
    	success: function(result){
    	$(".reading").html(result); 
    	readings=parseInt(result);    	
    }
    });
};
/* ============================================== calling light section ============================================================ */
	function oneSecondFunction() {
		
		var url="measuredReadings.zzz";
		
		var xmlhttp;
		if(window.XMLHttpRequest)
			{
				xmlhttp=new XMLHttpRequest();
			}
		else
			{
			xmlhttp=new ActiveXObject("Microsoft.XMLHTTP");
			}
			xmlhttp.onreadystatechange=function()
			{
				if(xmlhttp.readyState==4 && xmlhttp.status==200)
					{				
					document.getElementById("readings").innerHTML=xmlhttp.responseText;
					}
			};
			xmlhttp.open("post", url, true);
			xmlhttp.send();
	}
/* =====================================================calling center portion where graph shown=================================== */	
	function measurementGraph(value) {
		 var url="measurementGraph.zzz?id="+value;
		 
		var xmlhttp;
		if(window.XMLHttpRequest)
			{
				xmlhttp=new XMLHttpRequest();
			}
		else
			{
			xmlhttp=new ActiveXObject("Microsoft.XMLHTTP");
			}
			xmlhttp.onreadystatechange=function()
			{
				if(xmlhttp.readyState==4 && xmlhttp.status==200)
					{			
					document.getElementById("measurementgraph").innerHTML=xmlhttp.responseText;
					}
			};
			xmlhttp.open("post", url, true);
			xmlhttp.send(); 
	}
</script>
</body>
</html>