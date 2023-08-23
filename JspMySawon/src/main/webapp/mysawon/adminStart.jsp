<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link
	href="https://fonts.googleapis.com/css2?family=Black+And+White+Picture&family=Cute+Font&family=Diphylleia&family=Dongle:wght@300&family=Hi+Melody&family=Nanum+Brush+Script&display=swap"
	rel="stylesheet">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<script src="https://code.jquery.com/jquery-3.7.0.js"></script>
<title>Insert title here</title>
<style type="text/css">
img{
width: 300px;
height: 300px;
margin-top: 50px; 
}

b{
	font-family: "Dongle";
	font-size: 30pt;
}

div{
margin-left: 140px;
margin-top: 65px;
background-color: pink;
}
body{
background-color: pink;
}

table{
background-color: pink;
}

</style>
</head>
<body>

	<button type="button" id="btn1" class="btn btn-secondary btn-lg"
		onclick="location.href='sawonmain.jsp'">뒤로가기</button>
	<br>
	<b style="font-size: 6em; margin-left: 600px; margin-top: 200px;">관리자시작</b>
	<div>
		<table>
			<tr>

				<td>
					<div style="width: 400px; height: 400px; border: 3px solid gray; cursor: pointer; background-color: white;"	align="center" onclick="location.href='MysawonSetting.jsp'">
					<img src="./image/a4.png">
					<br>
					<b>계정관리</b>
					</div>
				</td>
				<td>
					<div style="width: 400px; height: 400px; border: 3px solid gray; cursor: pointer; background-color: white;"	align="center" onclick="location.href=''">
					<img src="./image/a5.png">
					<br>
					<b>직위관리</b>
					</div>
				</td>
			</tr>


		</table>
	</div>

</body>
</html>