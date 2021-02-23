<%@page import="com.webjjang.board.service.BoardDeleteService"%>
<%@page import="com.webjjang.main.controller.ExeService"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%
//순수한 자바 코드 부분 //
System.out.println("--delete.jsp : 게시글 삭제 처리 --");

//넘어오는 데이터 받기 - 번호 
String strNo = request.getParameter("no");
long no = Long.parseLong(strNo);

//DB처리 
int deleteResult =(Integer)ExeService.execute(new BoardDeleteService(),no);
//처리를 한 후에 자동 목록으로 페이지 이동 
response.sendRedirect("list.jsp");
%>



<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

</body>
</html>