using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class ambassador_ViewAmbassadorprofile : System.Web.UI.Page
{
    ambassador_BAL abl = new ambassador_BAL();
    ambassador_DAL adl = new ambassador_DAL();
    ngo_DAL ngdl = new ngo_DAL();
    ngo_BAL ngbl = new ngo_BAL();

    protected void Page_Load(object sender, EventArgs e)
    {
        lbluname.Text = Session["name"].ToString();
        if (!IsPostBack)
        {
            bindDetails();
        }
    }
    public void bindDetails()
    {
        adl.flag = "selectbyID";
        adl.u_id = Convert.ToInt32(Session["uid"]);
        DetailsView1.DataSource = abl.fetch(adl);
        DetailsView1.DataBind();
    }
    protected void DetailsView1_ModeChanging(object sender, DetailsViewModeEventArgs e)
    {
        DetailsView1.ChangeMode(e.NewMode);
        bindDetails();

    }
    protected void DetailsView1_ItemUpdating(object sender, DetailsViewUpdateEventArgs e)
    {

        string path = Server.MapPath("~/upload/");

        adl.flag = "update";
        adl.u_id = Convert.ToInt32(((Label)DetailsView1.Rows[0].FindControl("lbluide")).Text);
        //adl.addr = ((TextBox)DetailsView1.Rows[0].FindControl("txtadd")).Text;
        //adl.s_id = Convert.ToInt32(((DropDownList)DetailsView1.Rows[0].FindControl("ddlstate")).SelectedValue);
        //adl.c_id = Convert.ToInt32(((DropDownList)DetailsView1.Rows[0].FindControl("ddlcity")).SelectedValue);
        //adl.l_id = Convert.ToInt32(((DropDownList)DetailsView1.Rows[0].FindControl("ddlloc")).SelectedValue);
        //adl.dos = System.DateTime.Now.Date;

        // rdl.contact = Convert.ToInt64(((TextBox)DetailsView1.Rows[0].FindControl("txtcon")).Text);
        abl.save(adl);

    }
    protected void DetailsView1_ItemCommand(object sender, DetailsViewCommandEventArgs e)
    {
        if (e.CommandName == "modify")
        {
            adl.flag = "updatePic";
            adl.u_id = Convert.ToInt32(((Label)DetailsView1.Rows[0].FindControl("lbluid")).Text);
            ((FileUpload)DetailsView1.Rows[0].FindControl("FileUpload1")).SaveAs(Server.MapPath("~/upload/") + ((FileUpload)DetailsView1.Rows[0].FindControl("FileUpload1")).FileName);
            adl.a_pic = "../upload/" + ((FileUpload)DetailsView1.Rows[0].FindControl("FileUpload1")).FileName;
            //adl.dos = System.DateTime.Now.Date;
            abl.save(adl);

            DetailsView1.ChangeMode(DetailsViewMode.ReadOnly);
            bindDetails();
        }

    }
  
}