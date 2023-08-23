<%@page import="java.text.SimpleDateFormat"%>
<%@page import="mySawon.model.MySawonDto"%>
<%@page import="java.util.ArrayList"%>
<%@page import="mySawon.model.MySawonDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link href="https://fonts.googleapis.com/css2?family=Dongle:wght@300;400;700&family=Gaegu:wght@300&family=Noto+Serif+KR:wght@200&family=Single+Day&display=swap"rel="stylesheet">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
    <script src="https://code.jquery.com/jquery-3.7.0.js"></script>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.4/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
<title>Insert title here</title>
<style>
body{
}

div{
background-color: white;
}

.modal-header{
background-color: pink;
}


</style>

<script type="text/javascript">
function funcdel(num,photo,name,addr,joomin,hp,email,ipsaday){
	//alert(num);
	$("#mynum").html(num);
	$("#myphoto").html(photo);
	$("#myname").html(name);
	$("#myaddr").html(addr);
	$("#myjoomin").html(joomin);
	$("#myhp").html(hp);
	$("#myemail").html(email);
	$("#myipsaday").html(ipsaday);
	
	$("#myModal").modal();
	
};
</script>
</head>
<%
  MySawonDao dao=new MySawonDao();
   ArrayList<MySawonDto> list=dao.selectMySawon();
   SimpleDateFormat sdf=new SimpleDateFormat("yyyy-MM-dd");
%>
<body>
<button type="button" id="btn1" class="btn btn-secondary btn-lg" onclick="location.href='sawonmain.jsp'" style=" background-color: pink;">뒤로가기</button>
<div class="container">
<table class="table table-bordered" style="width:1300px;">
   <tr align="center" class="table table-warning" style=" background-color: pink;">
      <th width="100">번호</th>
      <th width="120">이름</th>
      <th width="100">성별</th>
      <th width="160">직위</th>
      <th width="160">부서</th>
      <th width="160">급여</th>
      <th width="240">등록일</th>
   </tr>
   
<%
   for(int i=0;i<list.size();i++)
   {
      MySawonDto dto=list.get(i); //i번지의 dto를 꺼낸다.
      %>
      
      <tr style="cursor: pointer;" onclick="funcdel('<%=dto.getNum()%>','<%=dto.getImage() %>','<%=dto.getName() %>','<%=dto.getAddr() %>','<%=dto.getJoomin() %>','<%=dto.getHp() %>','<%=dto.getEmall() %>','<%=dto.getIpsaday() %>')">
         <td><%=i+1 %></td>
         <td><%=dto.getName() %></td>
         <td><%=dto.getGender() %></td>
         <td><%=dto.getGrade() %></td>
         <td><%=dto.getBuseo() %></td>
         <td><%=dto.getPay() %></td>
         <td><%=sdf.format(dto.getPlusday()) %></td>
      </tr>   
   <%}%>
   </table>
  </div> 
   
   
   <!-- Modal -->
   
   
   
  <div class="modal fade" id="myModal" role="dialog">
    <div class="modal-dialog modal-lg">
    
      <!-- Modal content-->
      <div class="modal-content">
        <div class="modal-header">
          <button type="button" class="close" data-dismiss="modal">&times;</button>
          <h4 class="modal-title">사원상세정보</h4>
        </div>
        <div class="modal-body">
          <table class="table table-bordered">
      <tr align="center">
         <th>사원번호</th>
         <th>이미지</th>
         <th>이름</th>
         <th>주소</th>
         <th>주민번호</th>  
         <th>핸드폰</th>
         <th>이메일</th>
         <th>입사일</th>
      </tr>
      <tr>
         <td id="mynum"></td>
         <td id="myphoto"></td>
         <td id="myname"></td>
         <td id="myaddr"></td>
         <td id="myjoomin"></td>  
         <td id="myhp"></td>
         <td id="myemail"></td>
         <td id="myipsaday"></td>
      </tr>         
         </table>
        </div>
        <div class="modal-footer">
          <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
        </div>
      </div>
      
    </div>
</body>
</html>