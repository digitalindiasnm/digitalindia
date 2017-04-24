using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class Default2 : System.Web.UI.Page
{
    register_BAL rbl = new register_BAL();
    register_DAL rdl = new register_DAL();
    DataSet ds = new DataSet();

    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        Response.Redirect("newuser.aspx");
    }
    protected void btnLogin_Click(object sender, EventArgs e)
    {
        if (Session["UserType"].ToString() == "User")
        {
            rdl.flag = "login";
            rdl.email = txtusername.Text;
            rdl.password = txtpass.Text;
            rdl.user_type = Session["UserType"].ToString();
            ds = rbl.fetch(rdl);
           
            if (ds.Tables[0].Rows.Count > 0)
            {
                Session["uid"] = ds.Tables[0].Rows[0]["u_id"].ToString();
                Session["name"] = ds.Tables[0].Rows[0]["name"].ToString();
                System.Web.HttpContext.Current.Response.Write("<script language=\"JavaScript\">alert(\"write here what you want\")</script>");
                Response.Redirect("~/user/User.aspx");
               
            }
        }
        if (Session["UserType"].ToString() == "NGO")
        {

            rdl.flag = "loginStatus";
            rdl.email = txtusername.Text;
            rdl.password = txtpass.Text;
            rdl.user_type = Session["UserType"].ToString();
            ds = rbl.fetch(rdl);
            if (ds.Tables[0].Rows.Count > 0)
            {
                Session["uid"] = ds.Tables[0].Rows[0]["u_id"].ToString();
                Session["name"] = ds.Tables[0].Rows[0]["name"].ToString();
                Response.Redirect("~/ngo/index_ngo.aspx");
            }
            else
            {
                string str = "You are not Authorized User.";
                ScriptManager.RegisterStartupScript(this, typeof(Page), "Alert", "<script>alert('" + str + "');</script>", false);
            }
        }

        if (Session["UserType"].ToString() == "Government")
        {
            rdl.flag = "login";
            rdl.email = txtusername.Text;
            rdl.password = txtpass.Text;
            rdl.user_type = Session["UserType"].ToString();
            ds = rbl.fetch(rdl);
            if (ds.Tables[0].Rows.Count > 0)
            {
                Session["uid"] = ds.Tables[0].Rows[0]["u_id"].ToString();
                Session["name"] = ds.Tables[0].Rows[0]["name"].ToString();
                Response.Redirect("~/government/index_gov.aspx");
            }
        }
        if (Session["UserType"].ToString() == "Ambassador")
        {
            rdl.flag = "loginStatus";
            rdl.email = txtusername.Text;
            rdl.password = txtpass.Text;
            rdl.user_type = Session["UserType"].ToString();
            ds = rbl.fetch(rdl);
            if (ds.Tables[0].Rows.Count > 0)
            {
                Session["uid"] = ds.Tables[0].Rows[0]["u_id"].ToString();
                Session["name"] = ds.Tables[0].Rows[0]["name"].ToString();
                Response.Redirect("~/ambassador/index_ambassador.aspx");
            }
            else
            {
                string str = "You are not Authorized User.";
                ScriptManager.RegisterStartupScript(this, typeof(Page), "Alert", "<script>alert('" + str + "');</script>", false);
            }
        }
        if (Session["UserType"].ToString() == "Company")
        {
            rdl.flag = "loginStatus";
            rdl.email = txtusername.Text;
            rdl.password = txtpass.Text;
            rdl.user_type = Session["UserType"].ToString();
            ds = rbl.fetch(rdl);
            if (ds.Tables[0].Rows.Count > 0)
            {
                Session["uid"] = ds.Tables[0].Rows[0]["u_id"].ToString();
                Session["name"] = ds.Tables[0].Rows[0]["name"].ToString();
                Response.Redirect("~/company/index_company.aspx");
            }
            else
            {
                string str = "You are not Authorized User.";
                ScriptManager.RegisterStartupScript(this, typeof(Page), "Alert", "<script>alert('" + str + "');</script>", false);
            }
        }
                    
    }
    
    
}