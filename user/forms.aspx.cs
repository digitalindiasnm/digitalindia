using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Net;
using System.Data;
using System.Data.SqlClient;

public partial class user_forms : System.Web.UI.Page
{
    DataTable dt = new DataTable();
  
    gov_BAL gbl = new gov_BAL();
    gov_DAL gdl = new gov_DAL();
    event_DAL edl = new event_DAL();
    event_BAL ebl = new event_BAL();
   

    protected void Page_Load(object sender, EventArgs e)
    {

        lbluname.Text = Session["name"].ToString();
        if (!IsPostBack)
        {
            bindgrid();
            bind();
        }
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
    public void bindgrid()
    {
        gdl.flag = "select";
        GridView1.DataSource = gbl.fetch(gdl);
        GridView1.DataBind();
    }

    
    protected void GridView1_RowCommand1(object sender, GridViewCommandEventArgs e)
    {
        if (e.CommandName == "pdf")
        {
            int rowindex = Convert.ToInt32(e.CommandArgument);
            GridViewRow row = GridView1.Rows[rowindex];
            String filepath = Server.MapPath(((Label)GridView1.Rows[rowindex].FindControl("lblpath")).Text);
            WebClient wc = new WebClient();
            Byte[] buffer = wc.DownloadData(filepath);
            if (buffer != null)
            {
                Response.ContentType = "application/pdf";
                Response.AddHeader("Content-Length", buffer.Length.ToString());
                Response.BinaryWrite(buffer);
            }

            //Response.ContentType = "application/pdf";
            //Response.AppendHeader("Content-Disposition", "attachment; filename=" + filepath);
            //Response.WriteFile(filepath);
            //Response.Flush();
            //Response.End();

        }
    }
    protected void ddlform_SelectedIndexChanged(object sender, EventArgs e)
    {
        gdl.flag = "selectbycatagory";
        gdl.catagory = ddlform.SelectedItem.Text;
        GridView1.DataSource = gbl.fetch(gdl);
        GridView1.DataBind();  
    }
    protected void GridView1_PageIndexChanging(object sender, GridViewPageEventArgs e)
    {
        GridView1.PageIndex = e.NewPageIndex;
        bindgrid();
    }
    //protected void txtsearch_TextChanged(object sender, EventArgs e)
    //{
    //    gdl.flag = "selectbyform";
    //    gdl.form_no = txtsearch.Text;
    //    GridView1.DataSource = gbl.fetch(gdl);
    //    GridView1.DataBind();  
    //}
}