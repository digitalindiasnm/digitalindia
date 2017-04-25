using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Net;
using System.IO;
using System.Net.Mail;
using System.Net.Security;

public partial class company_sendmail : System.Web.UI.Page
{
    register_BAL rbl = new register_BAL();
    register_DAL rdl = new register_DAL();
    
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            bindGrid();
        }
    }
    public void bindGrid()
    {
        rdl.flag = "selectsend";
       // rdl.u_id = Convert.ToInt32(Session["uid"]);
        GridView1.DataSource = rbl.fetch(rdl);
        GridView1.DataBind();
    }
    protected void btn1_Click(object sender, EventArgs e)
    {
        for (int i = 0; i < GridView1.Rows.Count; i++)
        {
            if (((CheckBox)GridView1.Rows[i].FindControl("Chkselect")).Checked)
            {
                string emailid = ((Label)GridView1.Rows[i].FindControl("lblemail")).Text;
                var cnm = Session["name"].ToString();
                string senderID = "parmarmj205@gmail.com";
                string senderpassword = "jashan2002";
                string body = " In Our Company "+cnm+" Multiple positions are there If you are eligible for any post then Reply Back.";

                MailMessage mail = new MailMessage();
                mail.From = new MailAddress(senderID);
                mail.To.Add(emailid);
                mail.Subject = "New Requirement Details.";
                mail.Body = body;
                mail.IsBodyHtml = true;
                SmtpClient smtp = new SmtpClient();
                smtp.Host = "smtp.gmail.com";
                smtp.Credentials = new System.Net.NetworkCredential(senderID, senderpassword);
                smtp.Port = 587;
                smtp.EnableSsl = true;
                smtp.Send(mail);
            }
        }
    }
}