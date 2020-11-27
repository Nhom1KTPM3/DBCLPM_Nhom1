<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="QuanTri.aspx.cs" Inherits="WebsiteDayNauAn.Pages.QuanTri" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Quản trị</title>
     <link href="../lib/css/all.css" rel="stylesheet" />
    <link href="../lib/css/bootstrap-grid.css" rel="stylesheet" />
    <link href="../lib/css/bootstrap.css" rel="stylesheet" />
    <link href="../lib/css/style.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
         <div class="w-100">
        <div class="menu">
            <div class="container-fluid">
                <div class="row">
                    <div class="col-lg-5">
                       <h3>Hân hạnh chào đón bạn!</h3> 
                    </div>
                    <div class="col-lg-7 " style="text-align:left;margin-top:6px">
                        <a href="#">Trang chủ</a> &nbsp &nbsp &nbsp 
                        <asp:TextBox ID="txtSreach" runat="server" Width="450px"></asp:TextBox><asp:Button ID="btnSreach" runat="server"  Text="Tìm kiếm"/>&nbsp &nbsp &nbsp 
                        <a href="DangNhap.aspx">Đăng xuất</a>

                    </div>
                </div>
            </div>
        </div>
        <div>
           
                <h3>Tài khoản người dùng</h3>
            <asp:Table runat="server" HorizontalAlign="Center" Width="518px">
                <asp:TableRow>
                    <asp:TableCell HorizontalAlign="Left">
                        <asp:Label ID="Label6" runat="server" Text="Tài Khoản" Font-Size="Medium"></asp:Label>     
                    </asp:TableCell>
                    <asp:TableCell>
      <asp:TextBox runat="server" ID="txtTaiKhoan" Width="300px" />
                    </asp:TableCell></asp:TableRow><asp:TableRow>
                    <asp:TableCell HorizontalAlign="Left">
                        <asp:Label ID="Label7" runat="server" Text="Mật Khẩu" Font-Size="Medium"></asp:Label>     
                    </asp:TableCell><asp:TableCell>
      <asp:TextBox runat="server" ID="txtMatKhau"  Width="300px" />
                    </asp:TableCell></asp:TableRow><asp:TableRow>
                    <asp:TableCell HorizontalAlign="Left">
                        <asp:Label ID="Label8" runat="server" Text="Ngày Sinh" Font-Size="Medium"></asp:Label>     
                    </asp:TableCell><asp:TableCell>
      <asp:Calendar ID="cldNgaySinh" runat="server" BackColor="White" BorderColor="White" BorderWidth="1px" Font-Names="Verdana" Font-Size="9pt" ForeColor="Black" Height="190px" NextPrevFormat="FullMonth" Width="350px"  ><DayHeaderStyle Font-Bold="True" Font-Size="8pt" /><NextPrevStyle Font-Bold="True" Font-Size="8pt" ForeColor="#333333" VerticalAlign="Bottom" /><OtherMonthDayStyle ForeColor="#999999" /><SelectedDayStyle BackColor="#333399" ForeColor="White" /><TitleStyle BackColor="White" BorderColor="Black" BorderWidth="4px" Font-Bold="True" Font-Size="12pt" ForeColor="#333399" /><TodayDayStyle BackColor="#CCCCCC" /></asp:Calendar>
                    </asp:TableCell></asp:TableRow><asp:TableRow>
                    <asp:TableCell HorizontalAlign="Left">
                        <asp:Label ID="Label9" runat="server" Text="Giới Tính" Font-Size="Medium"></asp:Label>     
                    </asp:TableCell><asp:TableCell>
        <asp:DropDownList ID="drlGioiTinh" runat="server" Height="30px" Width="100px"><asp:ListItem>Nam</asp:ListItem><asp:ListItem>Nữ</asp:ListItem></asp:DropDownList>

                    </asp:TableCell></asp:TableRow></asp:Table><asp:Label ID="Label5" runat="server" Text="Label"></asp:Label><asp:GridView ID="gvDataND" runat="server" AutoGenerateColumns="False" HorizontalAlign="Center" CellPadding="4" ForeColor="#333333" GridLines="None" OnRowEditing="gvDataND_RowEditing" Width="617px" OnRowDeleting="gvDataND_RowDeleting" OnRowUpdating="gvDataND_RowUpdating" OnSelectedIndexChanged="gvDataND_SelectedIndexChanged" OnRowCancelingEdit="gvDataND_RowCancelingEdit"><AlternatingRowStyle BackColor="White" />
                <Columns>
                    <asp:TemplateField HeaderText="Tài Khoản">
                        <EditItemTemplate>
                            <asp:TextBox ID="TextBox1" runat="server" Text='<%# Eval("TaiKhoan") %>'></asp:TextBox></EditItemTemplate><ItemTemplate>
                            <asp:Label ID="Label1" runat="server" Text='<%# Eval("TaiKhoan") %>'></asp:Label></ItemTemplate></asp:TemplateField><asp:TemplateField HeaderText="Mật Khẩu">
                        <EditItemTemplate>
                            <asp:TextBox ID="TextBox2" runat="server" Text='<%# Eval("MatKhau") %>'></asp:TextBox></EditItemTemplate><ItemTemplate>
                            <asp:Label ID="Label2" runat="server" Text='<%# Eval("MatKhau") %>'></asp:Label></ItemTemplate></asp:TemplateField><asp:TemplateField HeaderText="Ngày Sinh">
                        <EditItemTemplate>
                            <asp:TextBox ID="TextBox3" runat="server" Text='<%# Eval("NgaySinh") %>'></asp:TextBox></EditItemTemplate><ItemTemplate>
                            <asp:Label ID="Label3" runat="server" Text='<%# Eval("NgaySinh") %>'></asp:Label></ItemTemplate></asp:TemplateField><asp:TemplateField HeaderText="Giới Tính">
                        <EditItemTemplate>
                            <asp:DropDownList ID="DropDownList1" runat="server" Height="35px" SelectedValue='<%# Eval("GioiTinh") %>' Width="99px">
                                <asp:ListItem>Nam</asp:ListItem><asp:ListItem>Nữ</asp:ListItem></asp:DropDownList></EditItemTemplate><ItemTemplate>
                            <asp:Label ID="Label4" runat="server" Text='<%# Eval("GioiTinh") %>'></asp:Label></ItemTemplate></asp:TemplateField><asp:CommandField HeaderText="Xóa" ShowDeleteButton="True"  />
                    <asp:CommandField HeaderText="Chọn" SelectText="Chọn" ShowSelectButton="True" />
                <asp:CommandField ShowEditButton="True" /></Columns>
                <EditRowStyle BackColor="#2461BF" />
                <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                <RowStyle BackColor="#EFF3FB" />
                <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
                <SortedAscendingCellStyle BackColor="#F5F7FB" /> 
                <SortedAscendingHeaderStyle BackColor="#6D95E1" />
                <SortedDescendingCellStyle BackColor="#E9EBEF" />
                <SortedDescendingHeaderStyle BackColor="#4870BE" />
                </asp:GridView>
        </div>
             </form>
          </body>
</html>
