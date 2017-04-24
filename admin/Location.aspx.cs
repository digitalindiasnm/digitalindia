using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class admin_Location : System.Web.UI.Page
{
    location_BAL lbl = new location_BAL();
    location_DAL ldl = new location_DAL();
    city_DAL cdl = new city_DAL();
    city_BAL cbl = new city_BAL();

    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            bindcity();
        }
    }
    
    public void bindcity()
    {
        cdl.flag = "select";
        ddlcity.DataSource = cbl.fetch(cdl);
        ddlcity.DataTextField = "c_name";
        ddlcity.DataValueField = "c_id";
        ddlcity.DataBind();
    }
    public void clear()
    {

        txtloca.Text = string.Empty;
        ddlcity.SelectedValue = null;
    }
    protected void btnloca_Click(object sender, EventArgs e)
    {
        ldl.flag = "insert";
        ldl.l_name = txtloca.Text;
        ldl.c_id = Convert.ToInt32(ddlcity.SelectedValue);
        lbl.save(ldl);
        clear();
    }
}