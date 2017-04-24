using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for event_DAL
/// </summary>
public class event_DAL
{
    public long e_id { get; set; }
    public long ap_id { get; set; }
    public long u_id { get; set; }
    public string title { get; set; }
    public string e_desc { get; set; }
    public string date { get; set; }
    public string time { get; set; }
    public string address { get; set; }
    public string pic { get; set; }
    public string flag { get; set; }

	public event_DAL()
	{
		//
		// TODO: Add constructor logic here
		//
	}
}