window.onload = function(){
	
	let s_btn = login_p.log_btn;//로그인 버튼
	s_btn.addEventListener("click", checkInput);
	
}

function checkInput(){
    if(login_p.member_id.value.length==0){
        alert("아이디가 입력되지 않았습니다.");
        login_p.member_id.focus();
        return false;

    }else if(login_p.member_pw.value.length==0){
        alert("비밀번호가 입력되지 않았습니다.");
        login_p.member_pw.focus();
        return false;

    }else{
       document.login_p.submit();
    }
    
    return true;
}