using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

/// <summary>
/// Summary description for catagory_BAL
/// </summary>
public class catagory_BAL
{
    SqlConnection cn;
    SqlCommand cmd;
    SqlDataAdapter adp;
    DataSet ds = new DataSet();

	public catagory_BAL()
	{
        cn = new SqlConnection(ConfigurationManager.ConnectionStrings["con"].ConnectionString);
	}
    public void save(catagory_DAL cadl)
    {
        cn.Open();
        cmd = new SqlCommand("sp_catagory", cn);
        cmd.CommandType = CommandType.StoredProcedure;
        cmd.Parameters.AddWithValue("@flag", cadl.flag);
        cmd.Parameters.AddWithValue("@cat_id", cadl.cat_id);
        cmd.Parameters.AddWithValue("@cat_name", cadl.cat_name);
        cmd.ExecuteNonQuery();
        cn.Close();

    }
    public DataSet fetch(catagory_DAL cadl)
    {
        cn.Open();
        cmd = new SqlCommand("sp_catagory", cn);
        cmd.CommandType = CommandType.StoredProcedure;
        cmd.Parameters.AddWithValue("@flag", cadl.flag);
        cmd.Parameters.AddWithValue("@cat_id", cadl.cat_id);
        adp = new SqlDataAdapter(cmd);
        adp.Fill(ds);
        cn.Close();
        return ds;
    }
}