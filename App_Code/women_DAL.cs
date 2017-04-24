using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for women_DAL
/// </summary>
public class women_DAL
{
    public long w_id { get; set; }
    public long u_id { get; set; }
    public long ngo_id{get; set;}
    public string complain { get; set; }
    public string advice { get; set; }
    public string flag { get; set; }
	public women_DAL()
	{
		//
		// TODO: Add constructor logic here
		//
	}
}