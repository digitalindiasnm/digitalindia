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

public partial class company_jobapplyDetail : System.Web.UI.Page
{
    company_BAL cbl = new company_BAL();
    company_DAL cdl = new company_DAL();
    protected void Page_Load(object sender, EventArgs e)
    {
        lbluname.Text = Session["name"].ToString();
        if (!IsPostBack)
        {
            bindgrid();
        }

    }
    public void bindgrid()
    {
        cdl.flag = "selectbyID";
        cdl.u_id = Convert.ToInt32(Session["uid"]);
        GridView1.DataSource = cbl.fetch(cdl);
        GridView1.DataBind();

    }
    protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        if (e.CommandName == "pdf")
        {
            int rowindex = Convert.ToInt32(e.CommandArgument);
            GridViewRow row = GridView1.Rows[rowindex];
            String filepath = Server.MapPath(((Label)GridView1.Rows[rowindex].FindControl("lblcv")).Text);
            WebClient wc = new WebClient();
            Byte[] buffer = wc.DownloadData(filepath);
            if (buffer != null)
            {
                Response.ContentType = "application/pdf";
                Response.AddHeader("Content-Length", buffer.Length.ToString());
                Response.BinaryWrite(buffer);
            }
           // if (buffer != null)
           // {
           // //    Response.ContentType = "application/docx";
           // //    Response.AddHeader("Content-Length", buffer.Length.ToString());
           // //    Response.BinaryWrite(buffer);
           //                 Response.ContentType = "application/docx";
           // Response.AppendHeader("Content-Disposition", "attachment; filename=" + filepath);
           // Response.WriteFile(filepath);
           // Response.Flush();
           // Response.End();
           //}
        }
        if (e.CommandName == "mail")
        {
            int rowindex = Convert.ToInt32(e.CommandArgument);
            GridViewRow row = GridView1.Rows[rowindex];
            string email = ((Label)GridView1.Rows[rowindex].FindControl("lblmail")).Text;
            string jobtitle = ((Label)GridView1.Rows[rowindex].FindControl("lblpost")).Text;
            string date = System.DateTime.Now.Date.AddDays(3).ToShortDateString();

            string senderID = "parmarmj205@gmail.com";
            string senderpassword = "jashan2002";
            string body = "You are selected for Interview round for the post of " + jobtitle + ". You have to come for interview on " + date + "\n" ;
           
                MailMessage mail = new MailMessage();
                mail.From = new MailAddress(senderID);
                mail.To.Add(email);
                mail.Subject = "InterView Details";
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