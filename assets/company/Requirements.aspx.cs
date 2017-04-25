using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class company_Requirements : System.Web.UI.Page
{
    requirement_BAL reqbl = new requirement_BAL();
    requirement_DAL reqdl = new requirement_DAL();

    protected void Page_Load(object sender, EventArgs e)
    {

    }
    //protected void LinkButton1_Click(object sender, EventArgs e)
    //{
    //    MultiView1.ActiveViewIndex = 0;
    //}
    protected void btnsubmit_Click(object sender, EventArgs e)
    {
        string quali = "";
        for (int i = 0; i < chkquali.Items.Count; i++)
        {
            if (chkquali.Items[i].Selected)
            {
                quali += chkquali.Items[i].Text + ",";
            }
        }
        reqdl.flag = "insert";
        reqdl.uid = Convert.ToInt32( Session["uid"].ToString());
        reqdl.job_title = txtjob.Text;
        reqdl.quali = quali;
        reqdl.expr = txtexper.Text;
        reqdl.j_desc = txtdesc.Text;
        reqdl.no_vacan = Convert.ToInt32(txtvacancy.Text);
        reqdl.sal_pack = txtsala.Text;
        reqbl.save(reqdl);
    }
}