using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;


public class state_BAL
{
    SqlConnection cn;
    SqlCommand cmd;
    SqlDataAdapter adp;
    DataSet ds = new DataSet();

	public state_BAL()
	{
        cn = new SqlConnection(ConfigurationManager.ConnectionStrings["con"].ConnectionString);
    }

        public void save(state_DAL sdl)
        {
            cn.Open();
            cmd = new SqlCommand("sp_State",cn);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@flag",sdl.flag);
            cmd.Parameters.AddWithValue("@s_id",sdl.s_id);
            cmd.Parameters.AddWithValue("@s_name",sdl.s_name);
            cmd.ExecuteNonQuery();
            cn.Close();

        }
        public DataSet fetch(state_DAL sdl)
        {
            cn.Open();
            cmd = new SqlCommand("sp_State", cn);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@flag", sdl.flag);
            cmd.Parameters.AddWithValue("@s_id", sdl.s_id);
            adp = new SqlDataAdapter(cmd);
            adp.Fill(ds);
            cn.Close();
            return ds;
        }
    }
