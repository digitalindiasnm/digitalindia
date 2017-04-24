using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class admin_main : System.Web.UI.Page
{
    feedback_DAL fdl = new feedback_DAL();
    feedback_BAL fbl = new feedback_BAL();
    DataSet ds = new DataSet();

    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            bind();
            bindGrid();
        }
    }
    public void bind()
    {

        fdl.flag = "selectlastID";
        ds = fbl.fetch(fdl);
        int c = ds.Tables[0].Rows.Count;
        lblmsg.Text = c.ToString();
    }
    public void bindGrid()
    {
        fdl.flag = "select";
        GridView1.DataSource = fbl.fetch(fdl);
        GridView1.DataBind();
    }
}