window.onload = function(){

	let checkNn_btn2 = document.getElementById("checkNn_btn2");
	checkNn_btn2.addEventListener("click", checkNickname2);
	
	let bt_pw = document.getElementById("bt_pw");
	bt_pw.addEventListener("click", pwUpdate);
}	




function checkNickname2(){
	if(update_p.nickname.value.length ==0){
		alert("닉네임을 입력해주세요.");
		update_p.nickname.focus();
		return false;
	}else{
		let url3 = "checkNickname2.jsp?nickname="+update_p.nickname.value;
		window.open(url3, "_blank","toolbar=no,menubar=no,scrollbar=yes,resizable=no,width=500,height=200");
	}
}

function pwUpdate(){
	if(update_p.member_pw.value.length ==0){
		alert("변경할 비밀번호를 입력해주세요.");
		update_p.member_pw.focus();
		return false;
	}else{
		let url4 = "updatePassword.jsp?member_pw="+update_p.member_pw.value;
		window.open(url4, "_blank","toolbar=no,menubar=no,scrollbar=yes,resizable=no,width=500,height=200");
	}
	
	
	
	
}

