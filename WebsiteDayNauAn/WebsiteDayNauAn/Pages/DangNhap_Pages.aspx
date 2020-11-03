<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="DangNhap_Pages.aspx.cs" Inherits="WebsiteDayNauAn.Pages.DangNhap_Pages" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Login</title>
    <link href="../lib/css/StyleDN.css" rel="stylesheet" />
</head>
<body>
    <form id="frm" runat="server">
    <div class="login-box">
  <h1>Login</h1>
  <div class="textbox">
     <asp:Image ID="Image2" CssClass="fas fa-user" runat="server" />
    <asp:TextBox ID="txt_UserName" placeholder="Username" runat="server"></asp:TextBox>
  </div>

  <div class="textbox">
    
      <asp:Image ID="Image1" CssClass="fas fa-lock" runat="server" />
      <asp:TextBox ID="txt_Password"  placeholder="Password" runat="server" TextMode="Password"></asp:TextBox>
  </div>
  <asp:Button ID="Btn_DangNhap" runat="server" Text="Sign in" CssClass="btn" OnClick="Btn_DangNhap_Click"  />
</div>
        </form>
</body>
</html>
