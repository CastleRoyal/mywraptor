<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> 
<%@ page import="vo.MemberVo" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">



<title>내 정보</title>

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
		margin-bottom:30px;
		text-align: center;
		width: 100%;
		height: 90px;
		background-color:rgb(52, 73, 94);
		
	}
	
	#join_container{
	
	width:600px;
	height: 850px;
	margin: 0 auto;
	
	
	}
	
	#logo{
	 	
      
        margin-top: 300px;
        margin-bottom: 10px;
        font: bold 25px Arial, Sans-serif;
        text-align: left;
        color: rgb(51, 51, 51);
	}
	
	label{
		font: bold 18px Arial, Sans-serif;
        text-align: left;
        color: rgb(51, 51, 51);
	}
	
	.join_var{
	width:300px;
	height:30px;
	}
	
	hr{
		width:700px;
		height:1.5px;
		color:rgb(197, 192, 192);
		background-color:rgb(197, 192, 192);
	}
	
	#id{
		margin-left:155px;
		margin-top:10px;
	}
	#member_pw{
		margin-left:135px;
	}
	#nickname{
		margin-left:155px;
	}
	
	#member_name{
		margin-left:175px;
	}
	
	#phone{
		margin-left:115px;
	}
	
	#email{
		margin-left:155px;
	}
	#p1{
		font-size:12px;
		margin-left:220px;
		margin-top:5px;
		font-family: sans-serif;
	}
	#p2{
		font-size:12px;
		margin-left:220px;
		margin-top:-15px;
		font-family: sans-serif;
	}
	#p3{
		font-size:13px;
		margin-left:210px;
		margin-top:5px;
		color:rgb(54, 160, 247);
		font-family: sans-serif;
	}

	#edit_btn{
		width: 110px;
		height: 40px;
		color: white;
		background-color:rgb(105, 105, 105);
		text-align: center;
		margin-top:60px;
		margin-left:300px;
		border-radius:5px;
		border:0px;
	}
	
	#checkId_btn{
		position:absolute;
		width:120px;
		height:33px;
		margin-left:1px;
		margin-top:10px;
		color: white;
		background-color:rgb(105, 105, 105);
		text-align: center;
		border-radius: 5px;
		border:0px;
	}
	#checkNn_btn{
		position:absolute;
		width:120px;
		height:33px;
		margin-left:1px;
		color: white;
		background-color:rgb(105, 105, 105);
		text-align: center;
		border-radius:5px;
		border:0px;
	}

	#gender{
		width:150px;
		height:35px;
		margin-left:175px;
	}
	

</style>
</head>
<body>

<header>
	<jsp:include page="/main/header.jsp" />
</header>

	<div id="join_container">
	<div id="logo">내 정보</div><br><hr><br>
	
		<form action="" method="post" name="my_p">
			<table>
			
			<tr>
				<td>
				<label>아이디</label>
				<input type="text" id="id" class="join_var" value="${member.member_id}" disabled>
				<br><br><br><br>
				<label>닉네임</label>
				<input type="text" name="nname" id="nickname" class="join_var" value="${member.nickname}" disabled>
                <input type="hidden" name="nickname" value="${member.nickname}">
				<br><br><br><br>
				<label>이름</label>
				<input type="text" name="member_name" id="member_name" class="join_var" value="${member.member_name}" disabled>
				<br><br><br><br>
				<label>성별</label>
				<select name="gender" id="gender" disabled>
					<option value="">성별</option>
					<c:choose>
						<c:when test="${member.gender eq 1 }">
							<option value="1" selected>남자</option>
							<option value="2">여자</option>
						</c:when>
						<c:otherwise>
							<option value="1">남자</option>
							<option value="2" selected>여자</option>
						</c:otherwise>
					</c:choose>
				</select>
						
				<br><br><br><br>
				<label>휴대폰 번호</label>
				<input type="text" name="phone" id="phone" class="join_var"  value="${member.phone}" disabled>
				<br><br><br><br>
				<label>이메일</label>
				<input type="email" name="email" id="email" class="join_var"  value="${member.email}" disabled>
				<br><br><br><hr>
				<input type="button" id="edit_btn" value="수정하기" onClick="location.href='member/update.jsp'">
				
				<!-- 회원가입 type을 submit으로 하면 정보 입력 누락됐을 때 alert알람뜨고나서
					 입력했던 정보들 초기화됨 button으로 하면 유지 -->
			
			
			
			
			
				</td>
			</tr>
			
			
			
			
			
			
			
			
			</table>
	
		</form>
	
	
	
	</div>
	
	
	<footer>
	<jsp:include page="/main/footer.jsp" />
</footer>

</body>
</html>