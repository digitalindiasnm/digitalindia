using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class admin_catagory : System.Web.UI.Page
{
    catagory_BAL cabl = new catagory_BAL();
    catagory_DAL cadl = new catagory_DAL();

    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void btncat_Click(object sender, EventArgs e)
    {
        cadl.flag = "insert";
        cadl.cat_name = txtcat.Text;
        cabl.save(cadl);
        txtcat.Text = string.Empty;
    }
}