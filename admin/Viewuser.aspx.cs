using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class admin_Viewuser : System.Web.UI.Page
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
        GridView1.DataSource  = ubl.fetch(udl);
        GridView1.DataBind();
    }
    //   protected void _SelectedIndexChanged(object sender, EventArgs e)
    //    {
            
    //        

    //    }
    //    protected void gvAttributeList_PageIndexChanging(object sender, GridViewPageEventArgs e)
    //    {
    //       
    //    }
    //    protected void btnRefresh_Click(object sender, EventArgs e)
    //    {
    //        bindGrid();
    //    }
    //}

    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {
        bindGrid();
    }

   
    protected void GridView1_PageIndexChanging(object sender, GridViewPageEventArgs e)
    {
        GridView1.PageIndex = e.NewPageIndex;
        this.bindGrid();
    }
}