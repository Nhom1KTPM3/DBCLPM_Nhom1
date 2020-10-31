using System;
using System.Collections.Generic;
using System.Linq;
using System.Security.Cryptography;
using System.Text;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebsiteDayNauAn.Pages
{
    public partial class DangNhap_Pages : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

   /*     protected void Btn_DangNhap_Click(object sender, EventArgs e)
        {
            SHA256 sha256 = SHA256.Create();
            String Password = txt_Password.Text.Trim();
            byte[] bytes = sha256.ComputeHash(Encoding.UTF8.GetBytes(Password));
            String encryptPass = BitConverter.ToString(bytes);
            txt_Password.Text = encryptPass;

        }*/
    }
}