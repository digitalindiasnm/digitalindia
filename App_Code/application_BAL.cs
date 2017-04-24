using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
/// <summary>
/// Summary description for application_BAL
/// </summary>
public class application_BAL
{
     SqlConnection cn;
    SqlCommand cmd;
    SqlDataAdapter adp;
    DataSet ds = new DataSet();


	public application_BAL()
	{
        cn=new SqlConnection(ConfigurationManager.ConnectionStrings["con"].ConnectionString);
	}

    public void save(application_DAL uplodl)
    {
        cn.Open();
        cmd = new SqlCommand("sp_applic", cn);
        cmd.CommandType = CommandType.StoredProcedure;
        cmd.Parameters.AddWithValue("@flag", uplodl.flag);
        cmd.Parameters.AddWithValue("@app_id", uplodl.app_id);
        cmd.Parameters.AddWithValue("@app_name", uplodl.app_name);
        cmd.Parameters.AddWithValue("@app_apk", uplodl.app_apk);
        cmd.Parameters.AddWithValue("@app_icon", uplodl.app_icon);
        cmd.Parameters.AddWithValue("@app_desc", uplodl.app_desc);
        cmd.ExecuteNonQuery();
        cn.Close();

    }
    public DataSet fetch(application_DAL uplodl)
    {
        cn.Open();
        cmd = new SqlCommand("sp_applic", cn);
        cmd.CommandType = CommandType.StoredProcedure;
        cmd.Parameters.AddWithValue("@flag",uplodl.flag);
        cmd.Parameters.AddWithValue("@app_id", uplodl.app_id);
        adp = new SqlDataAdapter(cmd);
        adp.Fill(ds);
        cn.Close();
        return ds;
    }
}
