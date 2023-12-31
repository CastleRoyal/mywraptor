<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="dao.MemberDao, vo.MemberVo" %> 
<jsp:useBean id="memberVo" class="vo.MemberVo" />
<jsp:setProperty name="memberVo" property="*" />


<%
String member_id = request.getParameter("member_id");
String member_pw = request.getParameter("member_pw");

MemberDao dao = new MemberDao();

MemberVo vo = dao.login(member_id, member_pw); 

if(vo != null){//로그인 성공시
	//세션객체에 회원 정보를 추가함(추후 사용을 위해 회원정보를 MemberVo객체로 저장함)
	session.setAttribute("member", vo);
	response.sendRedirect("../index.jsp");

}else{//로그인 실패시
	RequestDispatcher rd = request.getRequestDispatcher("login.jsp?msg=fail");
	rd.forward(request, response);
}


%>