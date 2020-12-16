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
    public partial class Tintuc : System.Web.UI.Page
    {
        public List<DanhMuc> lstMenu;
        public String dl;
        protected static List<MonAn> lstFood = new List<MonAn>();
        public List<TinTuc> lstTinTuc;


        protected void Page_Load(object sender, EventArgs e)
        {
            // int id = int.Parse(Request.QueryString["param"]);

            dl = "style=" + "\"" + "display: none" + "\"";
            // dl = null;

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


                lstTinTuc = new List<TinTuc>();
                foreach (DataRow dr in ad.getAllTinTuc().Rows)
                {
                    TinTuc t = null;
                    int ID = int.Parse(dr["IDTT"].ToString());
                    String title = dr["title"].ToString();
                    String ndung = dr["ndung"].ToString();
                    String file_anh = dr["file_anh"].ToString();
                    t = new TinTuc(ID, title, ndung, file_anh);
                    lstTinTuc.Add(t);
                }
            }
    }
}