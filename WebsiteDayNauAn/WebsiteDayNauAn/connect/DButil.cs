using MySql.Data.MySqlClient;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace WebsiteDayNauAn.connect
{
    public class DButil
    {
        public static MySqlConnection GetDBConnection()
        {
            string host = "127.0.0.1";
            int port = 3309;
            string database = "food_oder";
            string username = "web1";
            string password = "1234";

            return DBMysqlutil.GetDBConnection(host, port, database, username, password);
        }
    }
}