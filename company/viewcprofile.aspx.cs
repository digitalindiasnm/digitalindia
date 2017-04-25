﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class company_viewcprofile : System.Web.UI.Page
{
  
   
    company_BAL cbl = new company_BAL();
    company_DAL cdl = new company_DAL();
    requirement_BAL reqbl = new requirement_BAL();
    requirement_DAL reqdl = new requirement_DAL();

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
        reqdl.flag = "selectbyRID";
        reqdl.uid = Convert.ToInt32(Session["uid"]);
        DetailsView1.DataSource = reqbl.fetch(reqdl);
        DetailsView1.DataBind();
        DetailsView2.DataSource = reqbl.fetch(reqdl);
        DetailsView2.DataBind();
    }

   protected void DetailsView1_ItemCommand(object sender, DetailsViewCommandEventArgs e)
    {
        if (e.CommandName == "modify")
        {
            cdl.flag = "updatePic";
            cdl.u_id = Convert.ToInt32(((Label)DetailsView1.Rows[0].FindControl("lbluid")).Text);
            ((FileUpload)DetailsView1.Rows[0].FindControl("FileUpload1")).SaveAs(Server.MapPath("~/upload/") + ((FileUpload)DetailsView1.Rows[0].FindControl("FileUpload1")).FileName);
            cdl.c_pic = "../upload/" + ((FileUpload)DetailsView1.Rows[0].FindControl("FileUpload1")).FileName;
            cdl.dos = System.DateTime.Now.Date;
            cbl.save(cdl);

            DetailsView1.ChangeMode(DetailsViewMode.ReadOnly);
            bindDetails();
        }

    }
    protected void DetailsView1_ItemUpdating(object sender, DetailsViewUpdateEventArgs e)
    {
        string path = Server.MapPath("~/upload/");

        cdl.flag = "update";
        cdl.u_id = Convert.ToInt32(((Label)DetailsView1.Rows[0].FindControl("lbluide")).Text);
        cdl.addr = ((TextBox)DetailsView1.Rows[0].FindControl("txtadd")).Text;
        cdl.s_id = Convert.ToInt32(((DropDownList)DetailsView1.Rows[0].FindControl("ddlstate")).SelectedValue);
        cdl.c_id = Convert.ToInt32(((DropDownList)DetailsView1.Rows[0].FindControl("ddlcity")).SelectedValue);
        cdl.l_id = Convert.ToInt32(((DropDownList)DetailsView1.Rows[0].FindControl("ddlloc")).SelectedValue);
        //cdl.dos = System.DateTime.Now.Date;

        // rdl.contact = Convert.ToInt64(((TextBox)DetailsView1.Rows[0].FindControl("txtcon")).Text);
        cbl.save(cdl);

        DetailsView1.ChangeMode(DetailsViewMode.ReadOnly);
        bindDetails();


    }
    protected void DetailsView1_ModeChanging(object sender, DetailsViewModeEventArgs e)
    {
        DetailsView1.ChangeMode(e.NewMode);
        bindDetails();
    }
    
    protected void DetailsView2_ItemUpdating(object sender, DetailsViewUpdateEventArgs e)
    {
        cdl.flag = "update";
        cdl.u_id = Convert.ToInt32(((Label)DetailsView2.Rows[0].FindControl("lbluide")).Text);
        cdl.addr = ((TextBox)DetailsView2.Rows[0].FindControl("txtaddr")).Text;
        cdl.s_id = Convert.ToInt32(((DropDownList)DetailsView2.Rows[0].FindControl("ddlstate")).SelectedValue);
        cdl.c_id = Convert.ToInt32(((DropDownList)DetailsView2.Rows[0].FindControl("ddlcity")).SelectedValue);
        cdl.l_id = Convert.ToInt32(((DropDownList)DetailsView2.Rows[0].FindControl("ddlloc")).SelectedValue);
        cdl.dos = System.DateTime.Now.Date;
        cbl.save(cdl);
        DetailsView2.ChangeMode(DetailsViewMode.ReadOnly);
        bindDetails();
    }
    protected void DetailsView2_ModeChanging(object sender, DetailsViewModeEventArgs e)
    {
        DetailsView2.ChangeMode(e.NewMode);
        bindDetails();
    }
}