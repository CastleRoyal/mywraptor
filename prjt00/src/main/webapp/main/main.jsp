<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>

#tbl_img{
	position:absolute;
	width: 100%;
	height: 600px;
}

#image{
	position:absolute;
	width: 500px;
	height: 300px;
	left:350px;

}

#image2{
	position: absolute;
	width: 400px;
	height: 300;
}
#text{
	font: bold 25px Arial, Sans-serif;
	color: blue;

}
#text2{
	font: bold 25px Arial, Sans-serif;
	color: blue;

}
#text3{
	font: bold 25px Arial, Sans-serif;
	color: blue;

}

.menu1{
	width: 100px;
	height:30px;
	background-color:rgb(64, 64, 64);
	color: white;
	text-align: center;
	
}

.menu2{
	width: 125px;
	height:30px;
	background-color:rgb(64, 64, 64);
	color: white;
	text-align: center;


}

.menu3{
	width: 200px;
	height:30px;
	background-color:rgb(64, 64, 64);
	color: white;
	text-align: center;
}

#c_news{
	margin-left:200px;
}
#review{



}

#tip{


}

#qna{


}

#freeboard{
	margin-left:400px;
	margin-bottom:500px;

}

#traffic{


}

#c_flaw{


}

#picture{

}

#etc_pic{


}







</style>





</head>
<body>

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



</body>
</html>