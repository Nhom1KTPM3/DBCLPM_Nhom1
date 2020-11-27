<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="DoAnNhe.aspx.cs" Inherits="WebsiteDayNauAn.Pages.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    
    <title>Đồ Ăn Nhẹ!</title>
     <link href="../lib/css/all.css" rel="stylesheet" />
    <link href="../lib/css/bootstrap-grid.css" rel="stylesheet" />
    <link href="../lib/css/bootstrap.css" rel="stylesheet" />
    <link href="../lib/css/style.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
		<div class="menu">
            <div class="container">
                <div class="row">
                    <div class="col-lg-5">
                        Hân hạnh chào đón bạn!
                    </div>
                    <div class="col-lg-7 " style="text-align:right">
                        <a href="TrangChu.aspx">Trang chủ</a> &nbsp &nbsp &nbsp 
                        <asp:TextBox ID="txtSreach" runat="server"></asp:TextBox><asp:Button ID="btnSreach" runat="server"  Text="Tìm kiếm"/>&nbsp &nbsp &nbsp 
                        <a href="#">Đăng nhập</a>

                    </div>
                </div>
            </div>
        </div>
        <div class="slider">
            <div class="container-fluid">
				<div id="carouselExampleCaptions" class="carousel slide" data-ride="carousel">
				  <ol class="carousel-indicators">
					<li data-target="#carouselExampleCaptions" data-slide-to="0" class="active"></li>
					<li data-target="#carouselExampleCaptions" data-slide-to="1"></li>
					<li data-target="#carouselExampleCaptions" data-slide-to="2"></li>
				  </ol>
				  
				  <div class="carousel-inner">
					<div class="carousel-item ">
                        <asp:Image ID="Image1" runat="server" ImageUrl="~/lib/images/ẩm thực/banh_mi_ruoc.jpg" class="d-block w-100" alt="..." style="height:400px ;width:100%" />
					  <div class="carousel-caption d-none d-md-block">
						<h5>Bánh mì ruốc</h5>
						<p>Món bánh mì này là “bạn thân” của mình thời cuối cấp 3. Nhớ hồi đó đi học thêm khá nhiều, phần lớn là tầm chiều tối, ngay sau giờ học chính. Hôm nào được bố đưa đi học thì sẽ rẽ qua mấy quán sữa dê ở phố Giảng Võ, ăn sữa chua với bánh gateau cuộn. Còn nếu bố bận phải tự đi, hoặc không có nhiều thời gian rẽ vào quán thì trước khi đi học mẹ sẽ dúi cho một vài cái bánh mì ngọt kẹp pa-tê hay ruốc, với hộp sữa để có sức “chiến đấu” ca 3.</p>
					  </div>
					</div>
					
					<div class="carousel-item">
                        <asp:Image ID="Image9" runat="server" ImageUrl="~/lib/images/ẩm thực/trung_op_la.jpg" class="d-block w-100" alt="..." style="height:400px ;width:100%"  />
					  <div class="carousel-caption d-none d-md-block ">
						<h5>Trứng opla</h5>
						<p>Trứng ốp la, tức là trứng rán/chiên để nguyên lòng đỏ (phiên âm tiếng Pháp "Oeufs au plat") là một món thức ăn làm từ trứng gà bằng phương pháp chiên nhanh qua chảo dầu, trứng chiên có tròng đỏ còn trong thể lỏng nằm giữa tròng trắng (lòng đào), khác với trứng ốp lết là trứng đánh lên cho tròng đỏ và tròng trắng lẫn vào với nhau rồi đổ vào chảo chiên.</p>
					  </div>
					</div>
					
					<div class="carousel-item active">
                        <asp:Image ID="Image10" runat="server" ImageUrl="~/lib/images/ẩm thực/banhmikep.jpg" class="d-block w-100" alt="..." style="height:400px ;width:100%"   />
					  <div class="carousel-caption d-none d-md-block">
						<h5>Bánh mì kẹp</h5>
						<p>Bánh mì kẹp hoặc bánh mì lát (còn gọi là bánh xăng-đuých hay xăng-uých vì phiên âm từ tiếng Anh: sandwich) là loại thức ăn thường có ít nhất là hai lát bánh mì mềm kẹp bên ngoài lớp nhân thường là từ nguyên liệu thịt, hải sản, trứng... kèm với pho mát cùng với các loại rau, và có thể có thêm nước sốt. Định nghĩa rộng hơn, bánh mì kẹp là tất cả những loại thức ăn có bánh mì đóng vai trò là lớp vỏ bao bọc cho lớp nhân</p>
					  </div>
					</div>
				  </div>
				  
				  <a class="carousel-control-prev" href="#carouselExampleCaptions" role="button" data-slide="prev">
					<span class="carousel-control-prev-icon" aria-hidden="true"></span>
					<span class="sr-only">Previous</span>
				  </a>
				  
				  <a class="carousel-control-next" href="#carouselExampleCaptions" role="button" data-slide="next">
					<span class="carousel-control-next-icon" aria-hidden="true"></span>
					<span class="sr-only">Next</span>
				  </a>
				</div>
            </div>
        </div>
		<div class="conten1">
			<div class="container">
                <div class="row">
                    <div class="col-lg-12" style="text-align:center;color:#0094ff !important"><h2>Đồ Ăn Nhẹ</h2></div>
                </div>
				<div class="row">
					<div class="col-lg-4" style="text-align:center">
                        <%foreach (var item in list){ %>
                        <img src="../lib/images/ẩm%20thực/<%= item.PictureMonAn1 %>"  style="height:200px ;width:300px"  />  
                        <br />
                        <a href="ChiTiet.aspx?param=<%= item.ID_MonAn1 %>">Chi Tiết</a>
                        <%} %>
					</div>
					
				</div>
                <div class="row">
                    <div class="col-lg-12" style="text-align:center">
                        <h4 style="color:#0094ff"><
                            <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/BuaToi.aspx">2</asp:HyperLink>&nbsp &nbsp
                            <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="~/BuaToi.aspx">3</asp:HyperLink>&nbsp &nbsp
                            <asp:HyperLink ID="HyperLink3" runat="server" NavigateUrl="~/BuaToi.aspx">4</asp:HyperLink>&nbsp &nbsp
                        ></h4>
                    </div>
               </div>
			</div>
		</div>
		<div class="footer">
            <div class="container">
                <div class="row">
                    <div class="col-lg-4">
                        <ul>
                            <li>
                                Nguyễn Anh Tú
                            </li>
                            <li>
                                Nguyễn Chí Thành
                            </li>
                            <li>
                                Phạm Xuân Thắng
                            </li>
                            <li>
                                Nguyễn Hùng Thắng
                            </li>
                            <li>
                                Đào Minh Hiếu
                            </li>
                        </ul>
                    </div>
                     <div class="col-lg-4">
                         <ul>
                            <li>
                                2017605287
                            </li>
                            <li>
                                2017605...
                            </li>
                            <li>
                                2017605...
                            </li>
                            <li>
                                2017605...
                            </li>
                            <li>
                                2017605718
                            </li>
                        </ul>
                     </div>
                     <div class="col-lg-4">
                         <ul>
                            <li>
                                Giờ hoạt động:8 AM-22PM
                            </li>
                            <li>
                                Hộp thư liên hệ:tudeptrai@gmail.com
                            </li>
                            <li>
                                Số điện thoại văn phòng:190010000
                            </li>
                            <li>
                             <a href="#"><i class="fab fa-facebook"></i></a>
                             <a href="#"><i class="fab fa-google-plus-g"></i></a>
                             <a href="#"><i class="fab fa-twitter"></i></a>
                            </li>
                            <li>
                                Hân hạnh chào đón bạn!
                            </li>
                        </ul>
                     </div>
                </div>
                <div class="row">
                    <div class="col-lg-12" style="text-align:center">
                        @2020-Coppyright by Nhóm 1-KTPM3-K12
                    </div>
                </div>
            </div>
        </div>
    </form>
	    <script src="../lib/js/jquery-3.5.1.slim.min.js"></script>
        <script src="../lib/js/popper.min.js"></script>
        <script src="../lib/js/bootstrap.min.js"></script>
</body>
</html>
