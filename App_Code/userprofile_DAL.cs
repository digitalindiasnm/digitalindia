using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for userprofile_DAL
/// </summary>
public class userprofile_DAL
{
    public long up_id { get; set; }
    public long u_id { get; set; }
    public string address { get; set; }
    public string gender { get; set; }
    public DateTime dob { get; set; }
    public string u_pic { get; set; }
    public int s_id { get; set; }
    public int c_id { get; set; }
    public int l_id { get; set; }
    public string flag { get; set; }
    public int lid { get; set; }

	public userprofile_DAL()
	{
		//
		// TODO: Add constructor logic here
		//
	}
}