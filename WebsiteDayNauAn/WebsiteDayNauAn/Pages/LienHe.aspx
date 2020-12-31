﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="LienHe.aspx.cs" Inherits="WebsiteDayNauAn.Pages.LienHe" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Món ngon mỗi ngày</title>

    <link href="../lib/css/all.css" rel="stylesheet" />
    <link href="../lib/css/bootstrap-grid.css" rel="stylesheet" />
    <link href="../lib/css/bootstrap.css" rel="stylesheet" />
    <link href="../lib/css/style.css" rel="stylesheet" />

</head>
<body>
 <form id="form1" runat="server">
		<div class="header fixed-top">
			<div class="top">
				<div class="container">
					<div class="row">
						<div style="color:#ffffff !important" class="col-md-5">
							Hân hạnh chào đón bạn! 
						</div>
						
						<div class="col-md-5 text-center">
							<a href="DangNhap_Pages.aspx">Đăng nhập</a>
							<a href="#">Đăng ký</a>
							<a href="#">Hỗ trợ</a>
							<a class="nav-link" href="#" <%= dl %>><i class="fas fa-user-cog"></i></a>
							<a class="nav-link" href="#"  <%= dl %>>Đăng xuất</a>
						</div>
						
						<div class="col-md-2 text-right">
							<a href="#"><i class="fab fa-facebook"></i></a>
							<a href="#"><i class="fab fa-google-plus-g"></i></a>
							<a href="#"><i class="fab fa-twitter"></i></a>
						</div>
					</div>
				</div>
			
			</div><!--close top-->

			<div class="menu">
				<div class="container-md">
					<nav class="navbar navbar-expand-lg navbar-light bg-light1">
						<a style="color:#ffffff !important" class="navbar-brand" href="#"><i class="fas fa-utensils"></i></a>
						<button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
							<span class="navbar-toggler-icon"></span>
						</button>

						<div class="collapse navbar-collapse" id="navbarSupportedContent">
							<ul class="navbar-nav mr-auto">
								<li class="nav-item active">
									<a style="color:#ffffff !important" class="nav-link" href="TrangChu.aspx"><i class="fa fa-home"></i> <span class="sr-only">(current)</span></a>
								</li>
								<li class="nav-item">
									<a style="color:#ffffff !important" class="nav-link" href="Tintuc.aspx">Tin tức</a>
								</li>
								  <li class="nav-item dropdown">
									<a style="color:#ffffff !important" class="nav-link dropdown-toggle" href="SanPham.aspx" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
									  Thức ăn
									</a>
									<div class="dropdown-menu" aria-labelledby="navbarDropdown">
										<%foreach (var item1 in lstMenu) { %>
										 <a class="dropdown-item" href="BuaSang.aspx?param=<%=item1.IDDanhMuc1 %>"><%= item1.TenDanhMuc %></a>
										<%} %>
									</div>
								  </li>		
								<li class="nav-item">
									<a style="color:#ffffff !important" class="nav-link" href="LienHe.aspx">Liên hệ</a>
								</li>
							</ul>
						</div>
					</nav>
				</div>							
			</div><!--close menu-->
		</div><!--close header-->

		<div class="slider">
			<div class="container-fluid">
				<div id="carouselExampleCaptions" class="carousel slide" data-ride="carousel">
				  <ol class="carousel-indicators">
					<li data-target="#carouselExampleCaptions" data-slide-to="0" class="active"></li>
					<li data-target="#carouselExampleCaptions" data-slide-to="1"></li>
					<li data-target="#carouselExampleCaptions" data-slide-to="2"></li>
				  </ol>
                    
				  <div class="carousel-inner">
					<div class="carousel-item active">
                        <asp:Image ID="Image1" runat="server" ImageUrl="~/lib/images/ẩm thực/beefsteak.jpg" class="d-block w-100" alt="..." style="height:550px" />
					  <
					  <div class="carousel-caption d-none d-md-block">
						<h5>Hamburger</h5>
						<p>Miếng thịt có thể đã được nướng, chiên, hay hun khói và thường được ăn với một số gia vị bên trong cùng với 2 miếng bánh mì hình tròn. Bánh thường được thưởng thức với khoai tây chiên.</p>
					  </div>
					</div>
					
					<div class="carousel-item">
					   <asp:Image ID="Image5" runat="server" ImageUrl="~/lib/images/ẩm thực/pizza.jpg" class="d-block w-100" alt="..." style="height:550px" />
					  <div class="carousel-caption d-none d-md-block ">
						<h5>Pizza</h5>
						<p>Loại bánh dẹt, tròn được chế biến từ nước, bột mỳ và nấm men, sau khi đã được ủ ít nhất 24 tiếng đồng hồ và nhào nặn thành loại bánh có hình dạng tròn và dẹt, và được cho vào lò nướng chín. .</p>
					  </div>
					</div>
					
					<div class="carousel-item">
					   <asp:Image ID="Image6" runat="server" ImageUrl="~/lib/images/ẩm thực/banhmikep.jpg" class="d-block w-100" alt="..." style="height:550px" />
					  <div class="carousel-caption d-none d-md-block">
						<h5>Snack khoai tây</h5>
						<p>Loại thức ăn đường phố của Việt Nam bao gồm một ổ bánh mì nướng có da giòn, ruột mềm, bên trong có nhân (thường là nhân thịt, cá, thực phẩm chay hoặc mứt trái cây...)</p>
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

		</div><!--close slider-->

		<div>
			<div class="container">
				<div class="row">
					<div class="col-md-12">
						<h2>Thông tin liên lạc</h2><br />
					</div>
				</div>
				<div class="row">
					<div class="col-md-3">
						Địa chỉ:132,Nam Từ Niêm,Thành Phố Hà Nội
					</div>
					<div class="col-md-3">
						Số Điện Thoại:+0967235036
					</div>
					<div class="col-md-3">
						Địa chỉ	Email:Nhom1KTPM3@gmail.com
					</div>
					<div class="col-md-3">
						Website:......................
					</div>
				</div>
				<div class="row">
					<div class="col-md-12">
						<iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3723.4556912348426!2d105.73295331424576!3d21.054454392278057!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x31345457e292d5bf%3A0x20ac91c94d74439a!2sHanoi%20University%20of%20Industry!5e0!3m2!1sen!2s!4v1605757469184!5m2!1sen!2s" width="100%" height="450" frameborder="0" style="border:0;" allowfullscreen="" aria-hidden="false" tabindex="0"></iframe>
					</div>
				</div>
			</div>
		</div>
		

		<div class="footer">
			<div class="container">
				<div class="row">
					<div class="col-md-4">
						<ul>
							<li><a href="#"><i class="fas fa-home"></i></a></li>
							<li><a href="#">Giới thiệu</a></li>
							<li><a href="#">Tin tức</a></li>
							<li><a href="#">Sản phẩm</a></li>
							<li><a href="#">Liên hệ</a></li>
						</ul>
					</div>
					
					<div class="col-md-8">
						<h3>Công ty cổ phần....</h3>
						<p>Địa chỉ:.....</p>
						<p>Hòm thư:...</p>
						
						<i class="fab fa-facebook"></i>
						<i class="fab fa-google-plus-g"></i>
						<i class="fab fa-twitter"></i>
					</div>
				</div>
				
				<div class="row footer-bottom">
					<div class="col-md-12 text-center">@2020.Anh tú đẹp trai!!!</div></div>
				</div>
			</div>
		</div><!--close footer-->
	</form>

    <script src="../lib/js/jquery-3.5.1.slim.min.js"></script>
    <script src="../lib/js/popper.min.js"></script>
    <script src="../lib/js/bootstrap.min.js"></script>

</body>
</html>