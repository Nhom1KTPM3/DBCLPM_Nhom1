﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="BuaSang.aspx.cs" Inherits="WebsiteDayNauAn.Pages.BuaSang" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    
    <title>Bữa sáng ngon miệng!</title>
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
							<a href="login.aspx">Đăng nhập</a>
							<a href="DangKy.aspx">Đăng ký</a>
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
									<a style="color:#ffffff !important" class="nav-link" href="#"><i class="fa fa-home"></i> <span class="sr-only">(current)</span></a>
								</li>
								<li class="nav-item">
									<a style="color:#ffffff !important" class="nav-link" href="#">Giới thiệu</a>
								</li>
								  <li class="nav-item dropdown">
									<a style="color:#ffffff !important" class="nav-link dropdown-toggle" href="SanPham.aspx" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
									  Thức ăn
									</a>
									<div class="dropdown-menu" aria-labelledby="navbarDropdown">
										<%foreach (var item in lstMenu) { %>
										 <a class="dropdown-item" href="BuaSang.aspx?param=<%=item.IDDanhMuc1 %>"><%= item.TenDanhMuc %></a>
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
		<div class="news">
			<div class="container-md">
				<div class="row">
					<div class="col-md-12 text-center">
						<h2><%= title %><Span class="badge badge-secondary"><i class="fas fa-star"></i></Span></h2>
					</div>
				</div>
				<div class="row">
					<%foreach (var item in lstFood) { %>
					  <div class="col-md-2">
							<div class="mycrop">
								<div class="hovergallery">                                    
									<img src="../lib/images/ẩm%20thực/<%=item.PictureMonAn1%>" class="card-img-top" alt="..." style="height:200px" />				
								</div>
							</div>
							<div class="card-body ">
							  <h5 class="card-title text-justify"><%= item.TenMonAn1 %></h5>
							  <p class="card-text text-justify">
								<%= item.CongThuc1 %>...
								<h5> <a href="ChiTiet.aspx?param1=<%= item.ID_MonAn1 %>" >Xem thêm</a></h5>
							  </p>
							</div>
					  </div>	
					
					<%} %>                   
				</div>
			</div>

		</div><!--close news-->
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
					<div class="col-md-12 text-center">@2020.Nhóm 1-KTPM3-K12!!!</div></div>
				</div>
		</div><!--close footer-->
    </form>
    <script src="../lib/js/jquery-3.5.1.slim.min.js"></script>
    <script src="../lib/js/popper.min.js"></script>
    <script src="../lib/js/bootstrap.min.js"></script>
</body>
</html>
