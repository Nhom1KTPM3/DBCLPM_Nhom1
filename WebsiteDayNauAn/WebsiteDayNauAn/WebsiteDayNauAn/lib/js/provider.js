/* các kịch bản sử lý cho provider.html*/

function chkValidProvaider(fn){
	//tên nhà cung cấp
	var name=fn.txtNameProvider.value;
	//sự kiện đồng ý
	var isCheck=fn.chkAgree.checked;
//	var message="";
	/*var validUserName=true;
	
	if(name==""){
		validUserName=false;
		message+="\n Hãy nhập tên nhà cung cấp";
	}else if(name.length<6){
		validUserName=false;
		message="\n Tên nhà cung cấp phải tối thiểu gồm 6 ký tự";
	}else{
		if(isCheck==false){
			message="\n Bạn phải đồng ý với các điều kiện của nhà cung cấp";
		}
	}

	if(message!=""){
		window.alert(message);
		if(!validUserName){
			fn.inputName.focus();
			fn.inputName.select();
		}
	}*/
	
	if(name.trim()!="" && isCheck){
		fn.btnRegister.disabled = false;
	}else{
		fn.btnRegister.disabled = true;
	}
	//return validUserName&&validCheck;
}