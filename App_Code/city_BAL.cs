using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

/// <summary>
/// Summary description for city_BAL
/// </summary>
public class city_BAL
{  
    SqlConnection cn;
    SqlCommand cmd;
    SqlDataAdapter adp;
    DataSet ds = new DataSet();

	public city_BAL()
	{
        cn = new SqlConnection(ConfigurationManager.ConnectionStrings["con"].ConnectionString);
    }

        public void save(city_DAL cdl)
        {
            cn.Open();
            cmd = new SqlCommand("sp_City",cn);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@flag",cdl.flag);
            cmd.Parameters.AddWithValue("@c_id",cdl.c_id);
            cmd.Parameters.AddWithValue("@s_id",cdl.s_id);
            cmd.Parameters.AddWithValue("@c_name",cdl.c_name);
            cmd.ExecuteNonQuery();
            cn.Close();

        }
        public DataSet fetch(city_DAL cdl)
        {
            cn.Open();
            cmd = new SqlCommand("sp_City", cn);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@flag", cdl.flag);
            cmd.Parameters.AddWithValue("@c_id", cdl.c_id);
            cmd.Parameters.AddWithValue("@s_id", cdl.s_id);
            adp = new SqlDataAdapter(cmd);
            adp.Fill(ds);
            cn.Close();
            return ds;
        }

       
}