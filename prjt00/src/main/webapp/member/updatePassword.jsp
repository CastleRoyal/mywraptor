<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>  
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>닉네임 중복검사</title>
    <script>
        function okId(upw){
        opener.document.update_p.member_pw.value=upw;
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
        <h3>비밀번호 변경</h3>
        <form action="updatePassword_process.jsp" name="pw_update_p" method="post" value="${member.member_pw}">
            비밀번호 입력 : &nbsp;<input type="text" name="member_pw">
            <label>
     
           <input type="button" id="ok_btn" value="사용하기" onclick="okId('${member.member_pw}')">
                    
                
            </label>
        </form>
    </div>
    
    
</body>
</html>