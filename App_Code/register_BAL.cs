using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;


/// <summary>
/// Summary description for register_BAL
/// </summary>
public class register_BAL
{
    SqlConnection cn;
    SqlCommand cmd;
    SqlDataAdapter adp;
    DataSet ds = new DataSet();

	public register_BAL()
	{
        cn = new SqlConnection(ConfigurationManager.ConnectionStrings["con"].ConnectionString);
	}
    public void save(register_DAL rdl)
    {
        cn.Open();
        cmd = new SqlCommand("sp_registration", cn);
        cmd.CommandType = CommandType.StoredProcedure;
        cmd.Parameters.AddWithValue("@flag", rdl.flag);
        cmd.Parameters.AddWithValue("@u_id", rdl.uid);
        cmd.Parameters.AddWithValue("@name", rdl.name);
        cmd.Parameters.AddWithValue("@email_id", rdl.email);
        cmd.Parameters.AddWithValue("@password", rdl.password);
        cmd.Parameters.AddWithValue("@contact_no", rdl.contact);
        cmd.Parameters.AddWithValue("@user_type", rdl.user_type);
        cmd.Parameters.AddWithValue("@status", rdl.status);
        cmd.ExecuteNonQuery();
        cn.Close();

    }
    public DataSet fetch(register_DAL rdl)
    {
        cn.Open();
        cmd = new SqlCommand("sp_registration", cn);
        cmd.CommandType = CommandType.StoredProcedure;
        cmd.Parameters.AddWithValue("@flag", rdl.flag);
        cmd.Parameters.AddWithValue("@u_id", rdl.uid);
        cmd.Parameters.AddWithValue("@email_id", rdl.email);
        cmd.Parameters.AddWithValue("@password", rdl.password);
        cmd.Parameters.AddWithValue("@user_type", rdl.user_type);
       // cmd.Parameters.AddWithValue("@status", rdl.status);
        adp = new SqlDataAdapter(cmd);
        adp.Fill(ds);
        cn.Close();
        return ds;
    }
}