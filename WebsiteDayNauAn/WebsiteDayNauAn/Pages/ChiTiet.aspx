<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ChiTiet.aspx.cs" Inherits="WebsiteDayNauAn.ChiTiet" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Món ngon mỗi ngày</title>

    <link href="../lib/css/bootstrap.min.css" rel="stylesheet" />
 
    <link href="../lib/css/style.css" rel="stylesheet" />

    <link href="../lib/slick/slick/slick.css" rel="stylesheet" />
   
    <link href="../lib/slick/slick/slick-theme.css" rel="stylesheet" />
     <script src="../lib/slick/slick/slick.min.js"></script>
    <script src="../lib/js/jquery-3.4.1.min.js"></script>
      <script src="../lib/slick/slick/slick.js"></script>

</head>
<body>
    <form id="form1" runat="server">
        <div  style="width:100% !important">
		<div class="menu">
            <div class="container-fluid">
                <div class="row" style="background-color:#0ED145">
                    <div class="col-lg-5">
                      <img src="../lib/images/Logo/logo.jpg" style="width:88px;margin: 4px;" class="logo" />
                        <span class="span-logo" style="font-family: cursive; font-size: 20px;color: snow;">Good Food</span>
                    </div>
                    <div class="col-lg-7 vav " style="text-align:left;padding: 21px">
                        <a href="#" style="color: snow;font-family: cursive;font-size: 18px;" >Trang chủ</a> &nbsp &nbsp &nbsp 
                        <asp:TextBox ID="txtSreach" runat="server" Width="400px"></asp:TextBox><asp:Button ID="btnSreach" runat="server"  Text="Tìm kiếm"/>&nbsp &nbsp &nbsp 
                        <a href="#"style="color: snow;font-family: cursive;font-size: 18px;">Đăng nhập</a>

                    </div>
                </div>
            </div>
        </div>
            <script type="text/javascript">
                $(document).ready(function () {
                    $('.list-sp').slick({
                        slidesToShow: 1,
                        slidesToScroll: 1,
                        autoplay: true,
                        autoplaySpeed: 1500,
                        dots: true,
                        
                     });
                 });
            </script>

          
    <div class="slider">
            
				 <div class="list-sp" style="display: flex">

				 
					<div class="carousel-item active">
                        <asp:Image ID="Image1" runat="server" ImageUrl="~/lib/images/ẩm thực/beefsteak.jpg" class="d-block w-100" alt="..." style="height:500px ;width:100%" />
					  <div class="carousel-caption d-none d-md-block">
						<h5 style="font-size:25px">Beefsteak</h5>
						<p style="font-size:20px">Món ăn từ miếng thịt bò (thịt thăn) được cắt lát mỏng và phẳng, được cắt vuông góc với các sợi cơ và sau đó được nướng, chiên hai mặt nửa sống nửa chín.</p>
					  </div>
					</div>
					
					<div class="carousel-item" >
                        <asp:Image ID="Image9" runat="server" ImageUrl="~/lib/images/ẩm thực/pizza.jpg" class="d-block w-100" alt="..." style="height:500px ;width:100%"  />
					  <div class="carousel-caption d-none d-md-block ">
						<h5 style="font-size:25px">Pizza</h5>
						<p style="font-size:20px">Loại bánh dẹt, tròn được chế biến từ nước, bột mỳ và nấm men, sau khi đã được ủ ít nhất 24 tiếng đồng hồ và nhào nặn thành loại bánh có hình dạng tròn và dẹt, và được cho vào lò nướng chín.</p>
					  </div>
					</div>
					
					<div class="carousel-item">
                        <asp:Image ID="Image10" runat="server" ImageUrl="~/lib/images/ẩm thực/banhmikep.jpg" class="d-block w-100" alt="..." style="height:500px ;width:100%"   />
					  <div class="carousel-caption d-none d-md-block">
						<h5 style="font-size:25px">Bánh mì kẹp</h5>
						<p style="font-size:20px">Loại thức ăn đường phố của Việt Nam bao gồm một ổ bánh mì nướng có da giòn, ruột mềm, bên trong có nhân (thường là nhân thịt, cá, thực phẩm chay hoặc mứt trái cây...).</p>
					  </div>
					</div>

				  </div>
        </div>
        </div>
        <div class="conten1">
           
               <div class="row" style="background-color:white ">
                   <div class="col-lg-9">
                       <div class="row">
                           <div class="col-lg-12" style="text-align:center;color:#0094ff" >
                               <h2>
                                    <asp:Label ID="Label3" runat="server" Text="name"></asp:Label>
                                </h2>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-lg-12" style="text-align:center">
                                <asp:Image ID="Image4" runat="server" style="height:400px ;width:800px" ImageUrl="~/lib/images/ẩm thực/spagety.jpg" /><br />                                         
                                <asp:Label ID="Label6" runat="server" Text="mô tả ngắn"></asp:Label><br />
                                <i class="fas fa-users">3</i>&nbsp &nbsp &nbsp<i class="far fa-grin-hearts">4</i>
					        </div>
                        </div>
                        <div class="row" style="text-align:center">
                            <div class="col-lg-6" style="border:double red">
                                <h3 style="color:#0094ff">Thời gian</h3>
                                Chuẩn bị <asp:Label ID="Label1" runat="server" Text="5p"></asp:Label><br />
                                Nấu:<asp:Label ID="Label2" runat="server" Text="5p"></asp:Label><br />
                                Bổ sung:<asp:Label ID="Label4" runat="server" Text="10p"></asp:Label><br />
                                Toàn bộ:<asp:Label ID="Label5" runat="server" Text="20p"></asp:Label>
                            </div>
                            <div class="col-lg-6" style="border:double red">
                                <h3 style="color:#0094ff">Thành phần</h3>
                                <asp:Label ID="Label7" runat="server" Text="Trứng"></asp:Label>
                                <asp:Label ID="Label8" runat="server" Text="Rán"></asp:Label>
                                <asp:Label ID="Label9" runat="server" Text="Cần"></asp:Label>
                                <asp:Label ID="Label10" runat="server" Text="Mỡ"></asp:Label>
                            </div>
                        </div>
                       <div class="row">
                           <div class="col-lg-12" style="text-align:center">
                               <h2 style="color:#0094ff">Thực hiện</h2>
                                   Bước 1: <asp:Label ID="Label11" runat="server" Text="làm cái gì đấy"></asp:Label><br />
                                   Bước 2:<asp:Label ID="Label12" runat="server" Text="làm cái gì đấy"></asp:Label><br />
                                   Bước 3:<asp:Label ID="Label13" runat="server" Text="làm cái gì đấy"></asp:Label><br />
                                   Bước 4:<asp:Label ID="Label14" runat="server" Text="làm cái gì đấy"></asp:Label>
                           </div>
                       </div>

                      
                    </div>
                    <div class="col-lg-3">
                        <h2 style="text-align:center">Quảng cáo</h2>
                        <div style="margin-bottom:5px">
                            <asp:AdRotator ID="AdRotator1" runat="server" AdvertisementFile="~/ads.xml" Height="250px" ToolTip="Đây là quảng cáo" Width="250px" />
                        </div>
                        <div style="margin-bottom:5px">
                            <asp:AdRotator ID="AdRotator2" runat="server" AdvertisementFile="~/ads.xml" Height="250px" ToolTip="Đây là quảng cáo" Width="250px" />
                        </div>
                        <div>
                            <iframe width="250" height="250" src="https://www.youtube.com/embed/MURPf_6r8z4" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
                        </div>
                    </div>
                </div>
            
         </div>
        <div class="footer" style="background-color:#0ED145; color:white">
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
                                2017605...
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

        <script src="lib/js/jquery-3.5.1.slim.min.js"></script>
        <script src="lib/js/popper.min.js"></script>
         <script src="lib/js/bootstrap.min.js"></script>
</body>
</html>
