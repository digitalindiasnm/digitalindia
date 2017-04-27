using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class admin_application : System.Web.UI.Page
{
    application_BAL uplobl = new application_BAL();
    application_DAL uplodl = new application_DAL();

    protected void Page_Load(object sender, EventArgs e)
    {

    }
    public void clear()
    {
        txtName.Text = string.Empty;
        txtdesc.Text = string.Empty;
        
       
    }
    protected void btncat_Click(object sender, EventArgs e)
    {
        fupicon.SaveAs(Server.MapPath("~/application/") + fupicon.FileName);
        fupapp.SaveAs(Server.MapPath("~/application/") + fupapp.FileName);
        uplodl.flag = "insert";
        uplodl.app_name = txtName.Text;
       // uplodl.app_id = Convert.ToInt32(Session["app_id"].ToString());
        uplodl.app_icon = "application/" + fupicon.FileName;
        uplodl.app_apk = "application/" + fupapp.FileName;
        uplodl.app_desc = txtdesc.Text;
        uplobl.save(uplodl);
        clear();
    }
}
