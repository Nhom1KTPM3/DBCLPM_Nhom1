<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="DangNhap.aspx.cs" Inherits="WebsiteDayNauAn.Pages.DangNhap" %>

<!DOCTYPE html>


<html>
<head>
<title>Đăng Nhập</title>
    <script src="../lib/js/jquery.min.js"></script>
  
    <link href="../lib/css/styledn.css" rel="stylesheet" />
</head>
<body>
<!--header start here-->
<div class="header">
		<div class="header-main">
		       <h1>Đăng Nhập</h1>
			<div class="header-bottom">
				<div class="header-right w3agile">
					
					<div class="header-left-bottom agileinfo">
						
					 <form action="#" method="post" runat="server">
						<input runat="server" id="txtDangNhap" type="text"  value="User name" name="name" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'User name';}"/>
					<input runat="server" id="txtMatKhau" type="password"  value="Password" name="password" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'password';}"/>
						<div class="remember">
			             <span class="checkbox1">
							   <label class="checkbox"><input runat="server" id="ckbGNDN" type="checkbox" name="" checked=""><i> </i>Remember me</label>
						 </span>
						 <div class="forgot">
						 	<h6><a href="ChiTiet.aspx">Forgot Password?</a></h6>
						 </div>
						<div class="clear"> </div>
					  </div  >
					   
						<asp:Button ID="btnDangNhap" runat="server" Text="Login" OnClick="btnDangNhap_Click" /> 
					</form>	
                        <div class="forgot">
                            <h6><a href="ChiTiet.aspx" >New user?Register here</a></h6>
                        </div>
					<div class="header-left-top">
						<div class="sign-up"> <h2>or</h2> </div>
					
					</div>
					<div class="header-social wthree">
							<a href="#" class="face"> <h3>Facebook</h3></a>
							
						</div>
						
				</div>
				</div>
			  
			</div>
		</div>
</div>
<!--header end here-->
<div class="copyright">
	<p>Nhom1KTPM3K12 | Design by Nhom1KTPM3K12 </a></p>
</div>
<!--footer end here-->
    
<script>
  window.fbAsyncInit = function() {
    FB.init({
      appId      : '209836940659171',
      cookie     : true,
      xfbml      : true,
      version    : 'v9.0'
    });
      
    FB.AppEvents.logPageView();   
      
  };

  (function(d, s, id){
     var js, fjs = d.getElementsByTagName(s)[0];
     if (d.getElementById(id)) {return;}
     js = d.createElement(s); js.id = id;
     js.src = "https://connect.facebook.net/en_US/sdk.js";
     fjs.parentNode.insertBefore(js, fjs);
   }(document, 'script', 'facebook-jssdk'));
</script>
</body>
</html>
