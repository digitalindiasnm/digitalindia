using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class admin_viewNGO : System.Web.UI.Page
{
    ngo_BAL nbl = new ngo_BAL();
    ngo_DAL ndl = new ngo_DAL();

    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            bindGrid();
        }
    }
    public void bindGrid()
    {
        ndl.flag = "selectbyView";
      
        GridView1.DataSource = nbl.fetch(ndl);
        GridView1.DataBind();
    }
}