using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for ngo_DAL
/// </summary>
public class ngo_DAL
{
    public long np_id { get; set; }
    public long u_id { get; set; }
    public int s_id { get; set; }
    public int c_id { get; set; }
    public int l_id { get; set; }
    public string ngo_name { get; set; }
    public string address { get; set; }
    public string n_pic { get; set; }
    public string description { get; set; }
    public string flag { get; set; }
    
	public ngo_DAL()
	{
		//
		// TODO: Add constructor logic here
		//
	}
}