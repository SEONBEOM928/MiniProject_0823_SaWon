<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link href="https://fonts.googleapis.com/css2?family=Dongle:wght@300;400;700&family=Gaegu:wght@300&family=Noto+Serif+KR:wght@200&family=Single+Day&display=swap"rel="stylesheet">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
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
margin-left: 117px;
margin-top: 65px;
background-color: pink;
}
h2{
margin-left: 650px;
margin-top:80px;
font-family: Gaegu;
font-size:60pt;
color:black;
font-weight: bold;
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
<h2>사원정보관리시스템</h2>
<div>
<table>
<tr>
<td align="center">
<div style="width: 400px; height: 500px; border: 3px solid gray; cursor: pointer; background-color: white;" onclick="location.href='sawonlist.jsp'" align="center" >
<img src="./image/a1.png">
<br>
<b>사원목록보기</b>
</div>
</td>
<td align="center">
<div style="width: 400px; height: 500px; border: 3px solid gray; cursor: pointer; background-color: white;" onclick="location.href='insertForm.jsp'" align="center">
<img src="./image/a2.png">
<br>
<b>사원등록하기</b>
</div>
</td>
<td align="center">
<div style="width: 400px; height: 500px; border: 3px solid gray; cursor: pointer; background-color: white;" onclick="location.href='adminStart.jsp'" align="center">
<img src="./image/a3.png">
<br>
<b>관리자시작</b></div>
</td>
</tr>
</table>
</div>
</body>
</html>