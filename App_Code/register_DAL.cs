using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for register_DAL
/// </summary>
public class register_DAL
{
    public long uid { get; set; }
    public string name { get; set; }
    public string email { get; set; }
    public string password { get; set; }
    public long contact { get; set; }
    public string user_type { get; set; }
    public string flag { get; set; }
    public string status { get; set; }
	public register_DAL()
	{
		//
		// TODO: Add constructor logic here
		//
	}
}