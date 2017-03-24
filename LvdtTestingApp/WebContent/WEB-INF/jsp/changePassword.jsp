<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<style type="text/css">
.changePassBox{
	margin-top:100px;
	margin-left:35%;
	width: 30%;
	height: 300px;
	border: 2px groove;
	border-radius: 2px;
	background: rgba(0,0,0,0.1);
}
.changePassUl{
	/* border:1px solid; */
	padding: 0px;
	width: 70%;
	margin-left: 15%;
	margin-top: 10%;;
}
.changePassLi{
	/* border:1px solid; */
	list-style: none;
	margin-top:15px;
	height: 40px;
}
.changePassSubmit{
	/* border:1px solid; */
	list-style: none;
	margin-top:20px;
	height: 40px;
	text-align: center;
}
</style>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body style="background-color: #4d4d4d;">
<div class="changePassBox">
<form action="changePassAction.zzz" method="post">
<ul class="changePassUl">
<li class="changePassLi" style="text-align: center;">
	<div style="font-size: 30px; color: white;">ChangePassword</div>
</li>

<li class="changePassLi">
	<div class="form-group">
	  <!-- <label for="usr">Name:</label> -->
	 <input type="text" name="user" class="form-control" id="usr" style="height: 40px;" placeholder="Old Password">
	</div>
</li>
<li class="changePassLi">
	<div class="form-group">
	 <!--  <label for="pwd">Password:</label> -->
	  <input type="password" name="password" class="form-control" id="pwd" style="height: 40px;" placeholder="New Password">
	</div>
</li>
<li class="changePassSubmit">
	<input type="submit" class="btn btn-default" value="Submit">
</li>
</ul>
</form>
</div>

</body>
</html>