<%@ Page Language="C#" ValidateRequest = "false"  AutoEventWireup="true" CodeBehind="editMonAn.aspx.cs" Inherits="WebsiteDayNauAn.Pages.editMonAn" %>

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
							<div class="col-md-12 mytitle text-center">Món Ăn</div>
						</div>
						
						<div class="form-group row">
							<label for="txtTitle" class="col-md-2 col-form-label text-right">Tên món ăn</label>
							<!--"for" dùng kết hợp vs input,nếu click chuột vào nhãn, sẽ đưa con trỏ chuột vào vùng <input />-->
							<div class="col-md-4">
                                <asp:TextBox ID="txtTenMon" runat="server"></asp:TextBox>
								    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" 
									runat="server" 
									ControlToValidate="txtTenMon"
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
							var editor = CKEDITOR.replace("txtDetail");
                        </script>
						
			  
  						<div class="form-group row">
							
							<!--"for" dùng kết hợp vs input,nếu click chuột vào nhãn, sẽ đưa con trỏ chuột vào vùng <input />-->
							<div class="col-md-4">
								<label for="txtChuanBi">Thời gian chuẩn bị</label><br />
                                <asp:TextBox ID="txtChuanBi" runat="server"></asp:TextBox>
								    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" 
									runat="server" 
									ControlToValidate="txtChuanBi"
									ErrorMessage="Không được bỏ trống">

                                </asp:RequiredFieldValidator>
							</div>

							
							<!--"for" dùng kết hợp vs input,nếu click chuột vào nhãn, sẽ đưa con trỏ chuột vào vùng <input />-->
							<div class="col-md-4">
								 <label for="txtNauAn" >Thời gian nấu ăn</label><br />
                                <asp:TextBox ID="txtNauAn" runat="server"></asp:TextBox>
								    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" 
									runat="server" 
									ControlToValidate="txtNauAn"
									ErrorMessage="Không được bỏ trống">

                                </asp:RequiredFieldValidator>
							</div>
							 
							<!--"for" dùng kết hợp vs input,nếu click chuột vào nhãn, sẽ đưa con trỏ chuột vào vùng <input />-->
							<div class="col-md-4">
								<label for="txtBoSung" >Thời gian bổ sung</label><br />
                                <asp:TextBox ID="txtBoSung" runat="server"></asp:TextBox>
								    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" 
									runat="server" 
									ControlToValidate="txtBoSung"
									ErrorMessage="Không được bỏ trống">

                                </asp:RequiredFieldValidator>
							</div>
						</div>


						<div class="form-group row align-items-center">
							<label for="inputPassword3" class="col-md-2 col-form-label text-right">Thành phần</label>
							<div class="col-md-10">		
                                <asp:TextBox ID="txtThanhPhan" runat="server" TextMode="MultiLine" cols="60" rows="10"> </asp:TextBox>	
							</div>
						</div>
				

						<script type ="text/javascript">
                               var editor1 = CKEDITOR.replace("txtThanhPhan");
                        </script>

						<div class="form-group row align-items-center">
							<label for="inputPassword3" class="col-md-2 col-form-label text-right">Công thức</label>
							<div class="col-md-10">		
                                <asp:TextBox ID="txtCongThuc" runat="server" TextMode="MultiLine" cols="60" rows="10"> </asp:TextBox>	
							</div>
						</div>
				

						<script type ="text/javascript">
                               var  editor2 =  CKEDITOR.replace("txtCongThuc");
                        </script>


							<div class="col-md-4">
								 <label for="drlDanhMuc" >Loại món ăn</label><br />
                                <asp:DropDownList ID="drlDanhMuc" runat="server">
                                    <asp:ListItem Value="1">Bữa Sáng</asp:ListItem>
                                    <asp:ListItem Value="2">Bữa Trưa</asp:ListItem>
                                    <asp:ListItem Value="3">Bữa Tối</asp:ListItem>
                                    <asp:ListItem Value="4">Đồ ăn nhẹ</asp:ListItem>
                                 </asp:DropDownList>
							</div>

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