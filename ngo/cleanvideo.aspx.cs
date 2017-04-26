using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class ngo_cleanvideo : System.Web.UI.Page
{

    upload_BAL upbl = new upload_BAL();
    upload_DAL updl = new upload_DAL();
    comment_BAL cmtbl = new comment_BAL();
    comment_DAL cmtdl = new comment_DAL();
    userprofile_BAL ubl = new userprofile_BAL();
    userprofile_DAL udl = new userprofile_DAL();

    protected void Page_Load(object sender, EventArgs e)
    {
        lbluname.Text = Session["name"].ToString();
        if (!IsPostBack)
        {
            bindData();
        }

    }
    public void bindData()
    {
        updl.flag = "selectbyID";
        // udl.u_id = Convert.ToInt32(Session["uid"].ToString());
        DataList1.DataSource = upbl.fetch(updl);
        DataList1.DataBind();

    }

}