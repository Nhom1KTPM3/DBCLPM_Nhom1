using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using WebsiteDayNauAn.xyly;
namespace WebsiteDayNauAn.Pages
{
    public partial class QuanTri : System.Web.UI.Page
    {
        XuLy xuLy = new XuLy();
        protected void Page_Load(object sender, EventArgs e)
        {
            gvDataND.DataSource = xuLy.htTaiKhoan();
            gvDataND.DataBind();
        }
        public void load()
        {

            gvDataND.DataSource = xuLy.htTaiKhoan();
            gvDataND.DataBind();
        }

        protected void gvDataND_RowEditing(object sender, GridViewEditEventArgs e)
        {
            gvDataND.EditIndex = e.NewEditIndex;
            load();
        }

        protected void gvDataND_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            int i = e.RowIndex;
            String s = gvDataND.Rows[i].Cells[0].Text;
            Label5.Text = i+""+s;
            xuLy.deleteTaiKhoan("ok");
            load();

        }

        protected void gvDataND_RowUpdating(object sender, GridViewUpdateEventArgs e)
        {
            
        }

  

        protected void gvDataND_SelectedIndexChanged(object sender, EventArgs e)
        {
            GridViewRow row;
            int i = gvDataND.SelectedIndex;
            txtTaiKhoan.Text = gvDataND.Rows[i].Cells[0].Text;
            Label5.Text = i+"";
        }

        protected void gvDataND_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
        {
            gvDataND.EditIndex = -1;
            gvDataND.DataBind();
        }
    }
}