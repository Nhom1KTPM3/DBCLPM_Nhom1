<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="DangKy.aspx.cs" Inherits="WebsiteDayNauAn.Pages.DangKy" %>

<!DOCTYPE html>
<html>
    <head>
        <title>Đăng ký tài khoản mới</title>
       <link href="../lib/css/register.css" rel="stylesheet" />
    </head>
    <body>
        <header>
           
        </header>
        <main>
            <div class="container">
                <div class="register-form">
                    <form action="" method="post" runat="server">
                        <h1>Đăng ký tài khoản mới</h1>
                        <div class="input-box">

                            <input id="txtTenDangNhap" type="text" placeholder="Nhập username">
                        </div>
                        <div class="input-box">

                            <input id="txtMatKhau" type="password" placeholder="Nhập mật khẩu">
                        </div>
                        <div class="input-box">
                            <div class="col-6">
                                <label for="ngaysinh">Ngày sinh</label>
                                <br>
                               <input type="date" id="ngaysinh" />
                            </div>
                           
                            <div class="col-6">
                                <label for="gioitinh">Giới tính</label>
                                <br>
                                <select runat="server" id="gioitinh">
                                    <option value="nam">Nam</option>
                                    <option value="nu">Nữ</option>
                                </select>
                            </div>
                            <div class="clear"></div>
                        </div>
                        
                        
                        <div >
                            <asp:Table HorizontalAlign="Center" runat="server" Width="370px" Height="50px">
                                <asp:TableRow>
                                    <asp:TableCell HorizontalAlign="Left"><asp:Button BorderColor="#00cc99" BackColor="#00cc99"
                                        Font-Bold="true" Width="110px" OnClick="btnQuaylai_Click" Height="36px" ForeColor="White" Font-Size="Medium" ID="btnQuaylai" runat="server" Text="Quay Lại"/>
                         </asp:TableCell>
                                    <asp:TableCell HorizontalAlign="Right"> 
                               <asp:Button Height="36px" OnClick="btnDngKy_Click" Width="110px" Font-Bold="true" ForeColor="White" Font-Size="Medium" BorderColor="#00cc99"  BackColor="#00cc99"  ID="btnDngKy" runat="server" Text="Đăng ký"/></asp:TableCell>
                                </asp:TableRow>

                            </asp:Table>
                            
                                  
                        </div>
                    </form>
                </div>
            </div>
        </main>
      
    </body>
</html>
