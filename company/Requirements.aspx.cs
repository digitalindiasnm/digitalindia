using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;
using System.Net.Mail;
using System.Net.Security;

public partial class company_Requirements : System.Web.UI.Page
{
    requirement_BAL reqbl = new requirement_BAL();
    requirement_DAL reqdl = new requirement_DAL();
    register_BAL rbl = new register_BAL();
    register_DAL rdl = new register_DAL();

    protected void Page_Load(object sender, EventArgs e)
    {
        lbluname.Text = Session["name"].ToString();
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
    public void clear()
    {
        txtjob.Text = string.Empty;
        txtexper.Text = string.Empty;
        txtdesc.Text = string.Empty;
        txtsala.Text = string.Empty;


    }
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
        clear();
    
     for (int i = 0; i < GridView1.Rows.Count; i++)
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
