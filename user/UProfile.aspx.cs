using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class user_UProfile : System.Web.UI.Page
{
    event_DAL edl = new event_DAL();
    event_BAL ebl = new event_BAL();
    userprofile_BAL upbl = new userprofile_BAL();
    userprofile_DAL updl = new userprofile_DAL();
    userquali_BAL uqbl = new userquali_BAL();
    userquali_DAL uqdl = new userquali_DAL();
    state_BAL sbl = new state_BAL();
    state_DAL sdl = new state_DAL();
    city_BAL cbl = new city_BAL();
    city_DAL cdl = new city_DAL();
    location_BAL lbl = new location_BAL();
    location_DAL ldl = new location_DAL();
    DataSet ds = new DataSet();

    protected void Page_Load(object sender, EventArgs e)
    {
        lbluname.Text = Session["name"].ToString();
        MultiView1.ActiveViewIndex = 0;
        if (!IsPostBack)
        {
            bindstate();
           // ddlstate.Items.Insert(0, new ListItem("--Select State--"));
            bind();
            checkDuplicate();
            CalendarExtender1.StartDate = DateTime.Now.AddYears(-25);
            CalendarExtender1.EndDate = System.DateTime.Now;
        }
    }

    public void checkDuplicate()
    {
        updl.flag = "selectbyuid";
        updl.u_id = Convert.ToInt32(Session["uid"].ToString());
        ds = upbl.fetch(updl);
        if (ds.Tables[0].Rows.Count > 0)
        {
            txtaddr.Enabled = false;
            txtdiplo.Enabled = false;
            txtdob.Enabled = false;
            txtgra.Enabled = false;
            txthsc.Enabled = false;
            txtpogra.Enabled = false;
            txtssc.Enabled = false;
            ddlcity.Enabled = false;
            ddlstate.Enabled = false;
            ddllocation.Enabled = false;
            rbtngen.Enabled = false;
            fup.Enabled = false;
            btnsubmit.Enabled = false;
           // txtssc.Text = ds.Tables[0].Rows[0]["name"].ToString();
        }
    }
    //protected void LinkButton1_Click(object sender, EventArgs e)
    //{
    //    MultiView1.ActiveViewIndex = 0;
    //}
    //protected void LinkButton2_Click(object sender, EventArgs e)
    //{
    //    MultiView1.ActiveViewIndex = 1;
    //}
   

    public void bindstate()
    {
        sdl.flag = "select";
        ddlstate.DataSource = sbl.fetch(sdl);
        ddlstate.DataTextField = "s_name";
        ddlstate.DataValueField = "s_id";
        ddlstate.DataBind();
       ddlstate.Items.Insert(0, new ListItem("--Select State--"));
    }
    public void bindcity()
    {
        cdl.flag = "select";
        cdl.s_id = Convert.ToInt32(ddlstate.SelectedValue);
        ddlcity.DataSource = cbl.fetch(cdl);
        ddlcity.DataTextField = "c_name";
        ddlcity.DataValueField = "c_id";
        ddlcity.DataBind();
        ddlcity.Items.Insert(0, new ListItem("--Select City--"));
    }
    public void bindlocation()
    {
        ldl.flag = "select";
        ldl.c_id = Convert.ToInt32(ddlcity.SelectedValue);
        ddllocation.DataSource = lbl.fetch(ldl);
        ddllocation.DataTextField = "l_name";
        ddllocation.DataValueField = "l_id";
        ddllocation.DataBind();
        ddllocation.Items.Insert(0, new ListItem("--Select Location--"));
    }

    public void clear()
    {
        txtaddr.Text = string.Empty;
        rbtngen.SelectedValue = null;
        txtdob.Text = string.Empty;
        ddlstate.SelectedValue = null;
        ddlcity.SelectedValue = null;
        ddllocation.SelectedValue = null;

        txthsc.Text = string.Empty;
        txtssc.Text = string.Empty;
        txtdiplo.Text = string.Empty;
        txtgra.Text = string.Empty;
        txtpogra.Text = string.Empty;
    }

    protected void btnsubmit_Click(object sender, EventArgs e)
    {

        fup.SaveAs(Server.MapPath("~/upload/") + fup.FileName);
        updl.flag = "insert";
        updl.u_id = Convert.ToInt32(Session["uid"].ToString());
        updl.address = txtaddr.Text;
        updl.gender = rbtngen.SelectedItem.ToString();
        updl.dob = Convert.ToDateTime(txtdob.Text);
        updl.u_pic = "../upload/" + fup.FileName;
        updl.s_id = Convert.ToInt32(ddlstate.SelectedValue);
        updl.c_id = Convert.ToInt32(ddlcity.SelectedValue);
        updl.l_id = Convert.ToInt32(ddllocation.SelectedValue);
        upbl.save(updl);
        Session["up_id"] = updl.lid;
        MultiView1.ActiveViewIndex = 1;
        

    }
    protected void ddlstate_SelectedIndexChanged(object sender, EventArgs e)
    {
        bindcity();
    }
    protected void ddlcity_SelectedIndexChanged(object sender, EventArgs e)
    {
        bindlocation();
    }
    protected void btnsubm_Click(object sender, EventArgs e)
    {
    //    updl.flag = "selectbyuid";
    ////    updl.u_id = Convert.ToInt32(Session["uid"].ToString());
    //    ds = upbl.fetch(updl);
    //    if (ds.Tables[0].Rows.Count > 0)
    //    {
    //        Session["up_id"] = ds.Tables[0].Rows[0]["up_id"].ToString();
    //    }
        uqdl.flag = "insert";
     uqdl.up_id = Convert.ToInt32(Session["up_id"].ToString());
        uqdl.ssc = txtssc.Text;
        uqdl.hsc = txthsc.Text;
        uqdl.graduation = txtgra.Text;
        uqdl.post_graduation = txtpogra.Text;
        uqdl.diploma = txtdiplo.Text;
        uqbl.save(uqdl);
        clear();
    }
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
}