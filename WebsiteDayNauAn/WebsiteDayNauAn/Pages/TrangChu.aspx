<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="TrangChu.aspx.cs" Inherits="WebsiteDayNauAn.Pages.TrangChu" %>

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
           
        <div class="conten1" style= "font-family: cursive ">
           
                <div class="row" style="background-color:white ;padding: 21px;">
                     <div class=" col-lg-3" style="text-align:center"> 
                         <div style="width:100%">
                             <h2 style="text-align:center ;background-color:yellowgreen ;color:white">Món Mới</h2>
                         </div>
                         <div style="border-bottom:1px solid; padding-top: 14px;" >
                             <a href="#">
                                    <asp:Image ID="Image2" runat="server" ImageUrl="~/lib/images/ẩm thực/pizza.jpg" style="height:100px ;width:150px"  />
                              </a>
                                 <div>
                                     <h4>pizza</h4>
                                 </div>
                                 <div>
                                     Món ăn phổ biến cho những người lười!
                                 </div>
                                 <div style="color:#ff0000 !important; padding: 10px;">
                                     1.2M view!
                                 </div>
                         </div>
                         <div style="border-bottom:1px solid;    padding-top: 14px;" >
                              <a href="#">
                                    <asp:Image ID="Image3" runat="server" ImageUrl="~/lib/images/ẩm thực/luocthit.jpg" style="height:100px ;width:150px"  />
                              </a>
                                 <div>
                                     <h4>Thịt lợn luộc</h4>
                                 </div>
                                 <div>
                                     Món ăn đi cùng năm tháng!
                                 </div>
                                 <div style="color:#ff0000 !important; padding: 10px;"  >
                                     1.2M view!
                                 </div>
                         </div>
                         <div style="border-bottom:1px solid;     padding-top: 14px;"  >
                              <a href="#">
                                    <asp:Image ID="Image4" runat="server" ImageUrl="~/lib/images/ẩm thực/suicao.jpg" style="height:100px ;width:150px"  />
                              </a>
                                 <div>
                                     <h4>Sủi cảo</h4>
                                 </div>
                                 <div>
                                     Tín đồ ăn uống lên thử một lần!
                                 </div>
                                 <div style="color:#ff0000 !important ; padding: 10px;" >
                                     1.2M view!
                                 </div>
                         </div>
                    </div>
                        
                     <div class="col-lg-6" style="text-align:center">
                         <div>
                             <h2 style="text-align:center; color:darkgreen">Tin Tức nổi bật</h2>
                         </div>
                         <div >
                             <a href="#">
                                 <asp:Image ID="Image5" runat="server" ImageUrl="~/lib/images/ẩm thực/bachtuoc.jpg" style="height:200px ;width:550px"   />
                                <h2>Bữa sáng</h2> 
                              </a>
                          </div>
                           <div >
                             <a href="#">
                                 <asp:Image ID="Image6" runat="server" style="height:200px ;width:550px" ImageUrl="~/lib/images/ẩm thực/spagety.jpg" />
                                 <h2>Tin tức 1 </h2>
                              </a>
                          </div>
                          <div >
                             <a href="#">
                                 <asp:Image ID="Image7" runat="server" style="height:200px ;width:550px" ImageUrl="~/lib/images/ẩm thực/amthucxaxi.jpg"  />
                                 <h2>Tin tức 1</h2>
                              </a>
                          </div>
                          <div >
                             <a href="#">
                                 <asp:Image ID="Image8" runat="server" style="height:200px ;width:550px" ImageUrl="~/lib/images/ẩm thực/buffet.jpeg" />
                                 <h2>Tin tức 1</h2>
                              </a>
                          </div>
                     </div>
                    <div class="col-md-3" style="text-align:center">
                        <h2 style="text-align:center;background-color:yellowgreen; color:white">Quảng cáo</h2>
                        <div style="margin-bottom:5px">
                            <asp:AdRotator ID="AdRotator1" runat="server" AdvertisementFile="~/ads.xml" Height="250px" ToolTip="Đây là quảng cáo" Width="250px" />
                        </div>
                        <div style="margin-bottom:5px">
                            <asp:AdRotator ID="AdRotator2" runat="server" AdvertisementFile="~/ads.xml" Height="250px" ToolTip="Đây là quảng cáo" Width="250px" />
                        </div>
                        <div style="margin-bottom:5px">
                            <asp:AdRotator ID="AdRotator3" runat="server" AdvertisementFile="~/ads.xml" Height="250px" ToolTip="Đây là quảng cáo" Width="250px" />
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
  
   
</body>
     
        
</html>

