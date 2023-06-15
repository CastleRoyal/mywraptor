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
	
	section{
		right:80px;
	}
	
	
</style>


</head>
<body>

<header>
	<jsp:include page="/main/header2.jsp" />
</header>


<section>
	<jsp:include page="/main/main.jsp" />
</section>



<footer>
	<jsp:include page="/main/footer.jsp" />
</footer>



</body>
</html>