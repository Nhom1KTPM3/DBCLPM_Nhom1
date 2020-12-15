using MySql.Data.MySqlClient;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Security.Cryptography;
using System.Text;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using WebsiteDayNauAn.connect;

namespace WebsiteDayNauAn.Pages
{
    public partial class DangNhap_Pages : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Btn_DangNhap_Click(object sender, EventArgs e)
        {
            String username = txt_UserName.Text.Trim();
            if (username != "")
            {
                try
                {
                    // Mã hóa password bằng hàm băm SHA256
                    SHA256 sha256 = SHA256.Create();
                    String password = txt_Password.Text.Trim();
                    byte[] bytes = sha256.ComputeHash(Encoding.UTF8.GetBytes(password));
                    String encryptedPass = BitConverter.ToString(bytes);

                    // Truy cập CSDL, kiểm tra xem username và pasword có khớp không
                    MySqlConnection conn = DButil.GetDBConnection();
                    //String sql = "SELECT * FROM Login WHERE Username='" + username + "' AND Password='" + encryptedPass + "'";
                    String sql = "SELECT * FROM account_admin WHERE admin_username='" + username + "' AND admin_password='" + encryptedPass + "'";
                    conn.Open();
                    //ma_admin, admin_username, admin_password, ten_admin, ngay_sinh
                    MySqlDataAdapter da = new MySqlDataAdapter(sql, conn);
                    DataTable dt = new DataTable();
                    da.Fill(dt);
                    conn.Close();


                    /*MySqlDataAdapter adapter = new MySqlDataAdapter(sql, conn);
                    DataTable dt = new DataTable();
                    adapter.Fill(dt);*/

                    // Nếu dữ liệu trả về không rỗng thì lưu thông tin đăng nhập vào SESSION
                    if (dt.Rows.Count > 0)
                    {
                        //Session["name"] = username;
                        //Session["allow"] = true;
                        Response.Write("<script>alert('DangNhap Thanh Cong')</script>");
                        //Response.Redirect("BuaToi.aspx");
                    }
                    else
                        Response.Write("<script>alert('Username/Password chưa đúng')</script>");

                    //conn.Close();
                }
                catch (Exception ex)
                {
                    Response.Write("<script>alert('Không thể đăng nhập. Hãy kiểm tra kết nối CSDL!')</script>" + ex.ToString());
                }
            }
        }
    }
}

        /*     protected void Btn_DangNhap_Click(object sender, EventArgs e)
             {
                 SHA256 sha256 = SHA256.Create();
                 String Password = txt_Password.Text.Trim();
                 byte[] bytes = sha256.ComputeHash(Encoding.UTF8.GetBytes(Password));
                 String encryptPass = BitConverter.ToString(bytes);
                 txt_Password.Text = encryptPass;

             }*/
