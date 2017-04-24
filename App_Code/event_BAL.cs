using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;


/// <summary>
/// Summary description for event_BAL
/// </summary>
public class event_BAL
{
    SqlConnection cn;
    SqlCommand cmd;
    SqlDataAdapter adp;
    DataSet ds = new DataSet();

	public event_BAL()
	{
        cn = new SqlConnection(ConfigurationManager.ConnectionStrings["con"].ConnectionString);
	}

    public void save(event_DAL edl)
    {
        cn.Open();
        cmd = new SqlCommand("sp_event", cn);
        cmd.CommandType = CommandType.StoredProcedure;
        cmd.Parameters.AddWithValue("@e_id",edl.e_id);
        cmd.Parameters.AddWithValue("@ap_id", edl.ap_id);
        cmd.Parameters.AddWithValue("@u_id", edl.u_id);
        cmd.Parameters.AddWithValue("@flag", edl.flag);
        cmd.Parameters.AddWithValue("@title", edl.title);
        cmd.Parameters.AddWithValue("@e_desc", edl.e_desc);
        cmd.Parameters.AddWithValue("@date", edl.date);
        cmd.Parameters.AddWithValue("@time", edl.time);
        cmd.Parameters.AddWithValue("@address", edl.address);
        cmd.Parameters.AddWithValue("@pic", edl.pic);
        cmd.ExecuteNonQuery();
        cn.Close();
    }

    public DataSet fetch(event_DAL edl)
    {
        cn.Open();
        cmd = new SqlCommand("sp_event", cn);
        cmd.CommandType = CommandType.StoredProcedure;
        cmd.Parameters.AddWithValue("@flag", edl.flag);
        cmd.Parameters.AddWithValue("@ap_id", edl.ap_id);
        cmd.Parameters.AddWithValue("@u_id", edl.u_id);
        cmd.Parameters.AddWithValue("@e_id", edl.e_id);
        adp = new SqlDataAdapter(cmd);
        adp.Fill(ds);
        cn.Close();
        return ds;
    }
}