<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="dao.MemberDao, vo.MemberVo" %>    

<%
//페이지 영역에 저장된 자바빈 객체 가져오기
MemberVo vo = (MemberVo)session.getAttribute("member");

MemberDao dao = new MemberDao();

int result = dao.cancel(vo.getMember_idx()); 

if(result == 1){//회원탈퇴 성공시
	session.invalidate();
	response.sendRedirect("../index.jsp");

}else{//회원탈퇴 실패시
	RequestDispatcher rd = request.getRequestDispatcher("update.jsp");
	rd.forward(request, response);
}


%>