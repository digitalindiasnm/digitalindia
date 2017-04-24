using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for scan_DAL
/// </summary>
public class scan_DAL
{
    public long scan_id { get; set; }
    public long u_id { get; set; }
    public string path { get; set; }
    public string form_no { get; set; }
    public string status { get; set; }
    public string flag { get; set; }
	public scan_DAL()
	{
		//
		// TODO: Add constructor logic here
		//
	}
}