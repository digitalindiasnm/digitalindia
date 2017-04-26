using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class ngo_women : System.Web.UI.Page
{
    women_BAL wbl = new women_BAL();
    women_DAL wdl = new women_DAL();
    protected void Page_Load(object sender, EventArgs e)
    {
        lbluname.Text = Session["name"].ToString();
        if (!IsPostBack)
        {
            bindgrid();
        }
    }
    public void bindgrid()
    {
        wdl.flag = "select";
        wdl.u_id = Convert.ToInt32(Session["uid"]);
        GridView1.DataSource = wbl.fetch(wdl);
        GridView1.DataBind();

    }

    protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        if (e.CommandName == "add")
        {
            int index = Convert.ToInt32(e.CommandArgument);
            GridViewRow gr = GridView1.Rows[index];
            wdl.flag = "update";
            wdl.advice = ((TextBox)gr.FindControl("txtadvice")).Text;
            wdl.u_id = Convert.ToInt64(((Label)gr.FindControl("lbluid")).Text);
            wdl.w_id = Convert.ToInt64(((Label)gr.FindControl("lblwid")).Text);
            wbl.save(wdl);

            bindgrid();
        }
    }
   
}