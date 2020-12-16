using MySql.Data.MySqlClient;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using WebsiteDayNauAn.connect;
using WebsiteDayNauAn.Ob;

namespace WebsiteDayNauAn.Controller
{
    public class AdminControl
    {
        MySqlConnection conn = DButil.GetDBConnection();
        public void AddFood(MonAn item)
        {
            conn.Open();
            String sql = "INSERT INTO monan  (ID_MonAn,TenMonAn,MoTaMonAn,PictureMonAn,T_ChuanBi,T_NauAn,T_BoSung,ThanhPhan,CongThuc,LuotXem,ID_DanhMuc) VALUES (@ID_MonAn,@TenMonAn,@MoTaMonAn,@PictureMonAn,@T_ChuanBi,@T_NauAn,@T_BoSung,@ThanhPhan,@CongThuc,@LuotXem,@ID_DanhMuc)";
            MySqlCommand cmd = new MySqlCommand(sql, conn);
            cmd.Parameters.AddWithValue("@ID_MonAn", item.ID_MonAn1);
            cmd.Parameters.AddWithValue("@TenMonAn", item.TenMonAn1);
            cmd.Parameters.AddWithValue("@MoTaMonAn", item.MotaMonAn1);
            cmd.Parameters.AddWithValue("@PictureMonAn", item.PictureMonAn1);
            cmd.Parameters.AddWithValue("@T_ChuanBi", item.T_ChuanBi1);
            cmd.Parameters.AddWithValue("@T_NauAn", item.T_NauAn1);
            cmd.Parameters.AddWithValue("@T_BoSung", item.T_BoSung1);
            cmd.Parameters.AddWithValue("@ThanhPhan", item.ThanhPhan1);
            cmd.Parameters.AddWithValue("@CongThuc", item.CongThuc1);
            cmd.Parameters.AddWithValue("@LuotXem", item.LuotXem1);
            cmd.Parameters.AddWithValue("@ID_DanhMuc", item.ID_DanhMuc1);

            cmd.ExecuteNonQuery();
            conn.Close();
        }

        public void EditFood(MonAn item)
        {
            conn.Open();
            String sql = "UPDATE monan set TenMonAn=@ten_mon,MoTaMonAn=@mo_ta,PictureMonAn=@images,T_ChuanBi= @T_ChuanBi,T_NauAn=@T_NauAn,T_BoSung=@T_BoSung,ThanhPhan=@ThanhPhan,CongThuc=@CongThuc,LuotXem=@LuotXem,ID_DanhMuc=@ID_DanhMuc WHERE ID_MonAn=@id";
            MySqlCommand cmd = new MySqlCommand(sql, conn);
            cmd.Parameters.AddWithValue("@ten_mon", item.TenMonAn1);
            cmd.Parameters.AddWithValue("@mo_ta", item.MotaMonAn1);
 
            cmd.Parameters.AddWithValue("@images", item.PictureMonAn1);
            cmd.Parameters.AddWithValue("@T_ChuanBi", item.T_ChuanBi1);
            cmd.Parameters.AddWithValue("@T_NauAn", item.T_NauAn1);
            cmd.Parameters.AddWithValue("@T_BoSung", item.T_BoSung1);
            cmd.Parameters.AddWithValue("@ThanhPhan", item.ThanhPhan1);
            cmd.Parameters.AddWithValue("@CongThuc", item.CongThuc1);
            cmd.Parameters.AddWithValue("@LuotXem", item.LuotXem1);
            cmd.Parameters.AddWithValue("@ID_DanhMuc", item.ID_DanhMuc1);
            cmd.Parameters.AddWithValue("@id", item.ID_MonAn1);
            cmd.ExecuteNonQuery();
            conn.Close();
        }

        public void delFood(int value)
        {
            conn.Open();
            String sql = "DELETE FROM monan WHERE ID_MonAn=@ID";
            MySqlCommand cmd = new MySqlCommand(sql, conn);
            cmd.Parameters.AddWithValue("@ID", value);

            cmd.ExecuteNonQuery();
            conn.Close();
        }

        public DataTable getAllFood()
        {
            String sql = "SELECT * FROM monan ";
            MySqlDataAdapter adapter = new MySqlDataAdapter(sql, conn);
            DataTable dt = new DataTable();
            adapter.Fill(dt);

            return dt;
        }

        public DataTable getFoots(int at, int total)
        {
            String sql = "SELECT * FROM monan ORDER BY ID_MonAn ASC LIMIT " + at + ", " + total;
            MySqlDataAdapter adapter = new MySqlDataAdapter(sql, conn);
            DataTable dt = new DataTable();
            adapter.Fill(dt);

            return dt;
        }

        public DataTable getFootbyIDDM(int value)
        {
            String sql = "SELECT * FROM monan WHERE ID_DanhMuc=" + value;
            MySqlDataAdapter adapter = new MySqlDataAdapter(sql, conn);
            DataTable dt = new DataTable();
            adapter.Fill(dt);

            return dt;
        }
        public DataTable getFootbyID(int value)
        {
            String sql = "SELECT * FROM monan WHERE ID_MonAn=" + value;
            MySqlDataAdapter adapter = new MySqlDataAdapter(sql, conn);
            DataTable dt = new DataTable();
            adapter.Fill(dt);

            return dt;
        }
        public DataTable getAllMenu()
        {
            String sql = "SELECT * FROM danhmuc ";
            MySqlDataAdapter adapter = new MySqlDataAdapter(sql, conn);
            DataTable dt = new DataTable();
            adapter.Fill(dt);

            return dt;
        }

