using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class ngo_ngoProfile : System.Web.UI.Page
{

    ngo_BAL nbal = new ngo_BAL();
    ngo_DAL ndal = new ngo_DAL();
    state_BAL sbl = new state_BAL();
    state_DAL sdl = new state_DAL();
    city_BAL cbl = new city_BAL();
    city_DAL cdl = new city_DAL();
    location_BAL lbl = new location_BAL();
    location_DAL ldl = new location_DAL();
    DataSet ds = new DataSet();

    protected void Page_Load(object sender, EventArgs e)
    {
        //if (!Directory.Exists(Server.MapPath("upload")))
        //{
        //    Directory.CreateDirectory(Server.MapPath("/upload/"));
        //}
        lbluname.Text = Session["name"].ToString();
        if (!IsPostBack)
        {
            bindstate();
            checkDuplicate();
        }
    }
    public void checkDuplicate()
    {
        ndal.flag = "selectbyuid";
        ndal.u_id = Convert.ToInt32(Session["uid"].ToString());
        ds = nbal.fetch(ndal);
        if (ds.Tables[0].Rows.Count > 0)
        {
            txtdesc.Enabled = false;
            txtngoaddr.Enabled = false;
            txtngoname.Enabled = false;
            ddlstate.Enabled = false;
            ddlcity.Enabled = false;
            ddllocation.Enabled = false;
            fup.Enabled = false;
            btnsubmit.Enabled = false;

            
        }
    }
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
        txtngoname.Text = string.Empty;
        txtngoaddr.Text = string.Empty;
        txtdesc.Text = string.Empty;
        ddlstate.SelectedValue = null;
        ddlcity.SelectedValue = null;
        ddllocation.SelectedValue = null;
    }
    protected void btnsubmit_Click(object sender, EventArgs e)
    {
        fup.SaveAs(Server.MapPath("~/upload/") + fup.FileName);
        ndal.flag = "insert";
        ndal.u_id = Convert.ToInt64(Session["uid"].ToString());
        ndal.ngo_name = txtngoname.Text;
        ndal.address = txtngoaddr.Text;
        ndal.description = txtdesc.Text;        
        ndal.n_pic = "../upload/" + fup.FileName;
        ndal.s_id = Convert.ToInt32(ddlstate.SelectedValue);
        ndal.c_id = Convert.ToInt32(ddlcity.SelectedValue);
        ndal.l_id = Convert.ToInt32(ddllocation.SelectedValue);
        nbal.save(ndal);
        clear();
      

       
    }

    protected void ddlcity_SelectedIndexChanged(object sender, EventArgs e)
    {
        bindlocation();
    }
    protected void ddlstate_SelectedIndexChanged(object sender, EventArgs e)
    {
        bindcity();

    }
}