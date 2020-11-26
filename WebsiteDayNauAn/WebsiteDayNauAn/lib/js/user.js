/*Các xử lý kịch bản cho user.html*/
//Kiểm tra tên tài khoản
function checkName(fn){
	var name = fn.txtUserName.value;
	var message= "";
	var view= document.getElementById("viewValidName");
	if(name == ""){
		message = "Cần có tên đăng nhập hệ thống cho tài khoản";
	}else{
		if(name.length<6||name.length>50){
			message="Tên đăng nhập nên dài hơn 5 ký tự và nhỏ hơn 50 ký tự!";
		}else if(name.indexOf(" ")!=-1){
			message= "Tên không được có đấu cách!";
		}else if(name.indexOf("@")!=-1){
			var parttern=/\w+@+\w+[.]\w/;
			if(!name.match(parttern)){
				validUserName=false;
				message="Không đúng cấu trúc hộp thư!";
			}else{
				document.getElementById("inputEmail").disabled=true;
			}
		}
	}
	if(message!=""){

		view.style.color="red";
		view.innerHTML= message;
		return false;
	}else{
		view.innerHTML= "";
		return true;
	}
}

//Kiểm tra sự tương khớp của mật khẩu
function checkPass(fn){
	var pass1=fn.txtUserPass.value;
	var pass2=fn.txtUserPass2.value;
	var view=document.getElementById("viewValidPass");
	var isOK=false;
	//Tham chiếu đối tượng báo lỗi
	if(pass1==""){
		view.innerHTML="Hãy nhập mật khẩu cho tài khoản";
	}else{
	
		if(pass1.length<6){
			view.innerHTML="Độ dài mật khẩu cần lớn hơn 5 ký tự!";
		}else{
			if(pass1.trim()!=pass2.trim()){
				var message="Mật khẩu không khớp nhau xin kiểm tra lại";
				view.innerHTML=message;
			}else{
				view.innerHTML="<i class=\"fas fa-check\"></i>";
				//view.style.color= document.getElementByTagName("body").style.color;

				isOK=true;
			}
		}
	}
	
	if(isOK){
		view.style.color="green";
	}else{
		view.style.color="red";
	}
	return isOK;
	
}
//taoj permision
function generatePermis(){
	// khai baso mangr permis
	var permis= new Array();
	permis[0]= "---";
	permis[1]= "Thành viên (members)";
	permis[2]= "Tác giả (authors)";
	permis[3]= "Quản lý (managers)";
	permis[4]= "Quản trị(Administrator)";
	permis[5]= "Quản trị cấp cao( super admin)";
	var opt="";
	opt += "<select class=\"form-control\" id=\"inputPermis\" onChange=\"refreshPermis(this.form)\">";
		for(var i=0;i<permis.length;i++){
		opt += "<option value=\""+i+"\">"+permis[i]+"</option>";
	}
	opt += "</select>";
	document.write(opt);

}
function generateRoles(){
	var roles= new Array();
	roles[0] = "<i class=\"fas fa-user\"></i> Người sử dụng";
	roles[1] = "<i class=\"fas fa-user\"></i> Chuyên mục";
	roles[2] = "<i class=\"fas fa-user\"></i> Thể loại";
	roles[3] = "<i class=\"fas fa-user\"></i> Bài viết & tin tức";
	roles[4] = "<i class=\"fas fa-user\"></i> Hệ sản phẩm ";
	roles[5] = "<i class=\"fas fa-user\"></i> Nhóm sản phẩm";
	roles[6] = "<i class=\"fas fa-user\"></i> Loại sản phẩm";
	roles[7] = "<i class=\"fas fa-user\"></i> Sản phẩm";
	roles[8] = "<i class=\"fas fa-user\"></i> Hóa đơn";
	roles[9] = "<i class=\"fas fa-user\"></i>Khách hàng";
	var role="";
	for(var i=0;i<roles.length;i++){
		if(i%3==0){
		role+= "<div class=\"row ml5\">";
		}
		
		role+= "<div class=\"col-md-4\">";
		role+= "<input class=\"form-check-input\" type =\"checkbox\" id=\"chk"+i+"\" name=\"chks\" disabled onclick=\"checkPermis(this.form)\">";
		role+= "<label class=\"form-check-label\" for =\"chk"+i+"\">";
		role+= roles[i];
		role+= "</label>";
		role+= "</div>";
		if(i%3==2|| i==roles.length-1){
			role+= "</div>	";
		}
		
		
	}
	document.write(role);
	
}
function setCheckBox(fn, dis, check){
	//Duyệt các phân tử của form
	for(var i =0 ;i<fn.elements.length;i++){
		if(fn.elements[i].type=="checkbox"&& fn.elements[i].name=="chks"){
			fn.elements[i].disabled=dis;
			fn.elements[i].checked=check;
		}
	}
}
//thay đổi quyền thwucj thi
function refreshPermis(fn){
	//Lấy quyền thực thi
	var permis = parseInt(document.getElementById("inputPermis").value);
	if(permis==4||permis==5){
		this.setCheckBox(fn,true, true);
	}else if(permis==3){
		this.setCheckBox(fn, false, true);
	}else if(permis==2){
		this.setCheckBox(fn, false, false);
		
	}else {
		this.setCheckBox(fn, true, false);
	}
	
	this.checkPermis(fn);
}

//kiểm tra quyền thực thi tác giả và quản lý
function checkPermis(fn){
	//Lấy quyền thực thi
	var permis = parseInt(document.getElementById("inputPermis").value);
	
	var validPermis=true;
	if(permis==2||permis==3){
		for(var i=0;i<fn.elements.length;i++){
			if(fn.elements[i].type=="checkbox" && fn.elements[i].name=="chks"){
				if(fn.elements[i].checked){
					validPermis=true;
					break;
				}else{
					validPermis=false;
				}
			}
		}
	}

//Tham chiếu đối tượng báo lỗi
	var view=document.getElementById("viewValidPermis");
	if(!validPermis){
		view.innerHTML="Cần phải có ít nhất một vai trò cho quyền này";
		view.style.color="red";
	
	}else{
		view.innerHTML="";
	}
	return validPermis;
}

function checkValidUser(fn){
	
	var validName=checkName(fn);
	var validPass=checkPass(fn);
	var validPermis=checkPermis(fn);
	
	
	//di chuyển con trỏ đến các vị trí thiếu
	if(!validName){
		document.getElementById("inputName").focus();
		document.getElementById("inputName").select();
			
	}else if(!validPass){
		document.getElementById("inputPass").focus();
		document.getElementById("inputPass").select();
	}else if(!validPermis){
		document.getElementById("inputPermis").focus();
	}
	
	return validName && validPass && validPermis;
}