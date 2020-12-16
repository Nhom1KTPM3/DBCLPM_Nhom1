using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using WebsiteDayNauAn.Controller;
using WebsiteDayNauAn.Ob;

namespace WebsiteDayNauAn.Pages
{
    public partial class editTinTuc : System.Web.UI.Page
    {
        
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!IsPostBack)
            {
                btnSua.Enabled = false;
                if (Session["ID_tintuc"] != null)
                {
                    btnSua.Enabled = true;
                    btnThem.Enabled = false;
                    txtTitle.Text = Session["titleTinTuc"].ToString();
                    txtDetail.Text = Session["nDung_tintuc"].ToString();

                }//thu lai xem
            }    


        }

        protected void btnThem_Click(object sender, EventArgs e)
        {
            try
            {
                AdminControl ad = new AdminControl();
                String title = txtTitle.Text.Trim();
                String file_name = FileUpload1.FileName;

                FileUpload1.SaveAs(MapPath("~/lib/images/ẩm thực/" + file_name));
                String ndung = txtDetail.Text.ToString().Trim();

                TinTuc t = new TinTuc(title, ndung, file_name);
                ad.AddTinTuc(t);
                Response.Write("<script>alert('Thêm thành công!')</script>");
                Response.Redirect("QuanLy.aspx");
            }catch(Exception ex)
            {
                Response.Write("<script>alert('Lỗi ở đâu đó!Hãy xem lại!')</script>");
            }
        
        }

        protected void btnSua_Click(object sender, EventArgs e)
        {


            try { 
                AdminControl ad = new AdminControl();

                int id = int.Parse(Session["ID_tintuc"].ToString());

                String file_name = FileUpload1.FileName;
                FileUpload1.SaveAs(MapPath("~/lib/images/ẩm thực/" + file_name));
                String title = txtTitle.Text;
                String nd = txtDetail.Text;

                TinTuc tt = new TinTuc(id, title, nd, file_name);
                ad.EditTinTuc(tt);
                 Response.Redirect("QuanLy.aspx");

            }catch(Exception ex)
            {
                Response.Write("<script>alert('Lỗi ở đâu đó!Hãy xem lại!')</script>");
            }
        }

        protected void txtTitle_TextChanged(object sender, EventArgs e)
        {
            
        }

    }
}