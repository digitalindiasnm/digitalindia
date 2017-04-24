using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

/// <summary>
/// Summary description for company_BAL
/// </summary>
public class company_BAL
{
    SqlConnection cn;
    SqlCommand cmd;
    SqlDataAdapter adp;
    DataSet ds = new DataSet();

	public company_BAL()
	{
        cn = new SqlConnection(ConfigurationManager.ConnectionStrings["con"].ConnectionString);
	}

    public void save(company_DAL comdl)
    {
        cn.Open();
        cmd = new SqlCommand("sp_company", cn);
        cmd.CommandType = CommandType.StoredProcedure;
        cmd.Parameters.AddWithValue("@flag", comdl.flag);
        cmd.Parameters.AddWithValue("@cp_id", comdl.cp_id);
        cmd.Parameters.AddWithValue("@u_id", comdl.u_id);
        cmd.Parameters.AddWithValue("@c_name", comdl.c_name);
        cmd.Parameters.AddWithValue("@address", comdl.addr);
        cmd.Parameters.AddWithValue("@dos", comdl.dos);
        cmd.Parameters.AddWithValue("@c_pic", comdl.c_pic);
        cmd.Parameters.AddWithValue("@s_id", comdl.s_id);
        cmd.Parameters.AddWithValue("@c_id", comdl.c_id); ;
        cmd.Parameters.AddWithValue("@l_id", comdl.l_id);
        cmd.Parameters.AddWithValue("@licence_no", comdl.licence);
        cmd.ExecuteNonQuery();
        cn.Close();
    }
    public DataSet fetch(company_DAL comdl)
    {
        cn.Open();
        cmd = new SqlCommand("sp_company", cn);
        cmd.CommandType = CommandType.StoredProcedure;
        cmd.Parameters.AddWithValue("@flag", comdl.flag);
        cmd.Parameters.AddWithValue("@cp_id", comdl.cp_id);
        cmd.Parameters.AddWithValue("@u_id", comdl.u_id);
        adp = new SqlDataAdapter(cmd);
        adp.Fill(ds);
        cn.Close();
        return ds;
    }
}