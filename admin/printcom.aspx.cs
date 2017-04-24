using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class admin_printcom : System.Web.UI.Page
{
    company_BAL cbl = new company_BAL();
    company_DAL cdl = new company_DAL();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            bindGrid();
        }
    }
    public void bindGrid()
    {
        cdl.flag = "selectbyView";
        // udl.u_id = Convert.ToInt32(Session["uid"]);
        GridView1.DataSource = cbl.fetch(cdl);
        GridView1.DataBind();
    }
}