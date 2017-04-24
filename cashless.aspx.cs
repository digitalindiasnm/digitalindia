using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Net;
using System.IO;

public partial class cashless : System.Web.UI.Page
{
    application_BAL abl = new application_BAL();
    application_DAL adl = new application_DAL();

    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            bind();
        }
    }
    public void bind()
    {
        adl.flag = "select";
        DataList1.DataSource = abl.fetch(adl);
        DataList1.DataBind();
    }

    public static string MimeType(string Extension)
    {
        string mime = "application/octetstream";
        if (string.IsNullOrEmpty(Extension))
            return mime;
        string ext = Extension.ToLower();
        Microsoft.Win32.RegistryKey rk = Microsoft.Win32.Registry.ClassesRoot.OpenSubKey(ext);
        if (rk != null && rk.GetValue("Content Type") != null)
            mime = rk.GetValue("Content Type").ToString();
        return mime;
    } 

    protected void DataList1_ItemCommand1(object source, DataListCommandEventArgs e)
    {
        if (e.CommandName == "apk")
        {
            int rowindex = Convert.ToInt32(e.CommandArgument);
            DataListItem item = DataList1.Items[rowindex];
            string filepath = Server.MapPath(((Label)DataList1.Items[rowindex].FindControl("lblapk")).Text);
            WebClient wc = new WebClient();
            Byte[] buffer = wc.DownloadData(filepath);
            if (buffer != null)
            {
                Response.ContentType = MimeType(Path.GetExtension(filepath));
                Response.AddHeader("Content-Disposition", string.Format("attachment; filename = {0}", Path.GetFileName(filepath)));
                Response.AddHeader("content-Length", buffer.Length.ToString());
                Response.BinaryWrite(buffer);
            }
           
        }
    }
}