<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link href="css/bootstrap.min.css" rel="stylesheet" type="text/css" />
<link href="css/bootstrap-theme.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="js/bootstrap.min.js"></script>
<style type="text/css">
.menuButton{
width: 100%;
height: 40px;
text-align: center;
}

.lvdtReadingArea{
width:100%;
height: 40%;
border: 1px solid;
}
</style>

<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body style="background-color: #4d4d4d;">

<div class="home">
	<div id="lvdtReadingArea">
		
	</div>
	
	
</div>

<script type="text/javascript">
$(function(){
	setInterval(oneSecondFunction, 2000);

	});
 

	function oneSecondFunction() {
	
		var url="reading.zzz";
		
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
					document.getElementById("lvdtReadingArea").innerHTML=xmlhttp.responseText;
					}
			};
			xmlhttp.open("post", url, true);
			xmlhttp.send();
	}
</script>
</body>
</html>