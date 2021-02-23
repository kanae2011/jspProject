<%@page import="com.webjjang.main.controller.ExeService"%>
<%@page import="com.webjjang.board.service.BoardWriteService"%>
<%@page import="com.webjjang.board.vo.BoardVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%
//순수한 자바 코드 부분 //
System.out.println("--write.jsp : 게시글 작성 처리 --");

request.setCharacterEncoding("utf-8");
//데이터를 받는다-> 서버가 전달해주는 리퀘스트 객체 안에 데이터가 들어있음
//request 객체. 전달 데이터 가져오기(name명);
String title = request.getParameter("title");
String content = request.getParameter("content");
String writer = request.getParameter("writer");
//vo객체를 만들어서 넣음
BoardVO vo = new BoardVO();
vo.setTitle(title);
vo.setContent(content);
vo.setWriter(writer);

//DB에 데이터를 저장하는 처리
int writeresult = (Integer)ExeService.execute(new BoardWriteService(),vo);
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