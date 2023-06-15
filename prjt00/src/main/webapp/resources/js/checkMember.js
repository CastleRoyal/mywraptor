window.onload = function(){
	let join_btn = document.getElementById("join_btn");
	join_btn.addEventListener("click", checkInput);
	
	let checkId_btn = document.getElementById("checkId_btn");
	checkId_btn.addEventListener("click", checkId);
	
	let checkNn_btn = document.getElementById("checkNn_btn");
	checkNn_btn.addEventListener("click", checkNickname);
	

}	


function checkId(){
	if(join_p.member_id.value.length == 0){
		alert("아이디를 입력해 주세요.");
		join_p.member_id.focus();
		return false;
	}else{
		let url = "checkId.jsp?member_id="+join_p.member_id.value;
		window.open(url, "_blank","toolbar=no,menubar=no,scrollbar=yes,resizable=no,width=500,height=200");
	}
}

function checkNickname(){
	if(join_p.nickname.value.length ==0){
		alert("닉네임을 입력해주세요.");
		join_p.nickname.focus();
		return false;
	}else{
		let url2 = "checkNickname.jsp?nickname="+join_p.nickname.value;
		window.open(url2, "_blank","toolbar=no,menubar=no,scrollbar=yes,resizable=no,width=500,height=200");
	}
}


function checkInput(){
   
    if(join_p.member_id.value.length==0){
        alert("아이디가 입력되지 않았습니다.");
        join_p.member_id.focus();
        return false;

    }else if(join_p.member_pw.value.length==0){
        alert("비밀번호가 입력되지 않았습니다.");
        join_p.member_pw.focus();
        return false;

    }else if(join_p.nickname.value.length==0){
        alert("닉네임이 입력되지 않았습니다.");
        join_p.nickname.focus();
        return false;

    }else if(join_p.member_name.value.length==0){
        alert("이름이 입력되지 않았습니다.");
        join_p.member_name.focus();
        return false;

    }else if(join_p.gender.value==0){
        alert("성별을 선택해주세요.");
        join_p.gender.focus();
        return false;
        
    }else if(join_p.phone.value.length==0){
        alert("전화번호가 입력되지 않았습니다.");
        join_p.phone.focus();
        return false;
        
    }else if(join_p.email.value.length==0){
        alert("이메일이 입력되지 않았습니다.");
        join_p.email.focus();
        return false;
        
    }else{
        document.join_p.submit();
    }
    
    return true;
}