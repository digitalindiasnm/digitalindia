using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class ambassador_ambassadorProfile : System.Web.UI.Page
{
    ambassador_BAL abl = new ambassador_BAL();
    ambassador_DAL adl = new ambassador_DAL();
    ngo_BAL nbl = new ngo_BAL();
    ngo_DAL ndl = new ngo_DAL();
    DataSet ds = new DataSet();

    protected void Page_Load(object sender, EventArgs e)
    {

        lbluname.Text = Session["name"].ToString();
        if (!IsPostBack)
        {
            bindngo();
            checkDuplicate();
        }
    }
    public void checkDuplicate()
    {
        adl.flag = "selectbyuid";
        adl.u_id = Convert.ToInt32(Session["uid"].ToString());
        ds = abl.fetch(adl);
        if (ds.Tables[0].Rows.Count > 0)
        {

            txtaname.Enabled = false;
            ddlngoname.Enabled = false;
            fup.Enabled = false;
            btnsubmit.Enabled = false;

        }
    }
    public void bindngo()
    {
        ndl.flag="select";
        ddlngoname.DataSource = nbl.fetch(ndl);
        ddlngoname.DataTextField="ngo_name";
        ddlngoname.DataValueField="np_id";
        ddlngoname.DataBind();
        ddlngoname.Items.Insert(0, new ListItem("--Select Ngo--"));
    }
    public void clear()
    {
        txtaname.Text = string.Empty;
        ddlngoname.SelectedValue = null;
    }

    protected void btnsubmit_Click(object sender, EventArgs e)
    {
        //ndl.flag = "selectbyid";
        ////ndl.u_id = Convert.ToInt64(Session["uid"].ToString());
        //ds = nbl.fetch(ndl);
        //if (ds.Tables[0].Rows.Count > 0)
        //{
        //    Session["np_id"] = ds.Tables[0].Rows[0]["np_id"].ToString();
        //}
        fup.SaveAs(Server.MapPath("~/upload/") + fup.FileName);
        adl.flag = "insert";
        adl.u_id = Convert.ToInt64(Session["uid"].ToString());
        adl.a_name = txtaname.Text;
        adl.np_id = Convert.ToInt64(ddlngoname.Text);
        adl.a_pic = "../upload/" + fup.FileName;
        abl.save(adl);
        clear();

    }
}