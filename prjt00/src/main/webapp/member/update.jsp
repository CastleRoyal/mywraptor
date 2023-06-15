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
		margin-bottom:30px;
		text-align: center;
		width: 100%;
		height: 90px;
		background-color:rgb(52, 73, 94);
		
	}
	
	#join_container{
	
	width:600px;
	height: 1000px;
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
		margin-left:85px;
		margin-top:10px;
	}
	#member_pw{
		margin-left:135px;
	}
	#nicknm{
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
	#cancel_btn{
		width:110px;
		height: 40px;
		color: black;
		background-color:rgb(224, 224, 224);
		text-align:center;
		border:0px;
		margin-top:70px;
		margin-left:150px;
		border-radius:5px;
		
	
	}
	
	#update_btn{
		width: 110px;
		height: 40px;
		color: white;
		background-color:rgb(105, 105, 105);
		text-align: center;
		margin-left:15px;
		border-radius:5px;
		border:0px;
	}
	
	#checkNn_btn2{
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
	#id_label{
		font: bold 14px Arial, Sans-serif;
        text-align: left;
        color: rgb(51, 51, 51);
	}
	#bt_pw{
		position:absolute;
		width:120px;
		height:33px;
		margin-left:1px;
		margin-top:-1px;
		color: white;
		background-color:rgb(105, 105, 105);
		text-align: center;
		border-radius: 5px;
		border:0px;
	
	}
	
	#out_btn{
		width: 110px;
		height: 40px;
		color: white;
		background-color:rgb(52, 73, 94);
		text-align: center;
		margin-left:15px;
		border-radius:5px;
		border:0px;
}

</style>
<script type="text/javascript" src="../resources/js/checkMember2.js"></script>
</head>
<body>

<header>
	<jsp:include page="/main/header.jsp" />
</header>

	<div id="join_container">
	<div id="logo">회원정보수정</div><br><hr><br>
	
		<form action="update_process.jsp" method="post" name="update_p">
			<table>
			
			<tr>
				<td>
				<label>아이디</label><label id=id_label>(변경불가)</label>
				<input type="text" id="id" class="join_var" placeholder="아이디" value="${member.member_id}" disabled>
				<input type="hidden" name="member_id" value="${member.member_id}">
				<br><br><br><br>
				<label>비밀번호</label>
				<input type="password" name="member_pw" id="member_pw" class="join_var" placeholder="비밀번호" value="${member.member_pw}">
				<input type="button" name="bt_pw" id="bt_pw" value="변경하기">
				<br><br><br><br>
				<label>닉네임</label>
				<input type="text" name="nickname" id="nicknm" class="join_var" placeholder="닉네임" value="${member.nickname}">
                <input type="button" name="checkNn_btn2" id="checkNn_btn2" value="중복확인">
                <input type="hidden" name="conf_nickname">
				<br><p id="p3">공백없이 한글, 영문, 숫자만 입력 가능 (한글2자, 영문4자 <br>이상 최대6자)</p>
				<br><br><br>
				<label>이름</label>
				<input type="text" name="member_name" id="member_name" class="join_var" placeholder="이름" value="${member.member_name}">
				<br><br><br><br>
				<label>성별</label>
				<select name="gender" id="gender">
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
				<input type="text" name="phone" id="phone" class="join_var" placeholder="숫자만 입력" value="${member.phone}">
				<br><br><br><br>
				<label>이메일</label>
				<input type="email" name="email" id="email" class="join_var" placeholder="이메일 주소" value="${member.email}">
				<br><br><br><hr>
				
				<input type="reset" id="cancel_btn" value="취소하기" onclick="history.back()">
				<input type="submit" id="update_btn" value="수정완료">
				<input type="button" id="out_btn" value="회원탈퇴" onClick="location.href='cancel.jsp'">
				
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