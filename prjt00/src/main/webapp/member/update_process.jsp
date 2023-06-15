<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="dao.MemberDao, vo.MemberVo" %>    

<%-- 화면단에서 넘어온 값들을 일괄적으로 MemberVo에 저장하기 위해서 자바빈과 액션태그를 사용함 --%>
<jsp:useBean id="memberVo" class="vo.MemberVo" />
<jsp:setProperty name="memberVo" property="*" />

<%
//페이지 영역에 저장된 자바빈 객체 가져오기
MemberVo vo = (MemberVo)pageContext.getAttribute("memberVo");

MemberDao dao = new MemberDao();

MemberVo vo2 = dao.update(vo); 




  
if(vo2 != null){//회원정보 수정 성공시
	session.removeAttribute("member");
	session.setAttribute("member", vo2);
%>
	<script>
	alert("회원정보가 정상적으로 수정되었습니다.");
	</script>
<%
	response.sendRedirect("../index.jsp");

	
	

}else{//회원정보 수정 실패시
	RequestDispatcher rd = request.getRequestDispatcher("update.jsp");
	rd.forward(request, response);
}

%>