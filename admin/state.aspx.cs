using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class admin_state : System.Web.UI.Page
{
    state_DAL sdl = new state_DAL();
    state_BAL sbl = new state_BAL();

    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnstate_Click(object sender, EventArgs e)
    {
        sdl.flag="insert";
        sdl.s_name = txtstate.Text;
        sbl.save(sdl);
        txtstate.Text = string.Empty;
    }

}