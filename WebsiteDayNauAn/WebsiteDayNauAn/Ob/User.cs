using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace WebsiteDayNauAn.Ob
{
    public class User
    {
        private String tk;
        private String mk;

        public User(string tk, string mk)
        {
            this.tk = tk;
            this.mk = mk;
        }

        public string Tk { get => tk; set => tk = value; }
        public string Mk { get => mk; set => mk = value; }
    }
}