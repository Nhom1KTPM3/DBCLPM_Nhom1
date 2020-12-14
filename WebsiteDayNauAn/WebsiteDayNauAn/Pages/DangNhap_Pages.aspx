<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="DangNhap_Pages.aspx.cs" Inherits="WebsiteDayNauAn.Pages.DangNhap_Pages" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:TextBox ID="txt_Password" runat="server"></asp:TextBox>
            <asp:Button ID="Btn_DangNhap" runat="server" Text="Đăng Nhập" OnClick="Btn_DangNhap_Click" />
        </div>
    </form>
</body>
</html>
