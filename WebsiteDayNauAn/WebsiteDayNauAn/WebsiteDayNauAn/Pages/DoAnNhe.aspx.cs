using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using WebsiteDayNauAn.Object;
using WebsiteDayNauAn.xyly;

namespace WebsiteDayNauAn.Pages
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        public List<MonAn> list = null;
        XuLy xl=new XuLy();
        

        protected void Page_Load(object sender, EventArgs e)
        {
            list = new List<MonAn>();
            foreach(DataRow dr in xl.getFood().Rows)
            {
                MonAn m = null;
                String ID_MonAn=dr["ID_MonAn"].ToString();
                String TenMonAn=dr["TenMonAn"].ToString();
                String MotaMonAn=dr["MotaMonAn"].ToString();
                String PictureMonAn=dr["PictureMonAn"].ToString();
                int T_ChuanBi=int.Parse(dr["T_ChuanBi"].ToString());
                int T_NauAn=int.Parse(dr["T_NauAn"].ToString());
                int T_BoSung=int.Parse(dr["T_BoSung"].ToString());
                String ThanhPhan=dr["ThanhPhan"].ToString();
                String CongThuc= dr["CongThuc"].ToString();
                int LuotXem = int.Parse(dr["LuotXem"].ToString());
                String ID_DanhMuc=dr["ID_DanhMuc"].ToString();
                m = new MonAn(ID_MonAn, TenMonAn, MotaMonAn, PictureMonAn, T_ChuanBi, T_NauAn, T_BoSung, ThanhPhan, CongThuc, LuotXem, ID_DanhMuc);
                list.Add(m);

    }
            

        }
    }
}