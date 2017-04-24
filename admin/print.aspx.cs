using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class admin_print : System.Web.UI.Page
{
    userprofile_BAL ubl = new userprofile_BAL();
    userprofile_DAL udl = new userprofile_DAL();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            bindGrid();
        }
    }
    public void bindGrid()
    {
        udl.flag = "selectbyView";
        // udl.u_id = Convert.ToInt32(Session["uid"]);
        GridView1.DataSource = ubl.fetch(udl);
        GridView1.DataBind();
    }
    
}