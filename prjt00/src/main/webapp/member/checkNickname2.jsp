<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>  
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>닉네임 중복검사</title>
    <script>
        function okId(nicknm){
        opener.document.update_p.conf_nickname.value=nicknm;
        self.close();
    }
    </script>

    <style>
	#container-checkNm2{
                width: 430px;
                height: 160px;
                position:absolute;
                left:50%;
                top:50%;
                margin-left:-180px;
                margin-top: -80px;
                text-align: center;
            }
        




    </style>

</head>
<body>

    <div id="container-checkNm2">
        <h3>닉네임 중복검사</h3>
        <form action="checkNm_process2.jsp" name="checkNickname2_p" method="post">
            닉네임<input type="text" name="nickname" value="${param.nickname}">
            <input type="submit" value="중복검사"><br>
            <label>
                <c:choose>
                    <c:when test="${param.result == 1}">
                        <script>
                            opener.document.update_p.nickname.value="";
                        </script>
                        ${nickname}는 이미 사용중인 닉네임입니다.
                    </c:when>

                    <c:when test="${param.result == 0}">
                        <script>
                            opener.document.update_p.nickname.value="${nickname}";
                        </script>
                        ${nickname}는 사용 가능한 닉네임입니다.
                        <input type="button" id="ok_btn" value="사용하기" onclick="okId('${nickname}')">
                    </c:when>
                </c:choose>
            </label>
        </form>
    </div>
    
    
</body>
</html>