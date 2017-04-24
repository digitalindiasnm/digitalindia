using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

/// <summary>
/// 
/// Summary description for userprofile_BAL
/// </summary>
public class userprofile_BAL
{
    SqlConnection cn;
    SqlCommand cmd;
    SqlDataAdapter adp;
    DataSet ds = new DataSet();

	public userprofile_BAL()
	{
        cn = new SqlConnection(ConfigurationManager.ConnectionStrings["con"].ConnectionString);
	}

    public void save(userprofile_DAL updl)
    {
        cn.Open();
        cmd = new SqlCommand("sp_userProfile", cn);
        cmd.CommandType = CommandType.StoredProcedure;
        cmd.Parameters.AddWithValue("@flag",updl.flag);
        cmd.Parameters.AddWithValue("@up_id", updl.up_id);
        cmd.Parameters.AddWithValue("@u_id", updl.u_id);
        cmd.Parameters.AddWithValue("@address", updl.address);
        cmd.Parameters.AddWithValue("@gender", updl.gender);
        cmd.Parameters.AddWithValue("@dob", updl.dob);
        cmd.Parameters.AddWithValue("@u_pic", updl.u_pic);
        cmd.Parameters.AddWithValue("@s_id", updl.s_id);
        cmd.Parameters.AddWithValue("@c_id", updl.c_id);
        cmd.Parameters.AddWithValue("@l_id", updl.l_id);
        cmd.Parameters.Add("@lid", SqlDbType.Int).Direction = ParameterDirection.Output;
        cmd.ExecuteNonQuery();
        updl.lid = Convert.ToInt32(cmd.Parameters["@lid"].Value);
        cn.Close();
    }
    public DataSet fetch(userprofile_DAL updl)
    {
        cn.Open();
        cmd = new SqlCommand("sp_userProfile", cn);
        cmd.CommandType = CommandType.StoredProcedure;
        cmd.Parameters.AddWithValue("@flag", updl.flag);
        cmd.Parameters.AddWithValue("@up_id", updl.up_id);
        cmd.Parameters.AddWithValue("@u_id", updl.u_id);
        cmd.Parameters.Add("@lid", SqlDbType.Int).Direction = ParameterDirection.Output;
        adp = new SqlDataAdapter(cmd);
        adp.Fill(ds);
        cn.Close();
        return ds;
    }
}