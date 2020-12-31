using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace WebsiteDayNauAn.Ob
{
    public class MonAnUser
    {



        private String ID_MonAn;
        private String TenMonAn;
        private String MotaMonAn;
        private String PictureMonAn;
        private int T_ChuanBi;
        private int T_NauAn;
        private int T_BoSung;
        private String ThanhPhan;
        private String CongThuc;
        private int LuotXem;
        private String ID_DanhMuc;
        private int id_user;

        public MonAnUser(string iD_MonAn, string tenMonAn, string motaMonAn, string pictureMonAn, int chuanBi, int nauAn, int boSung, string thanhPhan, string congThuc, int luotXem, string iD_DanhMuc, int id_user)
        {
            ID_MonAn = iD_MonAn;
            TenMonAn = tenMonAn;
            MotaMonAn = motaMonAn;
            PictureMonAn = pictureMonAn;
            T_ChuanBi = chuanBi;
            T_NauAn = nauAn;
            T_BoSung = boSung;
            ThanhPhan = thanhPhan;
            CongThuc = congThuc;
            LuotXem = luotXem;
            ID_DanhMuc = iD_DanhMuc;
            this.id_user = id_user;
        }

        public MonAnUser(string tenMonAn, string motaMonAn, string pictureMonAn, int chuanBi, int nauAn, int boSung, string thanhPhan, string congThuc, int luotXem, string iD_DanhMuc, int id_user)
        {      
            TenMonAn = tenMonAn;
            MotaMonAn = motaMonAn;
            PictureMonAn = pictureMonAn;
            T_ChuanBi = chuanBi;
            T_NauAn = nauAn;
            T_BoSung = boSung;
            ThanhPhan = thanhPhan;
            CongThuc = congThuc;
            LuotXem = luotXem;
            ID_DanhMuc = iD_DanhMuc;
            this.id_user = id_user;
        }

        public string ID_MonAn1 { get => ID_MonAn; set => ID_MonAn = value; }
        public string TenMonAn1 { get => TenMonAn; set => TenMonAn = value; }
        public string MotaMonAn1 { get => MotaMonAn; set => MotaMonAn = value; }
        public string PictureMonAn1 { get => PictureMonAn; set => PictureMonAn = value; }
        public int T_ChuanBi1 { get => T_ChuanBi; set => T_ChuanBi = value; }
        public int T_NauAn1 { get => T_NauAn; set => T_NauAn = value; }
        public int T_BoSung1 { get => T_BoSung; set => T_BoSung = value; }
        public string ThanhPhan1 { get => ThanhPhan; set => ThanhPhan = value; }
        public string CongThuc1 { get => CongThuc; set => CongThuc = value; }
        public int LuotXem1 { get => LuotXem; set => LuotXem = value; }
        public string ID_DanhMuc1 { get => ID_DanhMuc; set => ID_DanhMuc = value; }
        public int Id_user { get => id_user; set => id_user = value; }
    }
}