using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

/// <summary>
/// Summary description for upload_BAL
/// </summary>
public class upload_BAL
{
    SqlConnection cn;
    SqlCommand cmd;
    SqlDataAdapter adp;
    DataSet ds = new DataSet();

	public upload_BAL()
	{
        cn=new SqlConnection(ConfigurationManager.ConnectionStrings["con"].ConnectionString);
	}

    public void save(upload_DAL uplodl)
    {
        cn.Open();
        cmd = new SqlCommand("sp_upload", cn);
        cmd.CommandType = CommandType.StoredProcedure;
        cmd.Parameters.AddWithValue("@flag", uplodl.flag);
        cmd.Parameters.AddWithValue("@uplo_id", uplodl.uplo_id);
        cmd.Parameters.AddWithValue("@u_id", uplodl.u_id);
        cmd.Parameters.AddWithValue("@uplo_pic", uplodl.uplo_pic);
        cmd.Parameters.AddWithValue("@uplo_video", uplodl.uplo_video);
        cmd.Parameters.AddWithValue("@description", uplodl.description);
        
        cmd.ExecuteNonQuery();
        cn.Close();

    }
    public DataSet fetch(upload_DAL uplodl)
    {
        cn.Open();
        cmd = new SqlCommand("sp_upload", cn);
        cmd.CommandType = CommandType.StoredProcedure;
        cmd.Parameters.AddWithValue("@flag",uplodl.flag);
        cmd.Parameters.AddWithValue("@uplo_id", uplodl.uplo_id);
        cmd.Parameters.AddWithValue("@u_id", uplodl.u_id);
        adp = new SqlDataAdapter(cmd);
        adp.Fill(ds);
        cn.Close();
        return ds;
    }
}