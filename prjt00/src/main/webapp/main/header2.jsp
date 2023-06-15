<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Header</title>
<style>

	*{
		margin: 0;
		padding: 0;
	}

	img{
		width: 150px;
		height: 100px;
		position:absolute;
		margin-top: 55px;
		margin-left: 170px;
	}

	#header_box{
		width: 100%;
		height: 230px;
		background-color:rgb(52, 73, 94);
	}
	h2{
		color: white;
		font-size: 30px;
		font-weight: bold;
		margin-left: 340px;
		margin-top: 65px;
		
	}

	a{
		margin-right:15px;
		color: black;
		background-color: darkgray;
		font: bold 15px Arial, Sans-serif;
		
	}

	#login_go{
		position: absolute;
		margin-left: 940px;
		top: 30px;
		width: 100px;
		height: 35px;
		background-color: rgb(44, 62, 80);
		color: white;
		text-align: center;
	}
	#join_go{
		position: absolute;
		margin-left: 1050px;
		top: 30px;
		width: 100px;
		height: 35px;
		background-color: rgb(44, 62, 80);
		color: white;
		text-align: center;
	}
	
	#logout{
		position: absolute;
		margin-left: 1000px;
		top: 30px;
		width: 150px;
		height: 35px;
		background-color: rgb(44, 62, 80);
		color: white;
		text-align: center;
	}

	#searchWord{
		position: absolute;
		width: 15%;
		height: 30px;
		margin-left: 870px;
		top: 100px;
		border-radius: 12px;
		
	}

	#search_btn{
		position:absolute;
		width: 70px;
		height: 35px;
		margin-left: 1070px;
		top: 100px;
		background-color:gray;
		border-radius: 10px;
	}

	.menubar{
		
		width: 200px;
		height: 35px;
		color: white;
		background-color:rgb(64, 64, 64);
		text-align: center;
	}
	#a_home{
		position:absolute;
		left:150px;
		top:195px;
		
	}
	#a_carInfo{
	position:absolute;
	left:350px;
	top:195px;
	
	}
	#a_community{
	position:absolute;
	left:550px;
	top:195px;
	}
	#a_galary{
	position:absolute;
	left:750px;
	top:195px;
	}
	#a_MY{
	position:absolute;
	left:950px;
	top:195px;
	}
	
	

	

</style>

</head>
<body>
<c:choose>
	<c:when test="${!empty member}">
		<div id="header_box" onClick="location.href=index.jsp">
	<img src="resources/img/logo.png" onClick="location.href=index.jsp">&nbsp;<h2>자동차 정보공유 사이트</h2>
	
	<input type="button" id="logout" value="로그아웃" onClick="location.href='member/logout.jsp'">
	
	<input type="text" name="searchWord" id="searchWord">
	<input type="submit" id="search_btn" value="검색"> 
	
	<input type="button" id="a_home" class="menubar" value="HOME" onClick="location.href='index.jsp'">
		<input type="button" id="a_carInfo" class="menubar" value="자동차 정보" onClick="location.href='../index.jsp'">
			<input type="button" id="a_community" class="menubar" value="커뮤니티" onClick="location.href='../index.jsp'">
				<input type="button" id="a_galary" class="menubar" value="갤러리" onClick="location.href='../index.jsp'">
					<input type="button" id="a_MY" class="menubar" value="MY" onClick="location.href='member/myInfo.jsp'">

		</div>
	</c:when>
	<c:otherwise>
	<div id="header_box">
	<img src="resources/img/logo.png">&nbsp;<h2>자동차 정보공유 사이트</h2>
	
		<input type="button" id="login_go" value="로그인" onClick="location.href='member/login.jsp'">
		<input type="button" id="join_go" value="회원가입" onClick="location.href='member/join.jsp'">

		
	<input type="text" name="searchWord" id="searchWord">
	<input type="submit" id="search_btn" value="검색"> 
	
	<input type="button" id="a_home" class="menubar" value="HOME" onClick="location.href='../index.jsp'">
		<input type="button" id="a_carInfo" class="menubar" value="자동차 정보" onClick="location.href='../index.jsp'">
			<input type="button" id="a_community" class="menubar" value="커뮤니티" onClick="location.href='../index.jsp'">
				<input type="button" id="a_galary" class="menubar" value="갤러리" onClick="location.href='../index.jsp'">
					<input type="button" id="a_MY" class="menubar" value="MY" onClick="location.href='member/myInfo.jsp'">
	
	</div>
	</c:otherwise>
</c:choose>


</body>
</html>