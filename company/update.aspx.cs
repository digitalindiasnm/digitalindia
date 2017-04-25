using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class company_update : System.Web.UI.Page
{
    requirement_BAL rbl = new requirement_BAL();
    requirement_DAL rdl = new requirement_DAL();

    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            bind();
        }
    }

    public void bind()
    {
        rdl.flag = "select";
        GridView1.DataSource = rbl.fetch(rdl);
        GridView1.DataBind();
    }

    protected void GridView1_RowEditing(object sender, GridViewEditEventArgs e)
    {
        GridView1.EditIndex = e.NewEditIndex;
        bind();
    }
    protected void GridView1_RowUpdating(object sender, GridViewUpdateEventArgs e)
    {
        CheckBoxList chk = (CheckBoxList)GridView1.Rows[e.RowIndex].FindControl("chkqua");
        foreach (ListItem li in chk.Items)
        {
            if(li.Selected)
            {
                rdl.quali += li.Text + ",";
            }
        }
        rdl.flag = "update";
        rdl.reqid = Convert.ToInt32(((Label)GridView1.Rows[e.RowIndex].FindControl("lblreqid")).Text);
        rdl.uid = Convert.ToInt32(((Label)GridView1.Rows[e.RowIndex].FindControl("lbluid")).Text);
        rdl.expr = ((TextBox)GridView1.Rows[e.RowIndex].FindControl("txtexpr")).Text;
        rdl.j_desc = ((TextBox)GridView1.Rows[e.RowIndex].FindControl("txtdesc")).Text;
        rdl.no_vacan = Convert.ToInt32(((TextBox)GridView1.Rows[e.RowIndex].FindControl("txtvaca")).Text);
        rdl.sal_pack = ((TextBox)GridView1.Rows[e.RowIndex].FindControl("txtsal")).Text;
        rbl.save(rdl);
        GridView1.EditIndex = -1;
        bind();
    }
    protected void GridView1_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
    {
        GridView1.EditIndex = -1;
        bind();
    }
    protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {
        rdl.flag = "delete";
        rdl.reqid = Convert.ToInt32(((Label)GridView1.Rows[e.RowIndex].FindControl("lblreqid")).Text);
        rbl.save(rdl);
        bind();
    }
}