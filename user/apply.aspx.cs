using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class user_apply : System.Web.UI.Page
{
    apply_BAL apbl = new apply_BAL();
    apply_DAL apdl = new apply_DAL();
    requirement_BAL rbl = new requirement_BAL();
    requirement_DAL rdl = new requirement_DAL();
    protected void Page_Load(object sender, EventArgs e)
    {
        lbluname.Text = Session["name"].ToString();
        bind();
    }
    public void bind()
    {
        rdl.flag = "select";
        DataList1.DataSource = rbl.fetch(rdl);
        DataList1.DataBind();
    }


    protected void btnsubmit_Click(object sender, EventArgs e)
    {
        fresume.SaveAs(Server.MapPath("~/Resume/") + fresume.FileName);
        apdl.flag = "insert";
        apdl.cp_id = Convert.ToInt32(Session["cpid"]);
        apdl.u_id = Convert.ToInt32(Session["u_id"]);
        apdl.req_id = Convert.ToInt32(Session["reqid"]);
       // apdl.descp = txtjdes.Text;  
        apdl.cv = "../Resume/" + fresume.FileName;
        
        apbl.save(apdl);
        //txtjdes.Text = string.Empty;


    }
}