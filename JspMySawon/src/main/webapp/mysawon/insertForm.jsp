<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link href="https://fonts.googleapis.com/css2?family=Dongle:wght@300;400;700&family=Gaegu:wght@300&family=Noto+Serif+KR:wght@200&family=Single+Day&display=swap"rel="stylesheet">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
    <script src="https://code.jquery.com/jquery-3.7.0.js"></script>
<style>
div{
cursor:pointer;
}
#btn1{
position: absolute;
top:180px;
left:1180px;
}

body{
background-color: pink;
margin-top: 140px;
}

h1{
font-family: Dongle;
font-size: 50pt;
}
table{
background-color: white; }

</style>
<script>
$(function(){
	$("#joomin1").on('keyup',function(){
		if(this.value.length==6)
			$("#joomin2").focus();
	});
	$("#hp2").on('keyup',function(){
		if(this.value.length==4)
			$("#hp3").focus();
	});
});
</script>
<title>Insert title here</title>
</head>
<body>
	<button type="button" id="btn1" class="btn btn-secondary btn-lg" onclick="location.href='sawonmain.jsp'">뒤로가기</button>
	<div style="margin:50px 600px;">
		<form action="insertAction.jsp" method="post" enctype="multipart/form-data" class="form-inline">
			<table class="table table-bordered" style="width:700px;  border:4px solid #FF6666;">
			<caption align="top"><h1>사원정보등록</h1></caption>
			
			<tr>
				<td align="center" style="background-color:#FFCCCC" width="150">프로필이미지
				<td>
				<input type="file" name="image" id="image">
				</td>
			</tr>
			
			<tr>
				<td style="background-color:#FFCCCC" width="150" align="center">이름
				<td>
				<input type="text" class="form-control" name="name" style="width:100px;"
				required="required" id="name">
				</td>
			</tr>
			
			<tr>
				<td style="background-color:#FFCCCC" width="150" align="center">성별
				<td>
				<label><input type="radio" name="gender" value="남성">남성</label>
				<label><input type="radio" name="gender" value="여성">여성</label>
				</td>
			</tr>
			
			<tr>
				<td style="background-color:#FFCCCC" width="150" align="center">주소
				<td>
				<select id="addr1" name="addr1">
					<option value="서울시">서울특별시</option> 
					<option value="경기도">경기도</option> 
					<option value="강원도">강원도</option> 
					<option value="전라도">전라도</option> 
					<option value="충청도">충청도</option> 
					<option value="경상도">경상도</option>
				</select>
				
				<select id="addr2" name="addr2">
					<option value="가구">가구</option>
					<option value="나구">나구</option>
					<option value="다구">다구</option>
					<option value="라구">라구</option>
					<option value="마구">마구</option>
					<option value="바구">바구</option>
				</select>
				
				<select id="addr3" name="addr3">
					<option value="1동">1동</option>
					<option value="2동">2동</option>
					<option value="3동">3동</option>
					<option value="4동">4동</option>
					<option value="5동">5동</option>
				</select>
				<input type="text" id="addr4" name="addr4">
				</td>
			</tr>
			
			<tr>
				<td style="background-color:#FFCCCC" width="150" >주민등록번호
				<td>
				<input type="text" name="joomin1" id="joomin1" style="width:120px;" maxlength="6"
				required="required">
				<b>-</b>
				<input type="password" name="joomin2" id="joomin2" style="width:120px;" maxlength="7"
				required="required">
				</td>
			</tr>
			
			<tr>
				<td style="background-color:#FFCCCC" width="150" align="center">전화번호
				<td>
				<select name="hp1" id="hp1">
				<option value="010">010
				<option value="019" >019
				<option value="02">02
				<option value="070" >070
				<option value="011">011
				</select>
				<b>-</b>
				<input type="text" id="hp2" name="hp2" style="width:70px" maxlength="4">
				<b>-</b>
				<input type="text" id="hp3" name="hp3" style="width:70px" maxlength="4"> 
				</td>
			</tr>
			
			<tr>
				<td style="background-color:#FFCCCC" width="150" align="center">이메일
				<td>
				<input type="text" id="email1" name="email1" style="width:130px">
				<b>@</b>
				<select name="email2" id="email2">
					<option value="naver.com">naver.com</option>
					<option value="daum.net" >daum.net</option>
					<option value="google.com">google.com</option>
				</select>
				</td>
			</tr>
			
			<tr>
				<td colspan="2" align="center" >
			    <button type="submit" id="btn2" class="btn btn-outline-secondary" >등록</button>
				</td>
			</tr>
			</table>
		</form>
	</div>
	
</body>
</html>