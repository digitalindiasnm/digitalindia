using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class admin_Index : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnlogin_Click(object sender, EventArgs e)
    {
        if (txtuname.Text == "admin" && txtpass.Text == "admin")
        {
            Response.Redirect("~/admin/main.aspx");
        }

        else
        {
            Label1.Text = "Id or Password Does not Match.";
        }
    }
}