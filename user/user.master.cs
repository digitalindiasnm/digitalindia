using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class user_user : System.Web.UI.MasterPage
{
    userprofile_DAL updl = new userprofile_DAL();
    userprofile_BAL upbl = new userprofile_BAL();

    protected void page_Load(object sender, EventArgs e)
    {
        if (Session["uid"] == null)
        {
            Response.Redirect("~/Default.aspx");
        }
        
        if (!IsPostBack)
        {
            bind();
        }
    }

    public void bind()
    {
        updl.flag = "select";
        updl.u_id = Convert.ToInt32(Session["uid"]);
        upbl.fetch(updl);
        DataBind();

    }
    protected void lnklogout_Click(object sender, EventArgs e)
    {
        Session.RemoveAll();
        Session.Abandon();
        Response.ExpiresAbsolute = DateTime.Now;
        Response.Expires = 0;
        Response.CacheControl = "no-cache";
        Response.Redirect("~/Default.aspx");
        
    }
}
