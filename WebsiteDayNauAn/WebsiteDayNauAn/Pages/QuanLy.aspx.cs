using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using WebsiteDayNauAn.Controller;

namespace WebsiteDayNauAn.Pages
{
    public partial class QuanLy : System.Web.UI.Page
    {
        AdminControl ad = new AdminControl();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void gvData_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            String a = gvData.Rows[e.RowIndex].Cells[2].Text + "";

            ad.delFood(int.Parse(a));
            Response.Redirect("QuanLy.aspx");
        }

        protected void gvData_SelectedIndexChanging(object sender, GridViewSelectEventArgs e)
        {


            String a = gvData.Rows[e.NewSelectedIndex].Cells[2].Text + "";
            DataTable dt = ad.getFootbyID(int.Parse(a));
            DataRow dr = dt.Rows[0];

            Session["ID_MonAn"] = dr["ID_MonAn"].ToString();
            Session["TenMon"] = dr["TenMonAn"].ToString();
            Session["MoTa"] = dr["MoTaMonAn"].ToString();
            Session["T_ChuanBi"] = dr["T_ChuanBi"].ToString();
            Session["T_NauAn"] = dr["T_NauAn"].ToString();
            Session["T_BoSung"] = dr["T_BoSung"].ToString();
            Session["ThanhPhan"] = dr["ThanhPhan"].ToString();
            Session["CongThuc"] = dr["CongThuc"].ToString();
            Session["DanhMuc"] = dr["ID_DanhMuc"].ToString();

            Session["luotxem"] = dr["LuotXem"].ToString();

            Response.Redirect("editMonAn.aspx");

        }

        protected void btnThemtt_Click(object sender, EventArgs e)
        {
            Response.Redirect("editTinTuc.aspx");
        }

        protected void gvTinTuc_RowDeleting1(object sender, GridViewDeleteEventArgs e)
        {
            String a = gvTinTuc.Rows[e.RowIndex].Cells[2].Text + "";

            ad.delTinTuc(int.Parse(a));
            Response.Redirect("QuanLy.aspx");
        }


        protected void btnExit_Click(object sender, EventArgs e)
        {
            Response.Redirect("TrangChu.aspx");
        }


        protected void gvTinTuc_SelectedIndexChanging(object sender, GridViewSelectEventArgs e)
        {
            
            String a = gvTinTuc.Rows[e.NewSelectedIndex].Cells[2].Text + "";
            DataTable dt = ad.getTinTuc(int.Parse(a));
            DataRow dr = dt.Rows[0];

            Session["ID_tintuc"] = dr["IDTT"].ToString();
            Session["nDung_tintuc"] = dr["ndung"].ToString();
            Session["titleTinTuc"] = dr["title"].ToString();
            Session["imageTT"] = dr["file_anh"].ToString();

            Response.Redirect("editTinTuc.aspx");
        }

        protected void btnThem_Click(object sender, EventArgs e)
        {
            Response.Redirect("editMonAn.aspx");
        }
    }
}