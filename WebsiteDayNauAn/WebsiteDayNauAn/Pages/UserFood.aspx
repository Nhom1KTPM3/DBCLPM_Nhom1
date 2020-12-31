<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="UserFood.aspx.cs" Inherits="WebsiteDayNauAn.Pages.UserFood" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
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
								<p  class="card-text text-justify">
								<%= item.CongThuc1 %>...
								<h5> <a href="ChiTiet.aspx?param1=<%= item.ID_MonAn1 %>" >Xem thêm</a></h5>
							  </p>
							</div>
					  </div>	
					
					<%} %>                   
				</div>
			</div>

		</div><!--close news-->

        </div>
    </form>
</body>
</html>
