<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="dao.MemberDao" %>    

<%
//checkId.jsp에서 전달된 값을 받아서 DAO클래스를 이용해서 아이디 중복검사를 수행함
String nickname = request.getParameter("nickname");
//checkId.jsp에 <input type="text" name="member_id" value="${param.member_id}">에 들어간 값을
//가져옴 param.member_id는 join.jsp에 있는 member_id한테서 값을 받아옴

MemberDao dao = new MemberDao();
//dao 객체 생성

int result2 = dao.checkNicknamee(nickname);
//result에 MemberDao에 있는 checkId 메소드 결과값을 넣어줌 (0:false, 1:true) 


request.setAttribute("nickname", nickname);
//"member_id"객체에 member_id의 값을 넣어줌
RequestDispatcher rd = request.getRequestDispatcher("checkNickname2.jsp?result="+result2);
rd.forward(request, response); //RequestDispathcer를 통해 result값을 위 dao.checkId값을 넣고
//checkId.jsp페이지로 이동시킨다.

%>