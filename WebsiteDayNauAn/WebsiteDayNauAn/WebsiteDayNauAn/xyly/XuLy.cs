using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using WebsiteDayNauAn.connect;
using MySql.Data;
using MySql.Data.MySqlClient;
using System.Data;
using WebsiteDayNauAn.Object;

namespace WebsiteDayNauAn.xyly
{
    public class XuLy
    {
        MySqlConnection conn = DButil.GetDBConnection();
        public DataTable htTaiKhoan(String tenTaiKhoan,String matKhau)
        {
            String sql = "SELECT TaiKhoan FROM login where (TaiKhoan='"+tenTaiKhoan+"' and  MatKhau='"+matKhau+"')";
            conn.Open();
            MySqlCommand mcoman = new MySqlCommand(sql,conn);
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
            String sql = "DELETE FROM login WHERE (TaiKhoan = '"+taiKhoan+"')";
            MySqlCommand m = new MySqlCommand(sql, conn);
            m.ExecuteNonQuery();
            conn.Close();
        }

        public DataTable getFood()
        {
            String sql = "SELECT * FROM monan";
            MySqlDataAdapter adapter = new MySqlDataAdapter(sql, conn);
            DataTable dt = new DataTable();
            adapter.Fill(dt);

            return dt;
        }

        public DataTable getFoodS(int at,int total)
        {
            String sql = "SELECT * FROM monan ORDER BY ID_MonAn ASC LIMIT " + at + ", " + total; 
            MySqlDataAdapter adapter = new MySqlDataAdapter(sql, conn);
            DataTable dt = new DataTable();
            adapter.Fill(dt);

            return dt;
        }

    }
}