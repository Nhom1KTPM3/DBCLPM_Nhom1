﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="TrangChu.aspx.cs" Inherits="WebsiteDayNauAn.TrangChu" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Món ngon mỗi ngày</title>

    <link href="lib/css/all.css" rel="stylesheet" />
    <link href="lib/css/bootstrap-grid.css" rel="stylesheet" />
    <link href="lib/css/bootstrap.css" rel="stylesheet" />
    <link href="lib/css/style.css" rel="stylesheet" />

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
                        <a href="#">Trang chủ</a> &nbsp &nbsp &nbsp 
                        <asp:TextBox ID="txtSreach" runat="server"></asp:TextBox><asp:Button ID="btnSreach" runat="server"  Text="Tìm kiếm"/>&nbsp &nbsp &nbsp 
                        <a href="#">Đăng nhập</a>

                    </div>
                </div>
            </div>
        </div>
        <div class="slider">
            <div class="container">
                <div class="row">
                    <div class="col-lg-12">
                        <asp:Image ID="Image1" runat="server" ImageUrl="~/lib/images/ẩm thực/banhmikep.jpg" style="height:300px ;width:100%" />                    
                    </div>
                 </div>
            </div>
        </div>
        <div class="conten1">
            <div class="container">
                <div class="row">
                     <div class=" col-lg-3">
                         <div>
                             <h2 style="text-align:center">Món Mới</h2>
                         </div>
                         <div >
                             <a href="#">
                                    <asp:Image ID="Image2" runat="server" ImageUrl="~/lib/images/ẩm thực/pizza.jpg" style="height:100px ;width:150px"  />
                              </a>
                                 <div>
                                     <h4>pizza</h4>
                                 </div>
                                 <div>
                                     Món ăn phổ biến cho những người lười!
                                 </div>
                                 <div style="color:#ff0000 !important">
                                     1.2M view!
                                 </div>
                         </div>
                         <div>
                              <a href="#">
                                    <asp:Image ID="Image3" runat="server" ImageUrl="~/lib/images/ẩm thực/luocthit.jpg" style="height:100px ;width:150px"  />
                              </a>
                                 <div>
                                     <h4>Thịt lợn luộc</h4>
                                 </div>
                                 <div>
                                     Món ăn đi cùng năm tháng!
                                 </div>
                                 <div style="color:#ff0000 !important">
                                     1.2M view!
                                 </div>
                         </div>
                         <div >
                              <a href="#">
                                    <asp:Image ID="Image4" runat="server" ImageUrl="~/lib/images/ẩm thực/suicao.jpg" style="height:100px ;width:150px"  />
                              </a>
                                 <div>
                                     <h4>Sủi cảo</h4>
                                 </div>
                                 <div>
                                     Tín đồ ăn uống lên thử một lần!
                                 </div>
                                 <div style="color:#ff0000 !important">
                                     1.2M view!
                                 </div>
                         </div>
                    </div>
                     <div class="col-lg-6">
                         <div>
                             <h2 style="text-align:center">Thực đơn cho bạn</h2>
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
                                 <h2>Bữa Trưa</h2>
                              </a>
                          </div>
                          <div >
                             <a href="#">
                                 <asp:Image ID="Image7" runat="server" style="height:200px ;width:550px" ImageUrl="~/lib/images/ẩm thực/amthucxaxi.jpg"  />
                                 <h2>Bữa Tối</h2>
                              </a>
                          </div>
                          <div >
                             <a href="#">
                                 <asp:Image ID="Image8" runat="server" style="height:200px ;width:550px" ImageUrl="~/lib/images/ẩm thực/buffet.jpeg" />
                                 <h2>Đồ ăn nhẹ</h2>
                              </a>
                          </div>
                     </div>
                    <div class="col-md-3">
                        <h2 style="text-align:center">Quảng cáo</h2>
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