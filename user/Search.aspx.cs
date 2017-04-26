using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class user_Search : System.Web.UI.Page
{
    requirement_BAL rbl = new requirement_BAL();
    requirement_DAL rdl = new requirement_DAL();
    DataSet ds = new DataSet();

    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            bindList();
        }
    }

    public void bindList()
    {
        if (Session["des"] != "" && Session["skill"] == "")
        {
            rdl.flag = "search";
            rdl.job_title = Session["des"].ToString();
            rdl.quali = "";
            ds = rbl.fetch(rdl);
            DataTable dt = new DataTable();
            dt.Columns.Add("req_id");
            dt.Columns.Add("u_id");
            dt.Columns.Add("job_title");
            dt.Columns.Add("quali");
            dt.Columns.Add("exper");
            dt.Columns.Add("sal_package");
            dt.Columns.Add("c_name");
            dt.Columns.Add("address");
            dt.Columns.Add("c_pic");
            for (int i = 0; i < ds.Tables.Count; i++)
            {
                if (i % 2 != 0)
                {
                    if (ds.Tables[i].Rows.Count > 0)
                    {
                        DataRow dr = dt.NewRow();
                        dr["req_id"] = ds.Tables[i].Rows[0]["req_id"].ToString();
                        dr["u_id"] = ds.Tables[i].Rows[0]["u_id"].ToString();
                        dr["job_title"] = ds.Tables[i].Rows[0]["job_title"].ToString();
                        dr["quali"] = ds.Tables[i].Rows[0]["quali"].ToString();
                        dr["exper"] = ds.Tables[i].Rows[0]["exper"].ToString();
                        dr["sal_package"] = ds.Tables[i].Rows[0]["sal_package"].ToString();
                        dr["c_name"] = ds.Tables[i].Rows[0]["c_name"].ToString();
                        dr["address"] = ds.Tables[i].Rows[0]["address"].ToString();
                        dr["c_pic"] = ds.Tables[i].Rows[0]["c_pic"].ToString();
                        dt.Rows.Add(dr);
                    }
                }
            }
            DataList1.DataSource = dt;
            DataList1.DataBind();
        }
        if (Session["des"] == "" && Session["skill"] != "")
        {
            rdl.flag = "search";
            rdl.quali = Session["skill"].ToString();
            ds = rbl.fetch(rdl);
            DataTable dt = new DataTable();
            dt.Columns.Add("req_id");
            dt.Columns.Add("u_id");
            dt.Columns.Add("job_title");
            dt.Columns.Add("quali");
            dt.Columns.Add("exper");
            dt.Columns.Add("sal_package");
            dt.Columns.Add("c_name");
            dt.Columns.Add("address");
            dt.Columns.Add("c_pic");
            for (int i = 0; i < ds.Tables.Count; i++)
            {
                if (i % 2 != 0)
                {
                    if (ds.Tables[i].Rows.Count > 0)
                    {
                        DataRow dr = dt.NewRow();
                        dr["req_id"] = ds.Tables[i].Rows[0]["req_id"].ToString();
                        dr["u_id"] = ds.Tables[i].Rows[0]["u_id"].ToString();
                        dr["job_title"] = ds.Tables[i].Rows[0]["job_title"].ToString();
                        dr["quali"] = ds.Tables[i].Rows[0]["quali"].ToString();
                        dr["exper"] = ds.Tables[i].Rows[0]["exper"].ToString();
                        dr["sal_package"] = ds.Tables[i].Rows[0]["sal_package"].ToString();
                        dr["c_name"] = ds.Tables[i].Rows[0]["c_name"].ToString();
                        dr["address"] = ds.Tables[i].Rows[0]["address"].ToString();
                        dr["c_pic"] = ds.Tables[i].Rows[0]["c_pic"].ToString();
                        dt.Rows.Add(dr);
                    }
                }
            }
            DataList1.DataSource = dt;
            DataList1.DataBind();
        }
        if (Session["des"] != "" && Session["skill"] != "")
        {
            rdl.flag = "search";
            rdl.job_title = Session["des"].ToString();
            rdl.quali = Session["skill"].ToString();
            ds = rbl.fetch(rdl);
            DataTable dt = new DataTable();
            dt.Columns.Add("req_id");
            dt.Columns.Add("u_id");
            dt.Columns.Add("job_title");
            dt.Columns.Add("quali");
            dt.Columns.Add("exper");
            dt.Columns.Add("sal_package");
            dt.Columns.Add("c_name");
            dt.Columns.Add("address");
            dt.Columns.Add("c_pic");
            for (int i = 0; i < ds.Tables.Count; i++)
            {
                if (i % 2 != 0)
                {
                    if (ds.Tables[i].Rows.Count > 0)
                    {
                        DataRow dr = dt.NewRow();
                        dr["req_id"] = ds.Tables[i].Rows[0]["req_id"].ToString();
                        dr["u_id"] = ds.Tables[i].Rows[0]["u_id"].ToString();
                        dr["job_title"] = ds.Tables[i].Rows[0]["job_title"].ToString();
                        dr["quali"] = ds.Tables[i].Rows[0]["quali"].ToString();
                        dr["exper"] = ds.Tables[i].Rows[0]["exper"].ToString();
                        dr["sal_package"] = ds.Tables[i].Rows[0]["sal_package"].ToString();
                        dr["c_name"] = ds.Tables[i].Rows[0]["c_name"].ToString();
                        dr["address"] = ds.Tables[i].Rows[0]["address"].ToString();
                        dr["c_pic"] = ds.Tables[i].Rows[0]["c_pic"].ToString();
                        dt.Rows.Add(dr);
                    }
                }
            }
            DataList1.DataSource = dt;
            DataList1.DataBind();
        }
    }
}