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
    public partial class TrangChu : System.Web.UI.Page
    {
        public List<DanhMuc> lstMenu;
        public String dl;
        protected static List<MonAn> lstFood = new List<MonAn>();
        public List<TinTuc> lstTinTuc;

        


        protected void Page_Load(object sender, EventArgs e)
        {

           // int id = int.Parse(Request.QueryString["param"]);
            lstFood.Clear();

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
                m = new DanhMuc(ID, tenDanhMuc,moTa);

                lstMenu.Add(m);

            }

            if (!Page.IsPostBack)
            {
                //int at = 0, total = 6;
                foreach (DataRow dr in ad.getAllFood().Rows)
                {
                    MonAn m = null;

                    String ID_MonAn =dr["ID_MonAn"].ToString();
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


                    m = new MonAn(ID_MonAn, TenMonAn, MotaMonAn, PictureMonAn,T_ChuanBi,T_NauAn,T_BoSung,ThanhPhan,CongThuc,LuotXem,ID_DanhMuc);
                    lstFood.Add(m);

                }

                lstTinTuc = new List<TinTuc>();
                foreach (DataRow dr in ad.getTinTucs(ad.countTinTuc() - 3, ad.countTinTuc()).Rows)
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
}