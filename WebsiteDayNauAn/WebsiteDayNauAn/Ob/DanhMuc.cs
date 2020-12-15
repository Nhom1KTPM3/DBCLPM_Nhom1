using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace WebsiteDayNauAn.Ob
{
    public class DanhMuc
    {
        private int IDDanhMuc;
        private String tenDanhMuc;
        private String moTaDanhMuc;

        public DanhMuc(int iDDanhMuc, string tenDanhMuc, string moTaDanhMuc)
        {
            IDDanhMuc = iDDanhMuc;
            this.tenDanhMuc = tenDanhMuc;
            this.moTaDanhMuc = moTaDanhMuc;
        }

        public int IDDanhMuc1 { get => IDDanhMuc; set => IDDanhMuc = value; }
        public string TenDanhMuc { get => tenDanhMuc; set => tenDanhMuc = value; }
        public string MoTaDanhMuc { get => moTaDanhMuc; set => moTaDanhMuc = value; }
    }
}