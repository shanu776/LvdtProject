<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<style type="text/css">
#usr{
width: 15%;
}
.batterymeter{
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
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<div class="container">
<div class="form-group" style="margin-left: 10%;">
<input type="text" class="form-control" value="${setting.model_no}" id="usr">
</div>
<div>

<div class="batterymeter">
	<div class="battery-level"></div>
</div>

</div>


<script type="text/javascript">
/* $(function(){	
	setInterval(getReadings, 200);
	}); */
function getReadings(){
	$.ajax({url: "getreadings.zzz", 
    	success: function(result){
    	alert(result);
    }
    });
};
getReading();

</script>
</body>
</html>