        public DataTable htTaiKhoan(String tenTaiKhoan, String matKhau)
        {
            String sql = "SELECT TaiKhoan FROM login where (TaiKhoan='" + tenTaiKhoan + "' and  MatKhau='" + matKhau + "')";
            conn.Open();
            MySqlCommand mcoman = new MySqlCommand(sql, conn);
            MySqlDataAdapter adapter = new MySqlDataAdapter(mcoman);
            DataTable dataTable = new DataTable();
            adapter.Fill(dataTable);
            conn.Close();
            return dataTable;

        }
        public DataTable htTaiKhoan()
        {
            String sql = "SELECT *from login";
            // if(conn.State==conn.Close())
            conn.Open();
            MySqlCommand mcoman = new MySqlCommand(sql, conn);
            MySqlDataAdapter adapter = new MySqlDataAdapter(mcoman);
            DataTable dataTable = new DataTable();
            adapter.Fill(dataTable);
            conn.Close();
            return dataTable;

        }
        public void deleteTaiKhoan(String taiKhoan)
        {
            conn.Open();
            String sql = "DELETE FROM login WHERE (TaiKhoan = '" + taiKhoan + "')";
            MySqlCommand m = new MySqlCommand(sql, conn);
            m.ExecuteNonQuery();
            conn.Close();
        }
        
        public int getLuotXem(int value)
        {
            
            String sql = "SELECT LuotXem FROM monan WHERE ID_MonAn="+value;
            MySqlDataAdapter adapter = new MySqlDataAdapter(sql, conn);
            DataTable tb = new DataTable();
            adapter.Fill(tb);

            DataRow dr = tb.Rows[0];

            int a = int.Parse(dr["LuotXem"].ToString());
            
            return a;
        }
        public void updateView(int value)
        {
            conn.Open();
            String sql = "UPDATE monan set LuotXem=@luotxem WHERE ID_MonAn=@ID";
            MySqlCommand cmd = new MySqlCommand(sql, conn);
            cmd.Parameters.AddWithValue("@luotxem", getLuotXem(value)+1);
            cmd.Parameters.AddWithValue("@ID", value);
            cmd.ExecuteNonQuery();
            conn.Close();
        }

        public int countFood()
        {
            String sql = "SELECT COUNT(*) AS soluong FROM monan ";
            MySqlDataAdapter adapter = new MySqlDataAdapter(sql, conn);
            DataTable dt = new DataTable();
            adapter.Fill(dt);
            DataRow dr = dt.Rows[0];

            int a = int.Parse(dr["soluong"].ToString());

            return a;
        }

        public void AddTinTuc(TinTuc item)
        {
            conn.Open();
            String sql = "INSERT INTO tintuc  (title,ndung,file_anh) VALUES (@title,@ndung,@file_anh)";
            MySqlCommand cmd = new MySqlCommand(sql, conn);
            cmd.Parameters.AddWithValue("@title", item.Title);
            cmd.Parameters.AddWithValue("@ndung", item.Ndung);
            cmd.Parameters.AddWithValue("@file_anh", item.File_anh);

            cmd.ExecuteNonQuery();
            conn.Close();
        }

        public void EditTinTuc(TinTuc item)
        {
            conn.Open();
            String sql = "UPDATE tintuc SET title=@title,ndung=@ndung,file_anh=@file_anh WHERE IDTT=@IDTT";
            MySqlCommand cmd = new MySqlCommand(sql, conn);
            cmd.Parameters.AddWithValue("@title", item.Title);
            cmd.Parameters.AddWithValue("@ndung", item.Ndung);
            cmd.Parameters.AddWithValue("@file_anh", item.File_anh);
            cmd.Parameters.AddWithValue("@IDTT", item.IDTT1);
            cmd.ExecuteNonQuery();
            conn.Close();
        }

        public void delTinTuc(int IDTT)
        {
            conn.Open();
            String sql = "DELETE FROM tintuc WHERE IDTT=@ID";
            MySqlCommand cmd = new MySqlCommand(sql, conn);
            cmd.Parameters.AddWithValue("@ID", IDTT);

            cmd.ExecuteNonQuery();
            conn.Close();
        }

        public DataTable getTinTuc(int value)
        {
            String sql = "SELECT * FROM tintuc WHERE IDTT=" + value;
            MySqlDataAdapter adapter = new MySqlDataAdapter(sql, conn);
            DataTable dt = new DataTable();
            adapter.Fill(dt);

            return dt;

        }

        public DataTable getAllTinTuc()
        {
            String sql = "SELECT * FROM tintuc ";
            MySqlDataAdapter adapter = new MySqlDataAdapter(sql, conn);
            DataTable dt = new DataTable();
            adapter.Fill(dt);

            return dt;
        }

        public int countTinTuc()
        {
            String sql = "SELECT COUNT(*) AS soluong FROM tintuc ";
            MySqlDataAdapter adapter = new MySqlDataAdapter(sql, conn);
            DataTable dt = new DataTable();
            adapter.Fill(dt);
            DataRow dr = dt.Rows[0];

            int a = int.Parse(dr["soluong"].ToString());

            return a;
        }

        public DataTable getTinTucs(int at, int total)
        {
            String sql = "SELECT * FROM tintuc ORDER BY IDTT ASC LIMIT " + at + " ," + total;
            MySqlDataAdapter adapter = new MySqlDataAdapter(sql, conn);
            DataTable dt = new DataTable();
            adapter.Fill(dt);

            return dt;
        }
    }
}