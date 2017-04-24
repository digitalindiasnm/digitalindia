using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
/// <summary>
/// Summary description for video_BAL
/// </summary>
public class video_BAL
{
    SqlConnection cn;
    SqlCommand cmd;
    SqlDataAdapter adp;
    DataSet ds = new DataSet();
	public video_BAL()
	{
        cn = new SqlConnection(ConfigurationManager.ConnectionStrings["con"].ConnectionString);
	}
    public void save(video_DAL uplodl)
    {
        cn.Open();
        cmd = new SqlCommand("sp_video_admin", cn);
        cmd.CommandType = CommandType.StoredProcedure;
        cmd.Parameters.AddWithValue("@flag", uplodl.flag);
        cmd.Parameters.AddWithValue("@vi_id", uplodl.vi_id);
        cmd.Parameters.AddWithValue("@video", uplodl.video);
        cmd.Parameters.AddWithValue("@vi_desc", uplodl.vi_desc);
        cmd.Parameters.AddWithValue("@vi_title", uplodl.vi_title);
        cmd.ExecuteNonQuery();
        cn.Close();

    }
    public DataSet fetch(video_DAL uplodl)
    {
        cn.Open();
        cmd = new SqlCommand("sp_video_admin", cn);
        cmd.CommandType = CommandType.StoredProcedure;
        cmd.Parameters.AddWithValue("@flag", uplodl.flag);
        cmd.Parameters.AddWithValue("@vi_id", uplodl.vi_id);
        adp = new SqlDataAdapter(cmd);
        adp.Fill(ds);
        cn.Close();
        return ds;
    }
}