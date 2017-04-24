using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

/// <summary>
/// Summary description for ngo_BAL
/// </summary>
public class ngo_BAL
{
    SqlConnection cn;
    SqlCommand cmd;
    SqlDataAdapter adp;
    DataSet dt = new DataSet();

	public ngo_BAL()
	{
        cn = new SqlConnection(ConfigurationManager.ConnectionStrings["con"].ConnectionString);
	}

    public void save(ngo_DAL ndl)
    {
        cn.Open();
        cmd = new SqlCommand("sp_ngo", cn);
        cmd.CommandType = CommandType.StoredProcedure;
        cmd.Parameters.AddWithValue("@flag", ndl.flag);
        cmd.Parameters.AddWithValue("@np_id", ndl.np_id);
        cmd.Parameters.AddWithValue("@ngo_name", ndl.ngo_name);
        cmd.Parameters.AddWithValue("@address", ndl.address);
        cmd.Parameters.AddWithValue("@n_pic", ndl.n_pic);
        cmd.Parameters.AddWithValue("@u_id",ndl.u_id);
        cmd.Parameters.AddWithValue("@s_id", ndl.s_id);
        cmd.Parameters.AddWithValue("@c_id", ndl.c_id);
        cmd.Parameters.AddWithValue("@l_id", ndl.l_id);
        cmd.Parameters.AddWithValue("@description", ndl.description);

        cmd.ExecuteNonQuery();
        cn.Close();

    }

    public DataSet fetch(ngo_DAL ndl)
    {
        cn.Open();
        cmd = new SqlCommand("sp_ngo", cn);
        cmd.CommandType = CommandType.StoredProcedure;
        cmd.Parameters.AddWithValue("@flag", ndl.flag);
        cmd.Parameters.AddWithValue("@np_id", ndl.np_id);
        cmd.Parameters.AddWithValue("@u_id", ndl.u_id);
        adp = new SqlDataAdapter(cmd);
        adp.Fill(dt);
        cn.Close();
        return dt;
    }
}