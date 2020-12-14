<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="addSanPham.aspx.cs" Inherits="WebsiteDayNauAn.Pages.ADMIN.GiaoDien.addSanPham" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">

<head>
    
    <!-- <link rel="icon" type="image/png" sizes="16x16" href="plugins/images/favicon.png"> -->
    <!-- <title>Ample Admin Template - The Ultimate Multipurpose admin template</title> -->
    <!-- Bootstrap Core CSS -->
    
    <link href="../boostrap/dist/css/bootstrap.min.css" rel="stylesheet" />
    <!-- Menu CSS -->
    <link href="../plugins/bower_components/sidebar-nav/dist/sidebar-nav.min.css" rel="stylesheet">
    <!-- animation CSS -->
    <link href="../css/animate.css" rel="stylesheet">
    <!-- Custom CSS -->
    <script src="../../../lib/js/jquery-3.4.1.min.js"></script>
    <link href="../css/style.css" rel="stylesheet">
    <!-- color CSS -->
    <link href="../css/colors/default.css" id="theme" rel="stylesheet">

   <link href="../css/spinners.css" rel="stylesheet">
    <link href="../../../lib/summernote/summernote-bs4.css" rel="stylesheet" />
    /////
    <link href="../../../lib/css/bootstrap.css" rel="stylesheet" />
    </style>
  
    <script src="../boostrap/dist/js/bootstrap.min.js"></script>
    <style type="text/css">
        a:hover{
            color:red;
        }
    </style>
</head>

<body class="fix-header">
   
    <div id="wrapper">
        <!-- ============================================================== -->
        <!-- Topbar header - style you can find in pages.scss -->
        <!-- ============================================================== -->
        <nav class="navbar navbar-default navbar-static-top m-b-0">
            <div class="navbar-header">
                <div class="top-left-part">
                    <!-- Logo -->
                    <img src="../../../lib/images/Logo/logo.jpg" style="width:88px;margin: 4px;" class="logo" />
                        <span class="span-logo" style="font-family: cursive; font-size: 20px;color: currentColor;">Good Food</span>
                </div>
                <!-- /Logo -->
                <ul class="nav navbar-top-links navbar-right pull-right">
                   
                </ul>
            </div>
          
        </nav>
      
        <div class="navbar-default sidebar" role="navigation">
            <div class="sidebar-nav slimscrollsidebar">
                <div class="sidebar-head">
                    <h3><span class="fa-fw open-close"><i class="ti-close ti-menu"></i></span> <span class="hide-menu">Navigation</span></h3>
                </div>
                <ul class="nav" id="side-menu">
                    <li style="padding: 70px 0 0;">
                        <a href="index.html" class="waves-effect"><i class="fa fa-clock-o fa-fw" aria-hidden="true"></i>Trang Chủ</a>
                    </li>
                    <li>
                        <a href="profile.html" class="waves-effect"><i class="fa fa-user fa-fw" aria-hidden="true"></i>Thông tin cá nhân</a>

                    </li>
                    <li>
                        <a href="basic-table.html" class="waves-effect"><i class="fa fa-table fa-fw" aria-hidden="true"></i>Basic Table</a>
                        <ul class="nav" id="side-menu-child">
                            <li><a href="#" >Danh Mục</a></li>
                             <li><a href="#" >Món Ăn</a></li>
                              <li><a href="#">Role</a></li>
                               <li><a href="#">User</a></li>
                               <li><a href="#">Phân Quyền</a></li>
                               <li><a href="#">Slide</a></li>
                               <li><a href="#">Tin Tức</a></li>
                             

                        </ul>
                    </li>
                    <li>
                        <a href="fontawesome.html" class="waves-effect"><i class="fa fa-sign-out fa-fw" aria-hidden="true"></i> Đăng Xuất</a>
                    </li>
             
                </ul>
                
            </div>
        </div>
        <!-- ============================================================== -->
        <!-- End Left Sidebar -->
        <!-- ============================================================== -->
        <!-- ============================================================== -->
        <!-- Page Content -->
        <!-- ============================================================== -->
        <div id="page-wrapper">
            <div class="container-fluid">
                <div class="row bg-title">
                    <div class="col-lg-3 col-md-4 col-sm-4 col-xs-12">
                        <h4 class="page-title">Danh muc</h4> </div>
                    <div class="col-lg-9 col-sm-8 col-md-8 col-xs-12">
                        <ol class="breadcrumb">
                            <li><a href="#">Trang Chủ</a></li>
                            <li class="active">Danh muc</li>
                        </ol>
                    </div>
                </div>
                <!-- /.row -->
                <!-- .row -->
                <div class="row row-main">
                   
                    <div class="col-md-12 col-xs-12">
                         <form class="form-horizontal form-material" runat="server">
                        <div class="white-box">
                            <asp:GridView ID="gvSanPham" runat="server" AutoGenerateColumns="False" Width="522px">
                                <Columns>
                                    <asp:BoundField DataField="id" HeaderText="Id" />
                                    <asp:BoundField DataField="tenMonAn" HeaderText="Ten Mon An" />
                                    <asp:BoundField DataField="moTa" HeaderText="Mô tả" />
                                    <asp:BoundField DataField="luotXem" HeaderText="Lượt Xem" />
                                    <asp:BoundField DataField="creadtedBy" HeaderText="CreatedBy" />
                                    <asp:BoundField DataField="anh" HeaderText="Ảnh" />
                                    <asp:CommandField HeaderText="Edit" ShowEditButton="True" />
                                    <asp:CommandField HeaderText="Delete" ShowDeleteButton="True" />
                                </Columns>
                            </asp:GridView>
                        </div>
                             </form>
                    </div>
                </div>
                <!-- /.row -->
            </div>
            <!-- /.container-fluid -->
           
        </div>
       
    </div>
     <script type="text/javascript">
    
	 	// ::: for richtext editor
		$(document).ready(function() {
		  $('#moTa').summernote();
		});
    
     </script>
    <script src="../../../lib/summernote/summernote-bs4.js"></script>
    <!-- /#wrapper -->
    <!-- jQuery -->
   
  
  
    <!-- Bootstrap Core JavaScript -->
  
    <!-- Menu Plugin JavaScript -->
    <script src="../plugins/bower_components/sidebar-nav/dist/sidebar-nav.min.js"></script>
    <!--slimscroll J../avaScript -->
    <script src="../js/jquery.slimscroll.js"></script>
    <!--Wave Effects -->
    <script src="../js/waves.js"></script>
    <!-- Custom Theme JavaScript -->
    <script src="../js/custom.min.js"></script>
    <script src="../js/dashboard1.js"></script>

</body>

</html>
vvvvv