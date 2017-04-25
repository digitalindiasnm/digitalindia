using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class company_CompanyProfile : System.Web.UI.Page
{
    company_BAL combl = new company_BAL();
    company_DAL comdl = new company_DAL();
    state_BAL sbl = new state_BAL();
    state_DAL sdl = new state_DAL();
    city_BAL cbl = new city_BAL();
    city_DAL cdl = new city_DAL();
    location_BAL lbl = new location_BAL();
    location_DAL ldl = new location_DAL();

    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            bindstate();
        }
    }
    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        MultiView1.ActiveViewIndex = 0;
    }
    public void bindstate()
    {
        sdl.flag = "select";
        ddlstate.DataSource = sbl.fetch(sdl);
        ddlstate.DataTextField = "s_name";
        ddlstate.DataValueField = "s_id";
        ddlstate.DataBind();
    }
    public void bindcity()
    {
        cdl.flag = "select";
        cdl.s_id = Convert.ToInt32(ddlstate.SelectedValue);
        ddlcity.DataSource = cbl.fetch(cdl);
        ddlcity.DataTextField = "c_name";
        ddlcity.DataValueField = "c_id";
        ddlcity.DataBind();
    }
    public void bindlocation()
    {
        ldl.flag = "select";
        ldl.c_id = Convert.ToInt32(ddlcity.SelectedValue);
        ddllocation.DataSource = lbl.fetch(ldl);
        ddllocation.DataTextField = "l_name";
        ddllocation.DataValueField = "l_id";
        ddllocation.DataBind();
    }
    protected void btnsubmit_Click(object sender, EventArgs e)
    {
        fup.SaveAs(Server.MapPath("/upload")+fup.FileName);
        comdl.flag = "insert";
        comdl.u_id = Convert.ToInt64(Session["uid"].ToString());
        comdl.c_name = txtcname.Text;
        comdl.addr = txtaddr.Text;
        comdl.dos = Convert.ToDateTime(txtdos.Text);
        comdl.c_pic = "../upload/" + fup.FileName;
        comdl.s_id = Convert.ToInt32(ddlstate.SelectedValue);
        comdl.c_id = Convert.ToInt32(ddlcity.SelectedValue);
        comdl.l_id = Convert.ToInt32(ddllocation.SelectedValue);
        comdl.licence = txtlicenceno.Text;

    }

    protected void ddlstate_SelectedIndexChanged(object sender, EventArgs e)
    {
        bindcity();
    }
    protected void ddlcity_SelectedIndexChanged(object sender, EventArgs e)
    {
        bindlocation();
    }
}