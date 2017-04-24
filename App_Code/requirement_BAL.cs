using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

/// <summary>
/// Summary description for requirement_BAL
/// </summary>
public class requirement_BAL
{
    SqlConnection cn;
    SqlCommand cmd;
    SqlDataAdapter adp;
    DataSet ds = new DataSet();
    DataTable dt = new DataTable();

	public requirement_BAL()
	{
		cn = new SqlConnection(ConfigurationManager.ConnectionStrings["con"].ConnectionString);
	}

    public void save(requirement_DAL reqdl)
    {
        cn.Open();
        cmd = new SqlCommand("sp_requirement", cn);
        cmd.CommandType = CommandType.StoredProcedure;
        cmd.Parameters.AddWithValue("@flag", reqdl.flag);
        cmd.Parameters.AddWithValue("@req_id", reqdl.reqid);
        cmd.Parameters.AddWithValue("@u_id", reqdl.uid);
        cmd.Parameters.AddWithValue("@job_title", reqdl.job_title);
        cmd.Parameters.AddWithValue("@quali", reqdl.quali);
        cmd.Parameters.AddWithValue("@exper", reqdl.expr);
        cmd.Parameters.AddWithValue("@j_desc", reqdl.j_desc);
        cmd.Parameters.AddWithValue("@no_vacan", reqdl.no_vacan);
        cmd.Parameters.AddWithValue("@sal_package", reqdl.sal_pack);
        cmd.ExecuteNonQuery();
        cn.Close();
    }
    public DataSet fetch(requirement_DAL reqdl)
    {
        cn.Open();
        cmd = new SqlCommand("sp_requirement", cn);
        cmd.CommandType = CommandType.StoredProcedure;
        cmd.Parameters.AddWithValue("@flag", reqdl.flag);
        cmd.Parameters.AddWithValue("@req_id", reqdl.reqid);
        cmd.Parameters.AddWithValue("@u_id", reqdl.uid);
        cmd.Parameters.AddWithValue("@job_title", reqdl.job_title);
        cmd.Parameters.AddWithValue("@quali", reqdl.quali);
        adp = new SqlDataAdapter(cmd);
        ds.Clear();
        adp.Fill(ds);
        cn.Close();
        return ds;
    }


}