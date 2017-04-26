using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class user_women : System.Web.UI.Page
{
    women_BAL wbl = new women_BAL();
    women_DAL wdl = new women_DAL();
    ngo_BAL nbl = new ngo_BAL();
    ngo_DAL ndl = new ngo_DAL();
    event_DAL edl = new event_DAL();
    event_BAL ebl = new event_BAL();
    protected void Page_Load(object sender, EventArgs e)
    {
        lbluname.Text = Session["name"].ToString();
        if (!IsPostBack)
        {
            bindngo();
            bind();
        }
    }
    //protected void btnsearch_Click(object sender, EventArgs e)
    //{
    //    //Session["des"] = txtdes.Text;
    //    //Session["skill"] = txtskill.Text;
    //    //Response.Redirect("Search.aspx");
    //}
    public void bind()
    {
        edl.flag = "selectall";
        DataList2.DataSource = ebl.fetch(edl);
        DataList2.DataBind();

    }
    protected void DataList2_ItemCommand(object source, DataListCommandEventArgs e)
    {
        if (e.CommandName == "view")
        {
            Session["e_id"] = ((Label)DataList2.Items[e.Item.ItemIndex].FindControl("Label1")).Text;
            Response.Redirect("eventshow.aspx");
        }
    }

    public void clear()
    {
        txtcmp.Text = string.Empty;
        ddlngo.SelectedValue = null;
    }
    public void bindngo()
    {
        ndl.flag = "select";
        ddlngo.DataSource = nbl.fetch(ndl);
        ddlngo.DataTextField = "ngo_name";
        ddlngo.DataValueField = "np_id";
        ddlngo.DataBind();
        ddlngo.Items.Insert(0, new ListItem("--Select Ngo--"));
    }

    protected void btnsubmit_Click(object sender, EventArgs e)
    {
        wdl.flag = "insert";
        wdl.u_id = Convert.ToInt32(Session["uid"].ToString());
        wdl.complain = txtcmp.Text;
        wdl.ngo_id = Convert.ToInt64(ddlngo.Text);
        wbl.save(wdl);
        clear();
        
    }
}