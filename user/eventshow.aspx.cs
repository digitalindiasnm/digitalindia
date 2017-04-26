using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class user_eventshow : System.Web.UI.Page
{
    event_DAL edl = new event_DAL();
    event_BAL ebl = new event_BAL();

    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            bind();
        }
    }

    public void bind()
    {
        edl.flag = "select";
        edl.e_id = Convert.ToInt32(Session["e_id"]);
        DataList1.DataSource = ebl.fetch(edl);
        DataList1.DataBind();
    }
}