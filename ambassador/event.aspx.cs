using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class ambassador_event : System.Web.UI.Page
{
    event_DAL edl = new event_DAL();
    event_BAL ebl = new event_BAL();
    ambassador_DAL adl = new ambassador_DAL();
    ambassador_BAL abl = new ambassador_BAL();
    DataSet ds = new DataSet();

    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {

           // CalendarExtender1.EndDate = System.DateTime.Now;
            lbluname.Text = Session["name"].ToString();
            adl.flag = "selectbyuid";
            adl.u_id = Convert.ToInt32(Session["uid"].ToString());
            ds = abl.fetch(adl);
            if (ds.Tables[0].Rows.Count > 0)
            {
                Session["ap_id"] = ds.Tables[0].Rows[0]["ap_id"].ToString();
            }
          //  CalendarExtender1.EndDate = System.DateTime.Now;
        }
    }
    public void clear()
    {
        txttitle.Text = string.Empty;
        txtdesc.Text = string.Empty;
        txtdate.Text = string.Empty;
        txttime.Text = string.Empty;
        txtaddr.Text = string.Empty;


    }
    protected void btnsubmit_Click(object sender, EventArgs e)
    {
        fpos.SaveAs(Server.MapPath("~/images/") + fpos.FileName);
        edl.flag = "insert";
        edl.ap_id = Convert.ToInt32(Session["ap_id"].ToString());
        edl.u_id = Convert.ToInt32(Session["uid"].ToString());
        edl.title = txttitle.Text;
        edl.e_desc = txtdesc.Text;
        edl.date = txtdate.Text;
        edl.time = txttime.Text;
        edl.address = txtaddr.Text;
        edl.pic = "../images/" + fpos.FileName;
        ebl.save(edl);

        clear();
    }
}