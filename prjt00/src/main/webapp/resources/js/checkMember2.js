window.onload = function(){

	let checkNn_btn2 = document.getElementById("checkNn_btn2");
	checkNn_btn2.addEventListener("click", checkNickname2);
	
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

