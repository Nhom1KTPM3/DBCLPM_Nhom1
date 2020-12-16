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
    public partial class ChiTietTT : System.Web.UI.Page
    {
        protected List<DanhMuc> lstMenu = null;
        protected TinTuc tt = null;
        public String dl;
        protected void Page_Load(object sender, EventArgs e)
        {

            dl = "style=" + "\"" + "display: none" + "\"";
            // dl = null;

            int idtt = int.Parse(Request.QueryString["param1"]);

            lstMenu = new List<DanhMuc>();
            AdminControl ad = new AdminControl();

            foreach (DataRow dr in ad.getAllMenu().Rows)
            {
                DanhMuc m = null;
                int ID = int.Parse(dr["ID_DanhMuc"].ToString());
                String tenDanhMuc = dr["TenDanhMuc"].ToString();
                String moTa = dr["MoTaDanhMuc"].ToString();
                m = new DanhMuc(ID, tenDanhMuc, moTa);

                lstMenu.Add(m);

            }

            DataRow row = ad.getTinTuc(idtt).Rows[0];
            int IDTT = int.Parse(row["IDTT"].ToString());
            String title = row["title"].ToString();
            String file_anh = row["file_anh"].ToString();
            String ndung = row["ndung"].ToString();
            //String ndung = "<p><strong>c&agrave; t&iacute;m</strong>,<em>c&agrave; t&iacute;</em>m<s>,c&agrave; t&iacute;m</s></p>";

            tt = new TinTuc(IDTT, title, ndung, file_anh);

        }
    }

}