using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class admin_upload : System.Web.UI.Page
{
    video_BAL uplobl = new video_BAL();
    video_DAL uplodl = new video_DAL();

    protected void Page_Load(object sender, EventArgs e)
    {

    }
    public void clear()
    {
        txtdesc.Text = string.Empty;
        txttitle.Text = string.Empty;

    }
    protected void btncat_Click(object sender, EventArgs e)
    {
        fupapp.SaveAs(Server.MapPath("~/ManKiBaat/") + fupapp.FileName);
        uplodl.flag = "insert";
        uplodl.vi_title = txttitle.Text;
        // uplodl.app_id = Convert.ToInt32(Session["app_id"].ToString());
        uplodl.video = "../ManKiBaat/" + fupapp.FileName;
        uplodl.vi_desc = txtdesc.Text;
        uplobl.save(uplodl);
    }
}