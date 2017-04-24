using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for company_DAL
/// </summary>
public class company_DAL
{
    public string flag { get; set; }
    public int cp_id { get; set; }
    public long u_id { get; set; }
    public string c_name { get; set; }
    public string addr { get; set; }
    public string c_pic { get; set; }
    public int s_id { get; set; }
    public int c_id { get; set; }
    public int l_id { get; set; }
    public string licence { get; set; }
    public DateTime dos { get; set; }

	public company_DAL()
	{
		//
		// TODO: Add constructor logic here
		//
	}
}