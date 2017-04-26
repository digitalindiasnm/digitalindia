using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class user_Scan_form : System.Web.UI.Page
{
    scan_BAL sbl = new scan_BAL();
    scan_DAL sdl = new scan_DAL();
    event_DAL edl = new event_DAL();
    event_BAL ebl = new event_BAL();

    protected void Page_Load(object sender, EventArgs e)
    {
        lbluname.Text = Session["name"].ToString();
        bind();

    }
    //protected void btnsearch_Click(object sender, EventArgs e)
    //{
    //    //Session["des"] = txtdes.Text;
    //    //Session["skill"] = txtskill.Text;
    //    //Response.Redirect("Search.aspx");
    //}
    public void bind()
    {
        edl.flag = "selectall";
        DataList2.DataSource = ebl.fetch(edl);
        DataList2.DataBind();

    }
    protected void DataList2_ItemCommand(object source, DataListCommandEventArgs e)
    {
        if (e.CommandName == "view")
        {
            Session["e_id"] = ((Label)DataList2.Items[e.Item.ItemIndex].FindControl("Label1")).Text;
            Response.Redirect("eventshow.aspx");
        }
    }
    protected void btnsubmit_Click(object sender, EventArgs e)
    {
        {
            file.SaveAs(Server.MapPath("~/Scanforms/") + file.FileName);
            sdl.flag = "insert";
            sdl.u_id = Convert.ToInt32(Session["uid"].ToString());
            sdl.form_no = txtform.Text;
            sdl.path = "../Scanforms/" + file.FileName;
            sbl.save(sdl);
        }
    }
}