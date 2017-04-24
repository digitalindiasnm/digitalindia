using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for application_DAL
/// </summary>
public class application_DAL
{
    public long app_id { get; set; }
    public string app_name { get; set; }
    public string app_apk { get; set; }
    public string app_desc { get; set; }
    public string flag { get; set; }
    public string app_icon { get; set; }
    
	public application_DAL()
	{
    }
}