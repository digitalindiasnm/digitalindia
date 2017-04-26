using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class user_post : System.Web.UI.Page
{
    event_BAL ebl = new event_BAL();
    event_DAL edl = new event_DAL();
    upload_BAL uplobl = new upload_BAL();
    upload_DAL uplodl = new upload_DAL();

    protected void Page_Load(object sender, EventArgs e)
    {
        lbluname.Text = Session["name"].ToString();   
        //051381
        bind();
    }
    public void bind()
    {
        edl.flag = "selectall";
        DataList2.DataSource = ebl.fetch(edl);
        DataList2.DataBind();
    }
   
    
    protected void btnsubmit_Click(object sender, EventArgs e)
    {
        fpic.SaveAs(Server.MapPath("~/images/") + fpic.FileName);
        fvid.SaveAs(Server.MapPath("~/videos/") + fvid.FileName);
        uplodl.flag = "insert";
        uplodl.u_id = Convert.ToInt32(Session["uid"].ToString());
        uplodl.uplo_pic = "../images/" + fpic.FileName;
        uplodl.uplo_video = "../videos/" + fvid.FileName;
        uplodl.description = txtcmt.Text;
        uplobl.save(uplodl);
        txtcmt.Text = string.Empty;
    }
    protected void DataList2_ItemCommand(object source, DataListCommandEventArgs e)
    {
        if (e.CommandName == "view")
        {
            Session["e_id"] = ((Label)DataList2.Items[e.Item.ItemIndex].FindControl("Label1")).Text;
            Response.Redirect("eventshow.aspx");
        }
    }
}