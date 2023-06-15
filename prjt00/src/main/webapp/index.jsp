<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<style>

*{margin:0; padding:0;}

	header{
		position:fixed;
		top: 0px;
		width: 100%;
		height: 230px;
		background-color: rgb(52, 73, 94);
	}

	
	footer{
		position:fixed;
		bottom: 0px;
		text-align: center;
		width: 100%;
		height: 90px;
		background-color:rgb(52, 73, 94);
	}
	
	table{
	position:absolute;
	width: 100%;
	height: 600px;
	top:230px;
}

#image{
	position:absolute;
	width: 400px;
	height: 200px;
	left:50px;
	top:-30px;
	

}

#image2{
	position: absolute;
	width: 350px;
	height: 200px;
	left:550px;
	top:-30px;
}
.text{
	position:absolute;
	font: bold 25px Arial, Sans-serif;
	color: blue;
	margin-left:270px;
	top:190px;

}
.text2{
	position:absolute;
	font:  14px Arial, Sans-serif;
	color:white;
	left:750px;
	top:80px;

}
.text3{
	position:absolute;
	font: 14px Arial, Sans-serif;
	color: white;
	left:750px;
	top:180px;

}

.menu1{
	position:absolute;
	width: 80px;
	height:30px;
	background-color:rgb(64, 64, 64);
	color: white;
	text-align: center;
	top:250px;
	
}

.menu2{
	position:absolute;
	width: 100px;
	height:30px;
	background-color:rgb(64, 64, 64);
	color: white;
	text-align: center;
	top:250px;


}

.menu3{
	position:absolute;
	width: 150px;
	height:30px;
	background-color:rgb(64, 64, 64);
	color: white;
	text-align: center;
	top:250px;
}

#c_news{
	margin-left:90px;
}
#review{
	margin-left:170px;


}

#tip{
	margin-left:250px;

}

#qna{
	margin-left:330px;


}

#freeboard{
	margin-left:440px;

}

#traffic{
	margin-left:540px;


}

#c_flaw{
margin-left:640px;


}

#picture{
	margin-left:770px;
}

#etc_pic{
	margin-left:920px;

}

	
	
	
</style>


</head>
<body>

<header>
	<jsp:include page="/main/header2.jsp" />
</header>

<!--  중간 배너  -->

	<form action="">
		<table id="tbl_img">
			<tr>
				<td>
					<div>
						<img id="image" src="resources/img/logo.png" />
					</div>
					<div class="text"><b>자동차 정보 공유 사이트</b></div>
				</td>
			</tr>
				
			<tr>
				<td>
					<img id="image2" src="resources/img/handle.jpg" />
					<div class="text2">카페처럼 힘든 등업절차X</div>
					<div class="text3">로그인 안해도 모든 글 읽기가 가능합니다</div>
				</td>
			</tr>
			
			<tr>
				<td>
					<input type="button" id="c_news" class="menu1" value="자동차소식"
					src="">
					<input type="button" id="review" class="menu1" value="리뷰"
					src="">
					<input type="button" id="tip" class="menu1" value="tip"
					src="">
					<input type="button" id="qna" class="menu1" value="Q&A"
					src="">
				</td>
			</tr>
			
			<tr>
				<td>
					<input type="button" id="freeboard" class="menu2" value="자유게시판"
					src="">
					<input type="button" id="traffic" class="menu2" value="사고처리"
					src="">
					<input type="button" id="c_flaw" class="menu2" value="결함제보"
					src="">
				</td>
			</tr>
			
			<tr>
				<td>
					<input type="button" id="picture" class="menu3" value="사진"
					src="">
					<input type="button" id="etc_pic" class="menu3" value="기타"
					src="">
				</td>
			</tr>
			
			





		</table>
	</form>




<footer>
	<jsp:include page="/main/footer.jsp" />
</footer>



</body>
</html>