using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class index : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void lnkuser_Click(object sender, EventArgs e)
    {
        Session["UserType"] = "User";
        Response.Redirect("Login.aspx");
    }
    protected void lnkngo_Click(object sender, EventArgs e)
    {
        Session["UserType"] = "NGO";
        Response.Redirect("Login.aspx");
    }
    protected void lnkgov_Click(object sender, EventArgs e)
    {
        Session["UserType"] = "Government";
        Response.Redirect("Login.aspx");
    }
    protected void lnkambassador_Click(object sender, EventArgs e)
    {
        Session["UserType"] = "Ambassador";
        Response.Redirect("Login.aspx");
    }
    protected void lnkcompany_Click(object sender, EventArgs e)
    {
        Session["UserType"] = "Company";
        Response.Redirect("Login.aspx");
    }
}
