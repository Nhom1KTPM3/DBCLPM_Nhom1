using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using WebsiteDayNauAn.Controller;
using WebsiteDayNauAn.Ob;

namespace WebsiteDayNauAn
{
    public partial class ChiTiet : System.Web.UI.Page
    {
        public String title = null;
        public List<DanhMuc> lstMenu;
        public String dl;
        protected static List<MonAn> lstFood = new List<MonAn>();
        protected void Page_Load(object sender, EventArgs e)
        {

            AdminControl ad = new AdminControl();
            String id = Request.QueryString["param1"];

            dl = "style=" + "\"" + "display: none" + "\"";
            // dl = null;

            lstMenu = new List<DanhMuc>();


            foreach (DataRow dr in ad.getAllMenu().Rows)
            {
                DanhMuc m = null;
                int ID = int.Parse(dr["ID_DanhMuc"].ToString());
                String tenDanhMuc = dr["TenDanhMuc"].ToString();
                String moTa = dr["MoTaDanhMuc"].ToString();
                m = new DanhMuc(ID, tenDanhMuc, moTa);

                lstMenu.Add(m);

            }
            lstFood.Clear();
            foreach (DataRow dr in ad.getFootbyID(int.Parse(id)).Rows)
            {
                MonAn m = null;

                String ID_MonAn = dr["ID_MonAn"].ToString();
                String TenMonAn = dr["TenMonAn"].ToString();
                String MotaMonAn = dr["MoTaMonAn"].ToString();
                String PictureMonAn = dr["PictureMonAn"].ToString();
                int T_ChuanBi = int.Parse(dr["T_ChuanBi"].ToString());
                int T_NauAn = int.Parse(dr["T_NauAn"].ToString());
                int T_BoSung = int.Parse(dr["T_BoSung"].ToString());
                String ThanhPhan = dr["ThanhPhan"].ToString();
                String CongThuc = dr["CongThuc"].ToString();
                int LuotXem = int.Parse(dr["LuotXem"].ToString());
                String ID_DanhMuc = dr["ID_DanhMuc"].ToString();


                m = new MonAn(ID_MonAn, TenMonAn, MotaMonAn, PictureMonAn, T_ChuanBi, T_NauAn, T_BoSung, ThanhPhan, CongThuc, LuotXem, ID_DanhMuc);
                lstFood.Add(m);

            }

        }
    }
}