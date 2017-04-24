using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

/// <summary>
/// Summary description for ambassador_BAL
/// </summary>
public class ambassador_BAL
{

    SqlConnection cn;
    SqlCommand cmd;
    SqlDataAdapter adp;
    DataSet ds = new DataSet();

	public ambassador_BAL()
	{
        cn = new SqlConnection(ConfigurationManager.ConnectionStrings["con"].ConnectionString);
	}
   
    public void save(ambassador_DAL adl)
    {
        cn.Open();
        cmd = new SqlCommand("sp_ambessador_profile", cn);
        cmd.CommandType = CommandType.StoredProcedure;
        cmd.Parameters.AddWithValue("@ap_id", adl.ap_id);
        cmd.Parameters.AddWithValue("@u_id", adl.u_id);
        cmd.Parameters.AddWithValue("@flag", adl.flag);
        cmd.Parameters.AddWithValue("@np_id", adl.np_id);
        cmd.Parameters.AddWithValue("@a_name", adl.a_name);
        cmd.Parameters.AddWithValue("@a_pic", adl.a_pic);
        cmd.ExecuteNonQuery();
        cn.Close();

    }
    public DataSet fetch(ambassador_DAL adl)
    {
        cn.Open();
        cmd = new SqlCommand("sp_ambessador_profile", cn);
        cmd.CommandType = CommandType.StoredProcedure;
        cmd.Parameters.AddWithValue("@flag", adl.flag);
        cmd.Parameters.AddWithValue("@ap_id", adl.ap_id);
        cmd.Parameters.AddWithValue("@u_id", adl.u_id);
        cmd.Parameters.AddWithValue("@np_id", adl.np_id);
        adp = new SqlDataAdapter(cmd);
        adp.Fill(ds);
        cn.Close();
        return ds;
    }

}