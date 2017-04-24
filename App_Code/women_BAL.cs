using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;


/// <summary>
/// Summary description for women_BAL
/// </summary>
public class women_BAL
{
    SqlConnection cn;
    SqlCommand cmd;
    SqlDataAdapter adp;
    DataSet ds = new DataSet();
	public women_BAL()
	{
        cn = new SqlConnection(ConfigurationManager.ConnectionStrings["con"].ConnectionString);		
	}

    public void save(women_DAL wdl)
    {
        cn.Open();
        cmd = new SqlCommand("sp_women", cn);
        cmd.CommandType = CommandType.StoredProcedure;
        cmd.Parameters.AddWithValue("@flag", wdl.flag);
        cmd.Parameters.AddWithValue("@w_id", wdl.w_id);
        cmd.Parameters.AddWithValue("@u_id", wdl.u_id);
        cmd.Parameters.AddWithValue("@ngo_id", wdl.ngo_id);
        cmd.Parameters.AddWithValue("@complain", wdl.complain);
        cmd.Parameters.AddWithValue("advice", wdl.advice);
        cmd.ExecuteNonQuery();
        cn.Close();
    }

    public DataSet fetch(women_DAL wdl)
    {
        cn.Open();
        cmd = new SqlCommand("sp_women", cn);
        cmd.CommandType = CommandType.StoredProcedure;
        cmd.Parameters.AddWithValue("@flag", wdl.flag);
        cmd.Parameters.AddWithValue("@w_id", wdl.w_id);
        cmd.Parameters.AddWithValue("@ngo_id", wdl.ngo_id);
        cmd.Parameters.AddWithValue("@u_id", wdl.u_id);
        adp = new SqlDataAdapter(cmd);
        adp.Fill(ds);
        cn.Close();
        return ds;
    }


}