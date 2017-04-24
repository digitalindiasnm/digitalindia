using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class contacts : System.Web.UI.Page
{
    feedback_BAL fbl = new feedback_BAL();
    feedback_DAL fdl = new feedback_DAL();
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    public void clear()
    {
        txtname.Text = string.Empty;
        txtemail.Text = string.Empty;
        txtsubj.Text = string.Empty;
        txtmsg.Text = string.Empty;
    }
    protected void btnsubmit_Click(object sender, EventArgs e)
    {
        fdl.flag = "insert";
        fdl.name = txtname.Text;
        fdl.email = txtemail.Text;
        fdl.subject = txtsubj.Text;
        fdl.msg = txtmsg.Text;
        fbl.save(fdl);
        clear();
       
    }
}