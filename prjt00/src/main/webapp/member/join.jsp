<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
	height: 1200px;
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
	
	#member_id{
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
	#reset_btn{
		width:110px;
		height: 40px;
		color: black;
		background-color:rgb(224, 224, 224);
		text-align:center;
		border:0px;
		margin-top:70px;
		margin-left:210px;
		border-radius:5px;
		
	
	}
	
	#join_btn{
		width: 110px;
		height: 40px;
		color: white;
		background-color:rgb(105, 105, 105);
		text-align: center;
		margin-left:15px;
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
<script type="text/javascript" src="../resources/js/checkMember.js"></script>
</head>
<body>

<header>
	<jsp:include page="/main/header.jsp" />
</header>

	<div id="join_container">
	<div id="logo">기본정보 입력</div><br><hr>
	
		<form action="join_process.jsp" method="post" name="join_p">
			<table>
			
			<tr>
				<td>
				<label>아이디</label>
				<input type="text" name="member_id" id="member_id" class="join_var" placeholder="아이디">
				<input type="button" id="checkId_btn" value="아이디 중복확인" >
                <input type="hidden" name="confirm_id">
				<br><p id="p1">-영문자, 숫자만 입력 가능합니다.</p><br><p id="p2">-최소 3자 이상 입력해주세요.</p>
				<br><br><hr><br><br>
				<label>비밀번호</label>
				<input type="password" name="member_pw" id="member_pw" class="join_var" placeholder="비밀번호">
				<br><br><br><hr><br><br>
				<label>닉네임</label>
				<input type="text" name="nickname" id="nicknm" class="join_var" placeholder="닉네임">
				<input type="button" id="checkNn_btn" value="닉네임 중복확인" >
                <input type="hidden" name="confirm_nickname">
				<br><p id="p3">공백없이 한글, 영문, 숫자만 입력 가능 (한글2자, 영문4자 <br>이상 최대6자)</p>
				<br><br><hr><br><br>
				<label>이름</label>
				<input type="text" name="member_name" id="member_name" class="join_var" placeholder="이름">
				<br><br><br><hr><br><br>
				<label>성별</label>
				<select name="gender" id="gender">
					<option value="">성별</option>
					<option value="1">남자</option>
					<option value="2">여자</option>
				</select>
				<br><br><br><hr><br><br>
				<label>휴대폰 번호</label>
				<input type="text" name="phone" id="phone" class="join_var" placeholder="숫자만 입력">
				<br><br><br><hr><br><br>
				<label>이메일</label>
				<input type="email" name="email" id="email" class="join_var" placeholder="이메일 주소">
				<br><br><br><hr>
				<input type="reset" id="reset_btn" value="취소">
				<input type="button" id="join_btn" value="회원가입">
				
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