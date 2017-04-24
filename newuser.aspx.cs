
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.IO;
using System.Net;

public partial class newuser : System.Web.UI.Page
{
    register_BAL rbl = new register_BAL();
    register_DAL rdl = new register_DAL();
    DataSet ds = new DataSet();

    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void lnkregister_Click(object sender, EventArgs e)
    {
        rdl.flag = "insert";
        rdl.name = txtname.Text;
        rdl.email = txtemail.Text;
        rdl.password = txtpass.Text;
        rdl.contact = Convert.ToInt64(txtcon.Text);
        rdl.user_type = Session["UserType"].ToString();
        rbl.save(rdl);
        string strUrl = "http://api.mVaayoo.com/mvaayooapi/MessageCompose?user=digitalindiasnm@gmail.com:digitalindi&senderID=TEST SMS&receipientno="+txtcon.Text+"&msgtxt=You Are Successfull Registered &state=4";
        WebRequest request = HttpWebRequest.Create(strUrl);
        HttpWebResponse response = (HttpWebResponse)request.GetResponse();
        Stream s = (Stream)response.GetResponseStream();
        StreamReader readStream = new StreamReader(s);
        string dataString = readStream.ReadToEnd();
        response.Close();
        s.Close();
        readStream.Close();
        Response.Redirect("Login.aspx");
    }
    protected void btnavail_Click(object sender, EventArgs e)
    {
        rdl.flag = "availableID";
        rdl.email = txtemail.Text;
        ds = rbl.fetch(rdl);
        if (ds.Tables[0].Rows.Count > 0)
        {
            lblemail.Text = "Already Registerd Email-ID";
        }
        else
        {
            lblemail.Text = "Available ID";
        }
    }
}