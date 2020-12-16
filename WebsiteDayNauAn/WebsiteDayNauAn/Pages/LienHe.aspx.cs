using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using WebsiteDayNauAn.Controller;
using WebsiteDayNauAn.Ob;

namespace WebsiteDayNauAn.Pages
{
    public partial class LienHe : System.Web.UI.Page
    {
        public List<DanhMuc> lstMenu;
        public String dl;
        protected void Page_Load(object sender, EventArgs e)
        {
            AdminControl ad = new AdminControl();

            lstMenu = new List<DanhMuc>();
            dl = "style=" + "\"" + "display: none" + "\"";
            // dl = null;

            foreach (DataRow dr in ad.getAllMenu().Rows)
            {
                DanhMuc m = null;
                int ID = int.Parse(dr["ID_DanhMuc"].ToString());
                String tenDanhMuc = dr["TenDanhMuc"].ToString();
                String moTa = dr["MoTaDanhMuc"].ToString();
                m = new DanhMuc(ID, tenDanhMuc, moTa);

                lstMenu.Add(m);

            }
        }
    }
}