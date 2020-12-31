<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="TrangChu.aspx.cs" Inherits="WebsiteDayNauAn.Pages.TrangChu" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link href="../lib/css/all.css" rel="stylesheet" />
    <link href="../lib/css/bootstrap-grid.css" rel="stylesheet" />
    <link href="../lib/css/bootstrap.css" rel="stylesheet" />
    <link href="../lib/css/style.css" rel="stylesheet" />
    <title>Trang chủ</title>
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
							<a href="DangNhap.aspx">Đăng nhập</a>
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
				<div class="container">
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
									<a style="color:#ffffff !important" class="nav-link" href="Tintuc.aspx">Tin tức</a>
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
					   <asp:Image ID="Image2" runat="server" ImageUrl="~/lib/images/ẩm thực/pizza.jpg" class="d-block w-100" alt="..." style="height:550px" />
					  <div class="carousel-caption d-none d-md-block ">
						<h5>Pizza</h5>
						<p>Loại bánh dẹt, tròn được chế biến từ nước, bột mỳ và nấm men, sau khi đã được ủ ít nhất 24 tiếng đồng hồ và nhào nặn thành loại bánh có hình dạng tròn và dẹt, và được cho vào lò nướng chín. .</p>
					  </div>
					</div>
					
					<div class="carousel-item">
					   <asp:Image ID="Image3" runat="server" ImageUrl="~/lib/images/ẩm thực/banhmikep.jpg" class="d-block w-100" alt="..." style="height:550px" />
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

		<div class="about">
			<div class="container">
				<div class="row">
					<div class="col-md-12 text-center">
						<h2>Giới thiệu<Span class="badge badge-secondary"><i class="fas fa-cookie-bite"></i></Span></h2>
					</div>
				</div>
			
				<div class="row  mt-30">
					<div class="col-md-5">
						<div class="embed-responsive embed-responsive-16by9">			  
							<iframe class="embed-responsive-item" src="https://www.youtube.com/embed/Vuwr8OGRIFw" frameborder="0" allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
						</div>
					</div>
					
					<div class="col-md-7 ">
						<div class="accordion mt-20" id="accordionExample">
						  <div class="card">
							<div class="card-header" id="headingOne">
							  <h2 class="mb-0">
								<button class="btn btn-link btn-block text-left" type="button" data-toggle="collapse" data-target="#collapseOne" aria-expanded="true" aria-controls="collapseOne">
								  <i class="fab fa-asymmetrik"></i>&nbsp
								  Tầm nhìn
								</button>
							  </h2>
							</div>

							<div id="collapseOne" class="collapse show" aria-labelledby="headingOne" data-parent="#accordionExample">
							  <div class="card-body text-justify">
								Ẩm thực là một hệ thống đặc biệt về quan điểm truyền thống và thực hành nấu ăn, nghệ thuật bếp núc, nghệ thuật chế biến thức ăn, thường gắn liền với một nền văn hóa cụ thể. 
								Nó thường được đặt tên theo vùng hoặc nền văn hóa hiện hành. Một món ăn chủ yếu chịu ảnh hưởng của các thành phần có sẵn tại địa phương hoặc thông qua thương mại, buôn bán trao đổi. 
								Những thực phẩm mang màu sắc tôn giáo cũng có những ảnh hưởng rất lớn tới ẩm thực. Mở rộng ra thì ẩm thực có nghĩa là một nền văn hóa ăn uống của một dân tộc, đã trở thành một tập tục, thói quen. 
								Ẩm thực không chỉ nói về "văn hóa vật chất" mà còn nói về cả mặt "văn hóa tinh thần"
							  </div>
							</div>
						  </div>
						  
						  <div class="card">
							<div class="card-header" id="headingTwo">
							  <h2 class="mb-0">
								<button class="btn btn-link btn-block text-left collapsed" type="button" data-toggle="collapse" data-target="#collapseTwo" aria-expanded="false" aria-controls="collapseTwo">
								  <i class="fas fa-atlas"></i> &nbsp
								  Sứ mệnh
								</button>
							  </h2>
							</div>
							
							<div id="collapseTwo" class="collapse" aria-labelledby="headingTwo" data-parent="#accordionExample">
							  <div class="card-body text-justify">
								Ngay từ khi những dấu chân đầu tiên của con người in dấu trên Trái Đất, ngay từ thời kì bình minh của nhân loại, việc ăn uống đã được coi như là một nhu cầu cần thiết để duy trì sự sống của sinh vật sống nói chung và con người nói riêng. 
								Tuy nhiên, ở thời kì cổ đại đó, thức ăn vẫn còn khan hiếm buộc con người không có quyền lựa chọn thức ăn. Sau này, trải qua hàng triệu năm tiến hóa, thế giới ngày một văn minh hơn, do đó, những tri thức cơ bản đầu tiên về lĩnh vực ăn uống được hình thành, tạo nên khái niệm đầu tiên về văn hóa ăn uống: ẩm thực.</div>
							</div>
						  </div>
						  
						  <div class="card">
							<div class="card-header" id="headingThree">
							  <h2 class="mb-0">
								<button class="btn btn-link btn-block text-left collapsed" type="button" data-toggle="collapse" data-target="#collapseThree" aria-expanded="false" aria-controls="collapseThree">
								  <i class="fas fa-air-freshener"></i>&nbsp
								  Giá trị cốt lõi
								</button>
							  </h2>
							</div>
							
							<div id="collapseThree" class="collapse" aria-labelledby="headingThree" data-parent="#accordionExample">
							  <div class="card-body text-justify">
								Ẩm thực là chiếc gương soi chân thực cho nền văn hóa của mỗi quốc gia. 
								Ẩm thực cũng là một cách để mỗi đất nước quảng bá nền văn hóa của họ.
								Mỗi nền văn hóa ẩm thực của mỗi quốc gia đều lớn lên và đi cùng với mỗi bước phát triển của đất nước đó, là một khía cạnh để đánh giá quốc gia đó có được một nền văn hóa phát triển rực rỡ, có sát cánh với nền ẩm thực đa dạng, phong phú, muôn hình, muôn vẻ của thế giới đang phát triển từng ngày. 
								Bên cạnh những món ăn hiện đại là cả một kho tàng phong phú về những món ăn cổ truyền hấp dẫn muôn vàn thế hệ. </div>
							</div>
						  </div>
						</div>

					</div>
				</div>
			</div>
		</div><!--close about-->

		<div class="news">
			<div class="container">
				<div class="row">
					<div class="col-md-12 text-center">
						<h2>Tin tức mới<Span class="badge badge-secondary"><i class="fas fa-star"></i></Span></h2>
					</div>
				</div>
				<div class="card-deck mt-30">
					<%foreach (var item in lstTinTuc) { %>
					  <div class="card">
							<div class="mycrop">
								<div class="hovergallery">
									<img src="../lib/images/ẩm%20thực/<%=item.File_anh%>" class="card-img-top" alt="..." style="height:200px" />				
								</div>
							</div>
							<div class="card-body ">
							  <h5 class="card-title text-justify"><%= item.Title %></h5>
							  <p class="card-text text-justify">
								<%= item.Ndung.Substring(0,40) %>...
								<h5> <a href="ChiTietTT.aspx?param1=<%= item.IDTT1 %>" >Xem thêm</a></h5>
							  </p>
							</div>
					  </div>	
					
					<%} %>                   
				</div>
			</div>

		</div><!--close news-->
		
		<div class="news">
			<div class="container">
				<div class="row">
					<div class="col-md-12 text-center">
						<h2>Danh sách các món ăn<Span class="badge badge-secondary"><i class="fas fa-star"></i></Span></h2>
					</div>
				</div>
				<div class="row">
					<%foreach (var item in lstFood) { %>
					  <div class="col-md-3">
							<div class="mycrop">
								<div class="hovergallery">                                    
									<img src="../lib/images/ẩm%20thực/<%=item.PictureMonAn1%>" class="card-img-top" alt="..." style="height:200px" />				
								</div>
							</div> 
							<div class="card-body ">
							  <h5 class="card-title text-justify"><%= item.TenMonAn1 %></h5>							
								<p  class="card-text text-left">
								<%= item.CongThuc1 %>...
								<div style="display:flex;align-items:center">
									<button> <img src="../lib/images/icon/tru.jpg" width="20px" height="20px" /></button>                                 
									 <input style="width:50px" id="txtSoLuong" type="text" disabled />
                                    <button><img src="../lib/images/icon/cong.jpg" width="20px" height="20px" /></button>	
									<button><img src="/lib/images/icon/gioHang.png" width="20px" height="20px" /></button>
								 </div> 								
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
