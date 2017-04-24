using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

/// <summary>
/// Summary description for userquali_BAL
/// </summary>
public class userquali_BAL
{
    SqlConnection cn;
    SqlCommand cmd;
    SqlDataAdapter adp;
    DataSet ds = new DataSet();

	public userquali_BAL()
	{
        cn=new SqlConnection(ConfigurationManager.ConnectionStrings["con"].ConnectionString);
    }

    public void save(userquali_DAL uqdl)
    {
        cn.Open();
        cmd = new SqlCommand("sp_userQuali",cn);
        cmd.CommandType = CommandType.StoredProcedure;
        cmd.Parameters.AddWithValue("@uq_id", uqdl.uq_id);
        cmd.Parameters.AddWithValue("@up_id", uqdl.up_id);
        cmd.Parameters.AddWithValue("@ssc", uqdl.ssc);
        cmd.Parameters.AddWithValue("@hsc", uqdl.hsc);
        cmd.Parameters.AddWithValue("@graduation", uqdl.graduation);
        cmd.Parameters.AddWithValue("@post_graduation", uqdl.post_graduation);
        cmd.Parameters.AddWithValue("@diploma", uqdl.diploma);
        cmd.Parameters.AddWithValue("@flag", uqdl.flag);
        cmd.ExecuteNonQuery();
        cn.Close();
    }

    public DataSet fetch(userquali_DAL uqdl)
    {
        cn.Open();
        cmd = new SqlCommand("sp_userQuali", cn);
        cmd.CommandType = CommandType.StoredProcedure;
        cmd.Parameters.AddWithValue("@flag", uqdl.flag);
        cmd.Parameters.AddWithValue("@uq_id", uqdl.uq_id);
        adp = new SqlDataAdapter(cmd);
        adp.Fill(ds);
        cn.Close();
        return ds;
    }
}