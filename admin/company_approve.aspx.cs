using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class admin_company_approve : System.Web.UI.Page
{
    register_BAL rbl = new register_BAL();
    register_DAL rdl = new register_DAL();
    protected void Page_Load(object sender, EventArgs e)
    {
     if (!IsPostBack)
        {
            bindgrid();
        }
    }
    public void bindgrid()
    {
        rdl.flag = "selectAdmin";
        rdl.user_type = "Company";
        rdl.uid= Convert.ToInt32(Session["uid"]);
        GridView1.DataSource = rbl.fetch(rdl);
        GridView1.DataBind();

    }
    
    protected void GridView1_RowCommand1(object sender, GridViewCommandEventArgs e)
    {
        if (e.CommandName == "Approve")
        {
            int index = Convert.ToInt32(e.CommandArgument);
            GridViewRow gr = GridView1.Rows[index];
            rdl.flag = "updatestatus";
            rdl.status = "Approve";
            rdl.uid = Convert.ToInt64(((Label)gr.FindControl("lbluid")).Text);
            rbl.save(rdl);

            bindgrid();
        }
    }
}