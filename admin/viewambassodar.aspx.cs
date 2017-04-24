using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class admin_viewambassodar : System.Web.UI.Page
{
    ambassador_BAL abl = new ambassador_BAL();
    ambassador_DAL adl = new ambassador_DAL();

    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            bindGrid();
        }
    }
    public void bindGrid()
    {
        adl.flag = "selectbyView";
        // udl.u_id = Convert.ToInt32(Session["uid"]);
        GridView1.DataSource = abl.fetch(adl);
        GridView1.DataBind();
    }
}