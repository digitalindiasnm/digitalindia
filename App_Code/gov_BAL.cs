using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

/// <summary>
/// Summary description for gov_BAL
/// </summary>
public class gov_BAL
{
    SqlConnection cn;
    SqlCommand cmd;
    SqlDataAdapter adp;
    DataSet ds = new DataSet();

	public gov_BAL()
	{
        cn = new SqlConnection(ConfigurationManager.ConnectionStrings["con"].ConnectionString);
	}

    public void save(gov_DAL gdl)
    {
        cn.Open();
        cmd = new SqlCommand("sp_goverment", cn);
        cmd.CommandType = CommandType.StoredProcedure;
        cmd.Parameters.AddWithValue("@flag",gdl.flag);
        cmd.Parameters.AddWithValue("@gov_id",gdl.gov_id);
        cmd.Parameters.AddWithValue("@form_no", gdl.form_no);
        cmd.Parameters.AddWithValue("@path", gdl.path);
        cmd.Parameters.AddWithValue("@catagory",gdl.catagory);
        cmd.ExecuteNonQuery();
        cn.Close();
    }

    public DataSet fetch(gov_DAL gdl)
    {
        cn.Open();
        cmd = new SqlCommand("sp_goverment", cn);
        cmd.CommandType = CommandType.StoredProcedure;
        cmd.Parameters.AddWithValue("@flag", gdl.flag);
        cmd.Parameters.AddWithValue("@gov_id", gdl.gov_id);
        cmd.Parameters.AddWithValue("@catagory", gdl.catagory);
        adp = new SqlDataAdapter(cmd);
        adp.Fill(ds);
        cn.Close();
        return ds;
    }
}