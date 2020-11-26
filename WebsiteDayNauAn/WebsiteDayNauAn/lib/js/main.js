/* các xử lý kịch bản cho index.html*/

//khai báo biến
var def="--từ khóa--";
var emp="";

function setFirsTime(){
	window.document.frmSearch.txtKeyWord.value=def;
	//document.frmSearch.txtKeyWord.value=def;
	//document.forms[0].txtKeyWord.value=def;
}

function setFirsTime(fn){
	fn.txtKeyWord.value=def;
}

function setKeyWord(fn, isClick){
	//lấy giá trị trong ô tìm kiếm
	var val=fn.txtKeyWord.value;
	//Nếu bấm chuột vào ô
	if(isClick){	
		if(val.trim()==def){
			fn.txtKeyWord.value=emp;
		}
	}else{
		if(val.trim()==emp)
		{
			fn.txtKeyWord.value=def;
		}
	}		
}

function checkValidKeyWord(fn){
	var val=fn.txtKeyWord.value;
	
	//Biến thông báo kiểm tra
	var message="Hãy nhập vao từ khóa tìm kieesmm";
	if(val.trim()==def||val.trim()==emp){
		window.alert(message);
		fn.txtKeyWord.focus();
		fn.txtKeyWord.select();
	}else{
		return true;
	}		
}