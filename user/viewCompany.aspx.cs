using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class user_viewCompany : System.Web.UI.Page
{
    company_DAL cdl = new company_DAL();
    company_BAL cbl = new company_BAL();
    requirement_DAL rdl = new requirement_DAL();
    requirement_BAL rbl = new requirement_BAL();
    register_BAL rebl = new register_BAL();
    register_DAL redl = new register_DAL();

    protected void Page_Load(object sender, EventArgs e)
    {
        lbluname.Text = Session["name"].ToString();
        if (!IsPostBack)
        {
            bindData();
        }

    }
    public void bindData()
    {
        rdl.flag = "selectbyID";
        //rdl.uid = Convert.ToInt32(Session["uid"]);
        DataList1.DataSource = rbl.fetch(rdl);
        DataList1.DataBind();

    }
    protected void DataList1_ItemCommand1(object source, DataListCommandEventArgs e)
    {
        if (e.CommandName == "More")
        {
            Session["reqid"] = ((Label)DataList1.Items[e.Item.ItemIndex].FindControl("lblreqid")).Text;
            Session["u_id"] = ((Label)DataList1.Items[e.Item.ItemIndex].FindControl("lbluid")).Text;
            Response.Redirect("cdetails.aspx");
        }

    }
}