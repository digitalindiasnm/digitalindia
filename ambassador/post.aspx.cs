using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class ambassador_post : System.Web.UI.Page
{

    upload_BAL uplobl = new upload_BAL();
    upload_DAL uplodl = new upload_DAL();


    protected void Page_Load(object sender, EventArgs e)
    {
        lbluname.Text = Session["name"].ToString();
    }
    protected void btnsubmit_Click(object sender, EventArgs e)
    {
        fpic.SaveAs(Server.MapPath("~/images/") + fpic.FileName);
        fvid.SaveAs(Server.MapPath("~/videos/") + fvid.FileName);
        uplodl.flag = "insert";
        uplodl.u_id = Convert.ToInt32(Session["uid"].ToString());
        uplodl.uplo_pic = "../images/" + fpic.FileName;
        uplodl.uplo_video = "../videos/" + fvid.FileName;
   //     uplodl. = txtcmt.Text;
        uplobl.save(uplodl);

    }
}