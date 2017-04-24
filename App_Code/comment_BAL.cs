using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

/// <summary>
/// Summary description for comment_BAL
/// </summary>
public class comment_BAL
{
    SqlConnection cn;
    SqlCommand cmd;
    SqlDataAdapter adp;
    DataSet ds = new DataSet();

	public comment_BAL()
	{
		cn = new SqlConnection(ConfigurationManager.ConnectionStrings["con"].ConnectionString);
	}

    public void save(comment_DAL cmtdl)
    {
        cn.Open();
        cmd = new SqlCommand("sp_cmt", cn);
        cmd.CommandType = CommandType.StoredProcedure;
        cmd.Parameters.AddWithValue("@flag", cmtdl.flag);
        cmd.Parameters.AddWithValue("@cmt_id", cmtdl.cmt_id);
        cmd.Parameters.AddWithValue("@uplo_id", cmtdl.uplo_id);
        cmd.Parameters.AddWithValue("@u_id", cmtdl.u_id);
        cmd.Parameters.AddWithValue("@comment", cmtdl.comment);
        cmd.ExecuteNonQuery();
        cn.Close();
    }

    public DataSet fetch(comment_DAL cmtdl)
    {
        cn.Open();
        cmd = new SqlCommand("sp_cmt", cn);
        cmd.CommandType = CommandType.StoredProcedure;
        cmd.Parameters.AddWithValue("@flag", cmtdl.flag);
        cmd.Parameters.AddWithValue("@cmt_id", cmtdl.cmt_id);
        cmd.Parameters.AddWithValue("@uplo_id", cmtdl.uplo_id);
        cmd.Parameters.AddWithValue("@u_id", cmtdl.u_id);
        adp = new SqlDataAdapter(cmd);
        adp.Fill(ds);
        cn.Close();
        return ds;
    }
}