using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class user_profileview : System.Web.UI.Page
{
    event_BAL ebl = new event_BAL();
    event_DAL edl = new event_DAL();
       userprofile_BAL ubl = new userprofile_BAL();
    userprofile_DAL udl = new userprofile_DAL();
    register_BAL rbl = new register_BAL();
    register_DAL rdl = new register_DAL();
    protected void Page_Load(object sender, EventArgs e)
    {
        lbluname.Text = Session["name"].ToString();
        if (!IsPostBack)
        {
            bindDetails();
            
        }
    }
    //public void bind()
    //{
    //    edl.flag = "selectall";
    //    DataList2.DataSource = ebl.fetch(edl);
    //    DataList2.DataBind();

    //}

    public void bindDetails()
    {
        udl.flag = "selectbyID";
        udl.u_id = Convert.ToInt32(Session["uid"]);
        DetailsView1.DataSource = ubl.fetch(udl);
        DetailsView1.DataBind();
        DetailsView2.DataSource = ubl.fetch(udl);
        DetailsView2.DataBind();
    }

    protected void DetailsView1_ItemUpdating(object sender, DetailsViewUpdateEventArgs e)
    {
        string path = Server.MapPath("~/upload/");

        rdl.flag = "update";
        rdl.uid = Convert.ToInt64(((Label)DetailsView1.Rows[0].FindControl("lbluide")).Text);
        rdl.contact = Convert.ToInt64(((TextBox)DetailsView1.Rows[0].FindControl("txtcon")).Text);
        rbl.save(rdl);

       

        udl.flag = "update";
        udl.u_id = Convert.ToInt32(((Label)DetailsView1.Rows[0].FindControl("lbluide")).Text);
        udl.address = ((TextBox)DetailsView1.Rows[0].FindControl("txtadd")).Text;
        udl.s_id = Convert.ToInt32(((DropDownList)DetailsView1.Rows[0].FindControl("ddlstate")).SelectedValue);
        udl.c_id = Convert.ToInt32(((DropDownList)DetailsView1.Rows[0].FindControl("ddlcity")).SelectedValue);
        udl.l_id = Convert.ToInt32(((DropDownList)DetailsView1.Rows[0].FindControl("ddlloc")).SelectedValue);
        //((FileUpload)DetailsView1.Rows[0].FindControl("FileUpload1")).SaveAs(Server.MapPath("~/upload/") + ((FileUpload)DetailsView1.Rows[0].FindControl("FileUpload1")).FileName);
        //udl.u_pic = "../upload/" + ((FileUpload)DetailsView1.Rows[0].FindControl("FileUpload1")).FileName;
        udl.dob = System.DateTime.Now.Date;
        ubl.save(udl);

        DetailsView1.ChangeMode(DetailsViewMode.ReadOnly);
        bindDetails();

    }
    protected void DetailsView1_ModeChanging(object sender, DetailsViewModeEventArgs e)
    {
        DetailsView1.ChangeMode(e.NewMode);
        bindDetails();
    }
    protected void DetailsView1_ItemCommand(object sender, DetailsViewCommandEventArgs e)
    {
     //   string path = Server.MapPath("~/upload/");


        if (e.CommandName == "modify")
        {
            udl.flag = "updatePic";
            udl.u_id = Convert.ToInt32(((Label)DetailsView1.Rows[0].FindControl("lbluid")).Text);
            ((FileUpload)DetailsView1.Rows[0].FindControl("FileUpload1")).SaveAs(Server.MapPath("~/upload/") + ((FileUpload)DetailsView1.Rows[0].FindControl("FileUpload1")).FileName);
            udl.u_pic = "../upload/" + ((FileUpload)DetailsView1.Rows[0].FindControl("FileUpload1")).FileName;
            udl.dob = System.DateTime.Now.Date;
            ubl.save(udl);

            DetailsView1.ChangeMode(DetailsViewMode.ReadOnly);
            bindDetails();
        }
    }

   
    protected void DetailsView2_ItemUpdating(object sender, DetailsViewUpdateEventArgs e)
    {
        rdl.flag = "update";
        rdl.uid = Convert.ToInt64(((Label)DetailsView2.Rows[0].FindControl("lbluide")).Text);
        rdl.contact = Convert.ToInt64(((TextBox)DetailsView2.Rows[0].FindControl("txtcon")).Text);
        rbl.save(rdl);



        udl.flag = "update";
        udl.u_id = Convert.ToInt32(((Label)DetailsView2.Rows[0].FindControl("lbluide")).Text);
        udl.address = ((TextBox)DetailsView2.Rows[0].FindControl("txtadd")).Text;
        udl.s_id = Convert.ToInt32(((DropDownList)DetailsView2.Rows[0].FindControl("ddlstate")).SelectedValue);
        udl.c_id = Convert.ToInt32(((DropDownList)DetailsView2.Rows[0].FindControl("ddlcity")).SelectedValue);
        udl.l_id = Convert.ToInt32(((DropDownList)DetailsView2.Rows[0].FindControl("ddlloc")).SelectedValue);
        //((FileUpload)DetailsView1.Rows[0].FindControl("FileUpload1")).SaveAs(Server.MapPath("~/upload/") + ((FileUpload)DetailsView1.Rows[0].FindControl("FileUpload1")).FileName);
        //udl.u_pic = "../upload/" + ((FileUpload)DetailsView1.Rows[0].FindControl("FileUpload1")).FileName;
        udl.dob = System.DateTime.Now.Date;
        ubl.save(udl);

        DetailsView2.ChangeMode(DetailsViewMode.ReadOnly);
        bindDetails();

    }
    protected void DetailsView2_ModeChanging(object sender, DetailsViewModeEventArgs e)
    {
        DetailsView2.ChangeMode(e.NewMode);
        bindDetails();
    }
    //protected void DataList2_ItemCommand(object source, DataListCommandEventArgs e)
    //{
    //    if (e.CommandName == "view")
    //    {
    //        Session["e_id"] = ((Label)DataList2.Items[e.Item.ItemIndex].FindControl("Label1")).Text;
    //        Response.Redirect("eventshow.aspx");
    //    }
    //}
}
