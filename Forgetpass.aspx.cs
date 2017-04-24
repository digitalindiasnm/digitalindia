using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Net;
using System.IO;
using System.Net.Mail;
using System.Net.Security;

public partial class Forgetpass : System.Web.UI.Page
{
    register_BAL rbl = new register_BAL();
    register_DAL rdl = new register_DAL();
    DataSet ds = new DataSet();

    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void btnsubmit_Click(object sender, EventArgs e)
    {
        if (Session["UserType"].ToString() == "User")
        {
            rdl.flag = "forgetPass";
            rdl.email = txtmail.Text;
            rdl.user_type = Session["UserType"].ToString();
            ds = rbl.fetch(rdl);
            if (ds.Tables[0].Rows.Count > 0)
            {
                string pass = ds.Tables[0].Rows[0]["password"].ToString();
                string toemail = txtmail.Text;
                string senderID = "digitalindiasnm@gmail.com";
                string senderpassword = "digitalindiamns";
                string body = "Youre Password is " + pass + ". \n".ToString();
             
                MailMessage mail = new MailMessage();
                mail.To.Add(toemail);
                mail.From = new MailAddress(senderID );
                mail.Subject = "Password";
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
        if (Session["UserType"].ToString() == "NGO")
        {
            rdl.flag = "forgetPass";
            rdl.email = txtmail.Text;
            rdl.user_type = Session["UserType"].ToString();
            ds = rbl.fetch(rdl);
            if (ds.Tables[0].Rows.Count > 0)
            {
                string pass = ds.Tables[0].Rows[0]["password"].ToString();
                string toemail = txtmail.Text;
                string senderID = "digitalindiasnm@gmail.com";
                string senderpassword = "digitalindiamns";
                string body = "Youre Password is " + pass + ". \n".ToString();

                MailMessage mail = new MailMessage();
                mail.To.Add(toemail);
                mail.From = new MailAddress(senderID);
                mail.Subject = "Password";
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
        if (Session["UserType"].ToString() == "Government")
        {
            rdl.flag = "forgetPass";
            rdl.email = txtmail.Text;
            rdl.user_type = Session["UserType"].ToString();
            ds = rbl.fetch(rdl);
            if (ds.Tables[0].Rows.Count > 0)
            {
                string pass = ds.Tables[0].Rows[0]["password"].ToString();
                string toemail = txtmail.Text;
                string senderID = "digitalindiasnm@gmail.com";
                string senderpassword = "digitalindiamns";
                string body = "Youre Password is " + pass + ". \n".ToString();

                MailMessage mail = new MailMessage();
                mail.To.Add(toemail);
                mail.From = new MailAddress(senderID);
                mail.Subject = "Password";
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
        if (Session["UserType"].ToString() == "Ambassador")
        {
            rdl.flag = "forgetPass";
            rdl.email = txtmail.Text;
            rdl.user_type = Session["UserType"].ToString();
            ds = rbl.fetch(rdl);
            if (ds.Tables[0].Rows.Count > 0)
            {
                string pass = ds.Tables[0].Rows[0]["password"].ToString();
                string toemail = txtmail.Text;
                string senderID = "digitalindiasnm@gmail.com";
                string senderpassword = "digitalindiamns";
                string body = "Youre Password is " + pass + ". \n".ToString();

                MailMessage mail = new MailMessage();
                mail.To.Add(toemail);
                mail.From = new MailAddress(senderID);
                mail.Subject = "Password";
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
        if (Session["UserType"].ToString() == "Company")
        {
            rdl.flag = "forgetPass";
            rdl.email = txtmail.Text;
            rdl.user_type = Session["UserType"].ToString();
            ds = rbl.fetch(rdl);
            if (ds.Tables[0].Rows.Count > 0)
            {
                string pass = ds.Tables[0].Rows[0]["password"].ToString();
                string toemail = txtmail.Text;
                string senderID = "digitalindiasnm@gmail.com";
                string senderpassword = "digitalindiamns";
                string body = "Youre Password is " + pass + ". \n".ToString();

                MailMessage mail = new MailMessage();
                mail.To.Add(toemail);
                mail.From = new MailAddress(senderID);
                mail.Subject = "Password";
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