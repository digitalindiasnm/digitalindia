using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

/// <summary>
/// Summary description for location_BAL
/// </summary>
public class location_BAL
{
    SqlConnection cn;
    SqlCommand cmd;
    SqlDataAdapter adp;
    DataSet ds = new DataSet();

	public location_BAL()
	{
        cn = new SqlConnection(ConfigurationManager.ConnectionStrings["con"].ConnectionString);
	}
    public void save(location_DAL ldl)
    {
        cn.Open();
        cmd = new SqlCommand("sp_location", cn);
        cmd.CommandType = CommandType.StoredProcedure;
        cmd.Parameters.AddWithValue("@flag", ldl.flag);
        cmd.Parameters.AddWithValue("@l_id", ldl.l_id);
        cmd.Parameters.AddWithValue("@c_id", ldl.c_id);
        cmd.Parameters.AddWithValue("@l_name", ldl.l_name);
        cmd.ExecuteNonQuery();
        cn.Close();

    }
    public DataSet fetch(location_DAL ldl)
    {
        cn.Open();
        cmd = new SqlCommand("sp_location", cn);
        cmd.CommandType = CommandType.StoredProcedure;
        cmd.Parameters.AddWithValue("@flag", ldl.flag);
        cmd.Parameters.AddWithValue("@l_id", ldl.l_id);
        cmd.Parameters.AddWithValue("@c_id", ldl.c_id);
        adp = new SqlDataAdapter(cmd);
        adp.Fill(ds);
        cn.Close();
        return ds;
    }

}