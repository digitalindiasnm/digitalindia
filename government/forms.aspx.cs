using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class government_forms : System.Web.UI.Page
{
    gov_BAL gbl = new gov_BAL();
    gov_DAL gdl = new gov_DAL();

    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            lbluname.Text = Session["name"].ToString();
            DropDownList1.Items.Insert(0, new ListItem("--Select State--"));
        }

    }
    public void clear()
    {
        txtformno.Text = string.Empty;
        DropDownList1.Text = string.Empty;
    }
    protected void btnsubmit_Click(object sender, EventArgs e)
    {
        fupform.SaveAs(Server.MapPath("~/forms/") + fupform.FileName);
        gdl.flag = "insert";

        gdl.form_no = txtformno.Text;
        gdl.path = "../forms/" + fupform.FileName;
        gdl.catagory = DropDownList1.SelectedValue;
        gbl.save(gdl);
    }
}