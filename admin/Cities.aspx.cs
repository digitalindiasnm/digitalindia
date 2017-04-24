using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Cities : System.Web.UI.Page
{
    city_DAL cdl = new city_DAL();
    city_BAL cbl = new city_BAL();
    state_DAL sdl = new state_DAL();
    state_BAL sbl = new state_BAL();

    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            bindstate();
        }

    }
    public void bindstate()
    {
        sdl.flag = "select";
        ddlstate.DataSource = sbl.fetch(sdl);
        ddlstate.DataTextField = "s_name";
        ddlstate.DataValueField = "s_id";
        ddlstate.DataBind();
    }
    public void clear()
    {
        txtcity.Text = string.Empty;
        ddlstate.SelectedValue = null;
    }
    protected void btncity_Click(object sender, EventArgs e)
    {
        cdl.flag = "insert";
        cdl.c_name = txtcity.Text;
        cdl.s_id = Convert.ToInt32(ddlstate.SelectedValue);
        cbl.save(cdl);
        clear();
       
    }
}
