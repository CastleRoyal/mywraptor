<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<style>

	header{
		position:absolute;
		top: 0px;
		width: 100%;
		height: 230px;
		background-color: rgb(52, 73, 94);
	}

	footer{                         
		position:absolute;    
		margin-bottom:300px;
		text-align: center;
		width: 100%;
		height: 90px;
		background-color:rgb(52, 73, 94);
	}
	
	#login_container{
	width:450px;
	height: 500px;
	margin: 0 auto;
	margin-top: 300px;
	background-color:rgb(239, 238, 238);
	}
	#login_text{
	 font: bold 35px Arial, Sans-serif;
	 color:rgb(70, 68, 68);
	 margin-left:175px;
	 margin-top:40px;
	}
	
	.login_idpw{
		position:absolute;
		width: 300px;
		height: 40px;
		color:rgb(70, 68, 68);
		text-align:left;
	}
	
	#log_id{
		margin-left:70px;
		margin-top:20px;
	}
	
	#log_pw{
		margin-left:70px;
		margin-top:60px;
	}
	
	#log_btn{
		width: 305px;
		height: 40px;
		text-align:center;
		color: white;
		background-color:rgb(64, 64, 64);
		margin-top:115px;
		margin-left:70px;
	}
	
	#msg{
		text-align:center;
		font: bold 13px Arial, Sans-serif;
		margin-top:15px;
		margin-left:3px;
	}



</style>

<script type="text/javascript" src="../resources/js/checkLogin.js"></script>

</head>
<body>

<header>
	<jsp:include page="/main/header.jsp" />
</header>

<section>
	<div id="login_container">
		<form action="login_process.jsp" method="post" name="login_p">
			<table>
		
				<tr>
					<td>
					<div id="login_text">로그인</div><br>
					</td>
				</tr>
				
				<tr>
					<td>
					<input type="text" name="member_id" id="log_id" class="login_idpw" placeholder="아이디"><br>
					<input type="password" name="member_pw" id="log_pw" class="login_idpw" placeholder="비밀번호"><br>
					<input type="button" name="log_btn" id="log_btn" value="로그인"><br>
					</td>
				</tr>
				
	
			
					
			</table>
		</form>		
		
		
		<c:choose>
	<c:when test="${param.msg eq 'ok'}">
		<div id="msg">회원가입이 정상적으로 이루어졌습니다</div>
	</c:when>
	<c:when test="${param.msg eq 'fail'}">
		<div id="msg">회원정보가 없거나 아이디나 비밀번호가 일치하지 않습니다</div>
	</c:when>
		</c:choose> 


	</div>
	</section>
	
	
    

<footer>
	<jsp:include page="/main/footer.jsp" />
</footer>


</body>
</html>