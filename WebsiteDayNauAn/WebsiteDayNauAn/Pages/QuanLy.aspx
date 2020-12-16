<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="QuanLy.aspx.cs" Inherits="WebsiteDayNauAn.Pages.QuanLy" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>

    </style>
</head>
<body>
    <form id="form1" runat="server">

        <div>
            <div style="width:100%"><asp:Button ID="btnExit" runat="server" Text="Đăng Xuất" style="float:right" OnClick="btnExit_Click"/></div>
            <div style="margin-top:50px;width:100%">
                <h1 style="text-align:center">Quản lý trang web</h1>
                <br />
                <br />
                <h2 style="text-align:center">Món ăn</h2>
                <asp:Button ID="btnThem" runat="server" Text="Thêm món ăn" OnClick="btnThem_Click" />

            </div>
            

            <asp:GridView  ID="gvData" runat="server" CellPadding="4" DataSourceID="ObjectDataSource1" ForeColor="#333333" GridLines="None" Width="100%" OnRowDeleting="gvData_RowDeleting" OnSelectedIndexChanging="gvData_SelectedIndexChanging">
                <AlternatingRowStyle BackColor="White" />
                <Columns>
                    <asp:CommandField SelectText="Edit" ShowSelectButton="True" />
                    <asp:CommandField ShowDeleteButton="True" />
                </Columns>
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

            <asp:ObjectDataSource ID="ObjectDataSource1" runat="server" SelectMethod="getAllFood" TypeName="WebsiteDayNauAn.Controller.AdminControl"></asp:ObjectDataSource>

        </div>
         <h2 style="text-align:center">Tin tức</h2>
         <asp:Button ID="btnThemtt" runat="server" Text="Thêm tin tức" OnClick="btnThemtt_Click" />
            <asp:GridView Width="100%" ID="gvTinTuc" runat="server" CellPadding="4" DataSourceID="ObjectDataSource2" ForeColor="#333333" GridLines="None" OnRowDeleting="gvTinTuc_RowDeleting1" OnSelectedIndexChanging="gvTinTuc_SelectedIndexChanging">
                <AlternatingRowStyle BackColor="White" />
                <Columns>
                    <asp:CommandField ShowDeleteButton="True" />
                    <asp:CommandField SelectText="edit" ShowHeader="True" ShowSelectButton="True" />
                </Columns>
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
        <asp:ObjectDataSource ID="ObjectDataSource2" runat="server" DeleteMethod="delTinTuc" SelectMethod="getAllTinTuc" TypeName="WebsiteDayNauAn.Controller.AdminControl">
            <DeleteParameters>
                <asp:Parameter Name="IDTT" Type="Int32" />
            </DeleteParameters>
        </asp:ObjectDataSource>
        <div>

        </div>
        
    </form>
</body>
</html>
