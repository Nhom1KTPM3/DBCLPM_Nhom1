using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using WebsiteDayNauAn.xyly;
namespace WebsiteDayNauAn.Pages
{
    
    public partial class DangNhap : System.Web.UI.Page
    {
        XuLy xuLy=new XuLy();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnDangNhap_Click(object sender, EventArgs e)
        {
           
            DataTable dt = xuLy.htTaiKhoan(txtDangNhap.Value, txtMatKhau.Value);
            
            if (dt.Rows.Count==1)
                Response.Redirect("TrangChu.aspx");
            else
            {
                Response.Write("<script>alert('Thông tin tài khoản không chính xác vui lòng thử lại hoặc tạo một tài khoản mới')</script>");
             // Response.Write("<script>window.location.href('')</script>");

            }
            
        }

        protected void btnFace_Click(object sender, EventArgs e)
        {

           
        }
    }
}