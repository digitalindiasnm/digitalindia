using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;


/// <summary>
/// Summary description for feedback_BAL
/// </summary>
public class feedback_BAL
{
    SqlConnection cn;
    SqlCommand cmd;
    SqlDataAdapter adp;
    DataSet ds = new DataSet();
    SqlDataReader dr;

	public feedback_BAL()
	{
        cn = new SqlConnection(ConfigurationManager.ConnectionStrings["con"].ConnectionString);
	}
    public void save(feedback_DAL fdl)
    {
        cn.Open();
        cmd = new SqlCommand("sp_feedback", cn);
        cmd.CommandType = CommandType.StoredProcedure;
        cmd.Parameters.AddWithValue("@flag", fdl.flag);
        cmd.Parameters.AddWithValue("@f_id", fdl.f_id);
        cmd.Parameters.AddWithValue("@name", fdl.name);
        cmd.Parameters.AddWithValue("@email", fdl.email);
        cmd.Parameters.AddWithValue("@subject", fdl.subject);
        cmd.Parameters.AddWithValue("@msg", fdl.msg);
        cmd.ExecuteNonQuery();
        cn.Close();
    }
    public DataSet fetch(feedback_DAL fdl)
    {
        cn.Open();
        cmd = new SqlCommand("sp_feedback", cn);
        cmd.CommandType = CommandType.StoredProcedure;
        cmd.Parameters.AddWithValue("@flag", fdl.flag);
        cmd.Parameters.AddWithValue("@f_id", fdl.f_id);
        adp = new SqlDataAdapter(cmd);
        adp.Fill(ds);
        cn.Close();
        return ds;
    }

}