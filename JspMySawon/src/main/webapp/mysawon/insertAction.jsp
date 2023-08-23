

<%@page import="com.oreilly.servlet.multipart.DefaultFileRenamePolicy"%>
<%@page import="com.oreilly.servlet.MultipartRequest"%>
<%@page import="mySawon.model.MySawonDto"%>
<%@page import="mySawon.model.MySawonDao"%>

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
</head>
<body>
<% 
	//한글인코딩
	request.setCharacterEncoding("utf-8");

	ServletContext context=getServletContext();
	String realFolder = context.getRealPath("/upload"); 
	int filesize=1024*1024*3;
	MultipartRequest multi = null;
	
	
	multi=new MultipartRequest(request, realFolder, filesize, "utf-8",new DefaultFileRenamePolicy());
	

	MySawonDao dao =new MySawonDao();
	MySawonDto dto=new MySawonDto();	
	

	String image=multi.getFilesystemName("image");
	String name=multi.getParameter("name");
	String gender=multi.getParameter("gender");
	String addr=multi.getParameter("addr1")+multi.getParameter("addr2")+
			multi.getParameter("addr3")+multi.getParameter("addr4");
	String joomin=multi.getParameter("joomin1")+multi.getParameter("joomin2");
	String hp = multi.getParameter("hp1")+multi.getParameter("hp2")+multi.getParameter("hp3");
	String email=multi.getParameter("email1")+"@"+multi.getParameter("email2");
	
	dto.setName(name);
	dto.setGender(gender);
	dto.setAddr(addr);
	dto.setJoomin(joomin);
	dto.setHp(hp);
	dto.setEmall(email);

	if(image==null)
		dto.setImage("../image/noimage.png");//사진선택안함 
		else
			dto.setImage("../upload/"+image);
	
	//db insert
	dao.insertSawon(dto);
	//이동
	response.sendRedirect("insertclear.jsp");
%>

</body>
</html>