<%@ Page Language="C#" ValidateRequest = "false"  AutoEventWireup="true" CodeBehind="editTinTuc.aspx.cs" Inherits="WebsiteDayNauAn.Pages.editTinTuc" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
		<link href ="../lib/css/all.css" rel="stylesheet" type="text/css">
		<link href="../lib/css/login.css" rel="stylesheet" type="text/css" />
		<link href="../lib/css/bootstrap.css" rel="stylesheet" type="text/css" />
		<link href="../lib/css/bootstrap-grid.css" rel="stylesheet" type="text/css" />
		
		<script src="../lib/ckeditor/ckeditor.js"></script>
		

</head>
<body>
		<div class="container-md mybg "><!-- định nghĩa trình chứa-->
			
			<form runat="server" id="frm">
						<div class="row">
							<div class="col-md-12 mytitle text-center">Tin Tức</div>
						</div>
						
						<div class="form-group row">
							<label for="txtTitle" class="col-md-2 col-form-label text-right">Tiêu đề</label>
							<!--"for" dùng kết hợp vs input,nếu click chuột vào nhãn, sẽ đưa con trỏ chuột vào vùng <input />-->
							<div class="col-md-4">
                                <asp:TextBox ID="txtTitle" runat="server" OnTextChanged="txtTitle_TextChanged"></asp:TextBox>
								    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" 
									runat="server" 
									ControlToValidate="txtTitle"
									ErrorMessage="Không được bỏ trống">

                                </asp:RequiredFieldValidator>
							</div>
						</div>
						
						<div class="form-group row">
							<label for="inputPassword3" class="col-md-2 col-form-label text-right">Hình ảnh</label>
							<div class="col-md-4">
                                <asp:FileUpload ID="FileUpload1" runat="server" />
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" 
									runat="server" 
									ControlToValidate="FileUpload1"
									ErrorMessage="Không được bỏ trống">

                                </asp:RequiredFieldValidator>
								
							</div>
						</div>
			  
			  			<div class="form-group row align-items-center">
							<label for="inputPassword3" class="col-md-2 col-form-label text-right">Chi tiết</label>
							<div class="col-md-10">		
                                <asp:TextBox ID="txtDetail" runat="server" TextMode="MultiLine" cols="60" rows="10"> </asp:TextBox>	
							</div>
						</div>
				

						<script type ="text/javascript">
							var editor = CKEDITOR.replace("txtDetail");<!-- lấy dữ liệu từ id(name và id dùng để lấy dữ liệu,nhưng name có thể lặp,id là duy nhất-->
                        </script>
						
			  
                
				
						<div class="form-group row">
							<div class="col-md-12 text-center">
                                <asp:Button ID="btnThem" runat="server" Text="Thêm Món" OnClick="btnThem_Click" />&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
                                <asp:Button ID="btnSua" runat="server" Text="Lưu" OnClick="btnSua_Click"  />&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
								<asp:Button ID="btnThoat" runat="server" Text="Thoát" />
							</div>
						</div> 
			</form>

		</div>
			
		
	</body>
</html>
