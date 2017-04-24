using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class mankiBaat : System.Web.UI.Page
{
    video_BAL vbl = new video_BAL();
    video_DAL vdl = new video_DAL();

    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            bindData();
        }
    }
    public void bindData()
    {
        vdl.flag = "select";
        DataList1.DataSource = vbl.fetch(vdl);
        DataList1.DataBind();
    }
}