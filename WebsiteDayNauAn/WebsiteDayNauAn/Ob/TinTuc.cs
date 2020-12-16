using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace WebsiteDayNauAn.Ob
{
    public class TinTuc
    {
        private int IDTT;
        private String title;
        private String ndung;
        private String file_anh;

        public TinTuc(int iDTT, string title, string ndung, string file_anh)
        {
            IDTT1 = iDTT;
            this.Title = title;
            this.Ndung = ndung;
            this.File_anh = file_anh;
        }
        public TinTuc(string title, string ndung, string file_anh)
        {

            this.Title = title;
            this.Ndung = ndung;
            this.File_anh = file_anh;
        }

        public int IDTT1 { get => IDTT; set => IDTT = value; }
        public string Title { get => title; set => title = value; }
        public string Ndung { get => ndung; set => ndung = value; }
        public string File_anh { get => file_anh; set => file_anh = value; }
    }
}