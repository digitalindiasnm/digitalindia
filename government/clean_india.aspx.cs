using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class government_clean_india : System.Web.UI.Page
{

    upload_BAL upbl = new upload_BAL();
    upload_DAL updl = new upload_DAL();
    comment_BAL cmtbl = new comment_BAL();
    comment_DAL cmtdl = new comment_DAL();
    userprofile_BAL ubl = new userprofile_BAL();
    userprofile_DAL udl = new userprofile_DAL();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            lbluname.Text = Session["name"].ToString();
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
    protected void DataList1_ItemCommand(object source, DataListCommandEventArgs e)
    {
        if (e.CommandName == "cmtvideo")
        {
            cmtdl.flag = "insert";
            cmtdl.u_id = Convert.ToInt32(Session["uid"].ToString());
            cmtdl.uplo_id = Convert.ToInt32(((Label)DataList1.Items[e.Item.ItemIndex].FindControl("lbluplid")).Text);
            cmtdl.comment = ((TextBox)DataList1.Items[e.Item.ItemIndex].FindControl("txtcmt")).Text;
            cmtbl.save(cmtdl);
            bindData();


            //updl.flag = "update";
            //updl.u_id = Convert.ToInt32(Session["uid"].ToString());
            //updl.uplo_id =Convert.ToInt32(((Label)DataList1.Items[e.Item.ItemIndex].FindControl("lbluplid")).Text);
            //updl.description = ((TextBox)DataList1.Items[e.Item.ItemIndex].FindControl("txtcmt")).Text;
            //upbl.save(updl);

            //bindData();
        }
    }
}