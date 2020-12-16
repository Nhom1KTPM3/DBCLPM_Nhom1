using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using WebsiteDayNauAn.Controller;
using WebsiteDayNauAn.Ob;

namespace WebsiteDayNauAn.Pages
{
    public partial class editMonAn : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                btnSua.Enabled = false;
                btnThem.Enabled = true;
                if (Session["ID_MonAn"] != null)
                {


                    btnSua.Enabled = true;
                    btnThem.Enabled = false;
                    Session["ID_MonAn"].ToString();
                    txtTenMon.Text = Session["TenMon"].ToString();
                    txtDetail.Text = Session["MoTa"].ToString();
                    txtChuanBi.Text = Session["T_ChuanBi"].ToString();
                    txtNauAn.Text = Session["T_NauAn"].ToString();
                    txtBoSung.Text = Session["T_BoSung"].ToString();
                    txtThanhPhan.Text = Session["ThanhPhan"].ToString();
                    txtCongThuc.Text = Session["CongThuc"].ToString();
                }
            }
        }

        protected void btnThem_Click(object sender, EventArgs e)
        {
            try
            {
                AdminControl ad = new AdminControl();
                String tenMon = txtTenMon.Text.Trim();
                String file_name = FileUpload1.FileName;

                FileUpload1.SaveAs(MapPath("~/lib/images/ẩm thực/" + file_name));
                String moTa = txtDetail.Text.ToString().Trim();

                int T_ChuanBi = int.Parse(txtChuanBi.Text.Trim());
                int T_NauAn = int.Parse(txtNauAn.Text.Trim());
                int T_BoSung = int.Parse(txtBoSung.Text.Trim());

                String ThanhPhan = txtThanhPhan.Text.ToString().Trim();
                String CongThuc = txtCongThuc.Text.ToString().Trim();

                String id_danhmuc = "";
                if (drlDanhMuc.SelectedItem.Text == "Bữa Sáng")
                {
                    id_danhmuc = "01";
                }
                else if (drlDanhMuc.SelectedItem.Text == "Bữa Trưa")
                {
                    id_danhmuc = "02";
                }
                else if (drlDanhMuc.SelectedItem.Text == "Bữa Tối")
                {
                    id_danhmuc = "03";
                }
                else if (drlDanhMuc.SelectedItem.Text == "Đồ ăn nhẹ")
                {
                    id_danhmuc = "04";
                }
                else
                {
                    id_danhmuc = "01";
                }


                MonAn t = new MonAn((ad.countFood() + 5).ToString(), tenMon, moTa, file_name, T_ChuanBi, T_NauAn, T_BoSung, ThanhPhan, CongThuc, 0, id_danhmuc);
                ad.AddFood(t);
                Response.Write("<script>alert('Thêm thành công!')</script>");
                Response.Redirect("QuanLy.aspx");
            }catch(Exception ex)
            {
                Response.Write("<script>alert('Lỗi ở đâu đó!Hãy xem lại!')</script>");
            }
        }

        protected void btnSua_Click(object sender, EventArgs e)
        {
            try
            {
                AdminControl ad = new AdminControl();
                String tenMon = txtTenMon.Text;
                String file_name = FileUpload1.FileName;

                FileUpload1.SaveAs(MapPath("~/lib/images/ẩm thực/" + file_name));
                String moTa = txtDetail.Text.Trim();

                int T_ChuanBi = int.Parse(txtChuanBi.Text.Trim());
                int T_NauAn = int.Parse(txtNauAn.Text.Trim());
                int T_BoSung = int.Parse(txtBoSung.Text.Trim());

                String ThanhPhan = txtThanhPhan.Text.Trim();
                String CongThuc = txtCongThuc.Text.Trim();

                String id_danhmuc = "";
                if (drlDanhMuc.SelectedItem.Text == "Bữa Sáng")
                {
                    id_danhmuc = "01";
                }
                else if (drlDanhMuc.SelectedItem.Text == "Bữa Trưa")
                {
                    id_danhmuc = "02";
                }
                else if (drlDanhMuc.SelectedItem.Text == "Bữa Tối")
                {
                    id_danhmuc = "03";
                }
                else if (drlDanhMuc.SelectedItem.Text == "Đồ ăn nhẹ")
                {
                    id_danhmuc = "04";
                }
                else
                {
                    id_danhmuc = "01";
                }

                String id = Session["ID_MonAn"].ToString();
                int luotxem = int.Parse(Session["luotxem"].ToString());
                MonAn t = new MonAn(id, tenMon, moTa, file_name, T_ChuanBi, T_NauAn, T_BoSung, ThanhPhan, CongThuc, luotxem, id_danhmuc);
                ad.EditFood(t);

                Response.Redirect("QuanLy.aspx");
            }catch(Exception ex)
            {
                Response.Write("<script>alert('Lỗi ở đâu đó!Hãy xem lại!')</script>");
            }
        }
    }
}