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
    public class UserControl
    {
        MySqlConnection conn = DButil.GetDBConnection();
        public void AddFood(MonAnUser item)
        {
            conn.Open();
            String sql = "INSERT INTO manauser  (TenMonAn,MoTaMonAn,PictureMonAn,T_ChuanBi,T_NauAn,T_BoSung,ThanhPhan,CongThuc,LuotXem,ID_DanhMuc,id_user) VALUES (@ID_MonAn,@TenMonAn,@MoTaMonAn,@PictureMonAn,@T_ChuanBi,@T_NauAn,@T_BoSung,@ThanhPhan,@CongThuc,@LuotXem,@ID_DanhMuc,@id_user)";
            MySqlCommand cmd = new MySqlCommand(sql, conn);
    
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
            cmd.Parameters.AddWithValue("@id_user", item.Id_user);

            cmd.ExecuteNonQuery();
            conn.Close();
        }

        public void EditFood(MonAn item)
        {
            conn.Open();
            String sql = "UPDATE monanuser set TenMonAn=@ten_mon,MoTaMonAn=@mo_ta,PictureMonAn=@images,T_ChuanBi= @T_ChuanBi,T_NauAn=@T_NauAn,T_BoSung=@T_BoSung,ThanhPhan=@ThanhPhan,CongThuc=@CongThuc,LuotXem=@LuotXem,ID_DanhMuc=@ID_DanhMuc WHERE ID_MonAn=@id";
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
            String sql = "DELETE FROM monanuser WHERE ID_MonAn=@ID";
            MySqlCommand cmd = new MySqlCommand(sql, conn);
            cmd.Parameters.AddWithValue("@ID", value);

            cmd.ExecuteNonQuery();
            conn.Close();
        }

        public DataTable getAllFood()
        {
            String sql = "SELECT * FROM monanuser ";
            MySqlDataAdapter adapter = new MySqlDataAdapter(sql, conn);
            DataTable dt = new DataTable();
            adapter.Fill(dt);

            return dt;
        }

        public DataTable getFoots(int at, int total)
        {
            String sql = "SELECT * FROM monanuser ORDER BY ID_MonAn ASC LIMIT " + at + ", " + total;
            MySqlDataAdapter adapter = new MySqlDataAdapter(sql, conn);
            DataTable dt = new DataTable();
            adapter.Fill(dt);

            return dt;
        }

        public DataTable getFootbyIDDM(int value)
        {
            String sql = "SELECT * FROM monanuser WHERE ID_DanhMuc=" + value;
            MySqlDataAdapter adapter = new MySqlDataAdapter(sql, conn);
            DataTable dt = new DataTable();
            adapter.Fill(dt);

            return dt;
        }
        public DataTable getFootbyID(int value)
        {
            String sql = "SELECT * FROM monanuser WHERE ID_MonAn=" + value;
            MySqlDataAdapter adapter = new MySqlDataAdapter(sql, conn);
            DataTable dt = new DataTable();
            adapter.Fill(dt);

            return dt;
        }

    }
}