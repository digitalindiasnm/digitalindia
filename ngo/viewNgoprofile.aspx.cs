using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class ngo_viewNgoprofile : System.Web.UI.Page
{
    ngo_BAL ngbl = new ngo_BAL();
    ngo_DAL ngdl = new ngo_DAL();

    protected void Page_Load(object sender, EventArgs e)
    {
      
            if (!IsPostBack)
            {
                lbluname.Text = Session["name"].ToString();
                bindDetails();
            }        

    }
    public void bindDetails()
    {
        ngdl.flag = "selectbyID";
        ngdl.u_id = Convert.ToInt32(Session["uid"]);
        DetailsView1.DataSource = ngbl.fetch(ngdl);
        DetailsView1.DataBind();
        DetailsView2.DataSource = ngbl.fetch(ngdl);
        DetailsView2.DataBind();
    }

    protected void DetailsView1_ItemUpdating(object sender, DetailsViewUpdateEventArgs e)
    {
        string path = Server.MapPath("~/upload/");

        ngdl.flag = "update";
        ngdl.u_id = Convert.ToInt64(((Label)DetailsView1.Rows[0].FindControl("lbluide")).Text);
       // ngdl.contact = Convert.ToInt64(((TextBox)DetailsView1.Rows[0].FindControl("txtcon")).Text);
        ngbl.save(ngdl);
        


        ngdl.flag = "update";
        ngdl.u_id = Convert.ToInt32(((Label)DetailsView2.Rows[0].FindControl("lbluidee")).Text);
        ngdl.address = ((TextBox)DetailsView2.Rows[0].FindControl("txtadd")).Text;
        //ngdl.s_id = Convert.ToInt32(((DropDownList)DetailsView2.Rows[0].FindControl("ddlstate")).SelectedValue);
        //ngdl.c_id = Convert.ToInt32(((DropDownList)DetailsView2.Rows[0].FindControl("ddlcity")).SelectedValue);
        //ngdl.l_id = Convert.ToInt32(((DropDownList)DetailsView2.Rows[0].FindControl("ddlloc")).SelectedValue);
        //((FileUpload)DetailsView1.Rows[0].FindControl("FileUpload1")).SaveAs(Server.MapPath("~/upload/") + ((FileUpload)DetailsView1.Rows[0].FindControl("FileUpload1")).FileName);
        //udl.u_pic = "../upload/" + ((FileUpload)DetailsView1.Rows[0].FindControl("FileUpload1")).FileName;
        //  ngdl.dob = System.DateTime.Now.Date;
        ngbl.save(ngdl);

        DetailsView1.ChangeMode(DetailsViewMode.ReadOnly);

    }

    protected void DetailsView1_ModeChanging(object sender, DetailsViewModeEventArgs e)
    {
        DetailsView1.ChangeMode(e.NewMode);
        bindDetails();
    }
    protected void DetailsView1_ItemCommand(object sender, DetailsViewCommandEventArgs e)
    {
        if (e.CommandName == "modify")
        {
            ngdl.flag = "updatePic";
            ngdl.u_id = Convert.ToInt32(((Label)DetailsView1.Rows[0].FindControl("lbluid")).Text);
            ((FileUpload)DetailsView1.Rows[0].FindControl("FileUpload1")).SaveAs(Server.MapPath("~/upload/") + ((FileUpload)DetailsView1.Rows[0].FindControl("FileUpload1")).FileName);
            ngdl.n_pic = "../upload/" + ((FileUpload)DetailsView1.Rows[0].FindControl("FileUpload1")).FileName;
            //ngdl.dob = System.DateTime.Now.Date;
            ngbl.save(ngdl);



            DetailsView1.ChangeMode(DetailsViewMode.ReadOnly);
            bindDetails();
        }
    }
  
    protected void DetailsView2_ItemUpdating(object sender, DetailsViewUpdateEventArgs e)
    {
        string path = Server.MapPath("~/upload/");

        ngdl.flag = "update";
        ngdl.u_id = Convert.ToInt64(((Label)DetailsView1.Rows[0].FindControl("lbluid")).Text);
        // ngdl.contact = Convert.ToInt64(((TextBox)DetailsView1.Rows[0].FindControl("txtcon")).Text);
        ngbl.save(ngdl);



        ngdl.flag = "update";
        ngdl.u_id = Convert.ToInt32(((Label)DetailsView2.Rows[0].FindControl("lbluidee")).Text);
        ngdl.address = ((TextBox)DetailsView2.Rows[0].FindControl("txtadd")).Text;
        //ngdl.s_id = Convert.ToInt32(((DropDownList)DetailsView2.Rows[0].FindControl("ddlstate")).SelectedValue);
        //ngdl.c_id = Convert.ToInt32(((DropDownList)DetailsView2.Rows[0].FindControl("ddlcity")).SelectedValue);
        //ngdl.l_id = Convert.ToInt32(((DropDownList)DetailsView2.Rows[0].FindControl("ddlloc")).SelectedValue);
        //((FileUpload)DetailsView1.Rows[0].FindControl("FileUpload1")).SaveAs(Server.MapPath("~/upload/") + ((FileUpload)DetailsView1.Rows[0].FindControl("FileUpload1")).FileName);
        //udl.u_pic = "../upload/" + ((FileUpload)DetailsView1.Rows[0].FindControl("FileUpload1")).FileName;
        //  ngdl.dob = System.DateTime.Now.Date;
        ngdl.description = ((TextBox)DetailsView2.Rows[0].FindControl("txtdesc")).Text;
        ngbl.save(ngdl);

        DetailsView2.ChangeMode(DetailsViewMode.ReadOnly);
        bindDetails();

    }
    protected void DetailsView2_ModeChanging(object sender, DetailsViewModeEventArgs e)
    {
        DetailsView2.ChangeMode(e.NewMode);
        bindDetails();
    }
    
}