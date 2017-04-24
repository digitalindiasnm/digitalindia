using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;


/// <summary>
/// Summary description for apply_BAL
/// </summary>
public class apply_BAL
{
    SqlConnection cn;
    SqlCommand cmd;
    SqlDataAdapter adp;
    DataSet ds = new DataSet();

	public apply_BAL()
	{
        cn = new SqlConnection(ConfigurationManager.ConnectionStrings["con"].ConnectionString);
	}
    public void save(apply_DAL apdl)
    {
        cn.Open();
        cmd = new SqlCommand("sp_apply", cn);
        cmd.CommandType = CommandType.StoredProcedure;
        cmd.Parameters.AddWithValue("@a_id", apdl.a_id);
        cmd.Parameters.AddWithValue("@flag", apdl.flag);
        cmd.Parameters.AddWithValue("@cp_id", apdl.cp_id);
        cmd.Parameters.AddWithValue("@u_id", apdl.u_id);
        cmd.Parameters.AddWithValue("@cv", apdl.cv);
        cmd.Parameters.AddWithValue("@req_id", apdl.req_id);
        cmd.Parameters.AddWithValue("@descp", apdl.descp);
        cmd.ExecuteNonQuery();
        cn.Close();

    }
    public DataSet fetch(apply_DAL apdl)
    {
        cn.Open();
        cmd = new SqlCommand("sp_apply", cn);
        cmd.CommandType = CommandType.StoredProcedure;
        cmd.Parameters.AddWithValue("@flag", apdl.flag);
        cmd.Parameters.AddWithValue("@a_id", apdl.a_id);
        cmd.Parameters.AddWithValue("@u_id", apdl.u_id);
        adp = new SqlDataAdapter(cmd);
        adp.Fill(ds);
        cn.Close();
        return ds;
    }

}