using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;


/// <summary>
/// Summary description for scan_BAL
/// </summary>
public class scan_BAL
{

    SqlConnection cn;
    SqlCommand cmd;
    SqlDataAdapter adp;
    DataSet ds = new DataSet();

	public scan_BAL()
	{
        cn = new SqlConnection(ConfigurationManager.ConnectionStrings["con"].ConnectionString);
    }

    public void save(scan_DAL sdl)
    {
        cn.Open();
        cmd = new SqlCommand("sp_scan", cn);
        cmd.CommandType = CommandType.StoredProcedure;
        cmd.Parameters.AddWithValue("@flag", sdl.flag);
        cmd.Parameters.AddWithValue("@u_id", sdl.u_id);
        cmd.Parameters.AddWithValue("@path", sdl.path);
        cmd.Parameters.AddWithValue("@form_no", sdl.form_no);
        cmd.Parameters.AddWithValue("@status", sdl.status);
        
        cmd.ExecuteNonQuery();
        cn.Close();

    }
    public DataSet fetch(scan_DAL sdl)
    {
        cn.Open();
        cmd = new SqlCommand("sp_scan", cn);
        cmd.CommandType = CommandType.StoredProcedure;
        cmd.Parameters.AddWithValue("@flag", sdl.flag);
        cmd.Parameters.AddWithValue("@scan_id", sdl.scan_id);
        cmd.Parameters.AddWithValue("@u_id", sdl.u_id);
        adp = new SqlDataAdapter(cmd);
        adp.Fill(ds);
        cn.Close();
        return ds;
    }
}