using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Net.Mail;
using System.Net;
using System.Net.Security;

public partial class government_Show_form : System.Web.UI.Page
{
    scan_BAL sbl = new scan_BAL();
    scan_DAL sdl = new scan_DAL();

    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            lbluname.Text = Session["name"].ToString();
            bindGrid();
        }

    }
    public void bindGrid()
    {
        sdl.flag = "selectbyID";
        sdl.u_id = Convert.ToInt32(Session["uid"]);
        GridView1.DataSource = sbl.fetch(sdl);
        GridView1.DataBind();
    }
    protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        if (e.CommandName == "pdf")
        {
            int rowindex = Convert.ToInt32(e.CommandArgument);
            GridViewRow row = GridView1.Rows[rowindex];
            String filepath = Server.MapPath(((Label)GridView1.Rows[rowindex].FindControl("lblpath")).Text);
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
            long uid = Convert.ToInt64(((Label)GridView1.Rows[rowindex].FindControl("lbluid")).Text);
            long sid = Convert.ToInt64(((Label)GridView1.Rows[rowindex].FindControl("lblsid")).Text);

            sdl.flag = "update";
            sdl.u_id = uid;
            sdl.scan_id = sid;
            sdl.status = "Verified";
            sbl.save(sdl);

            string senderID = "parmarmj205@gmail.com";
            string senderpassword = "jashan2002";
            string body = "Your document is verfied ";

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
    protected void GridView1_PageIndexChanging(object sender, GridViewPageEventArgs e)
    {
        GridView1.PageIndex = e.NewPageIndex;
        bindGrid();

    }
}