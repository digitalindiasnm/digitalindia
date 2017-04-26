using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class user_cdetails : System.Web.UI.Page
{
    company_BAL cbal = new company_BAL();
    company_DAL cdal = new company_DAL();
    requirement_BAL rbal = new requirement_BAL();
    requirement_DAL rdal = new requirement_DAL();

    protected void Page_Load(object sender, EventArgs e)
    {
        lbluname.Text = Session["name"].ToString();
        if(!IsPostBack)
        {
            bindData();
        }
    }
    public void bindData()
    {
        rdal.flag = "selectbyCID";      
        rdal.uid = Convert.ToInt32(Session["u_id"]);
        rdal.reqid = Convert.ToInt32(Session["reqid"]);
        DetailsView1.DataSource = rbal.fetch(rdal);
        DetailsView1.DataBind();
    }
    //protected void btnsearch_Click(object sender, EventArgs e)
    //{
    //    Session["des"] = txtdes.Text;
    //    Session["skill"] = txtskill.Text;
    //    Response.Redirect("");
    //}
    protected void DetailsView1_ItemCommand(object sender, DetailsViewCommandEventArgs e)
    {
        Session["cpid"] = ((Label)DetailsView1.Rows[0].FindControl("lblcpid")).Text;
        Response.Redirect("apply.aspx");
    }
}