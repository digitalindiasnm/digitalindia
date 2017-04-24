using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for requirement_DAL
/// </summary>
public class requirement_DAL
{
    public int reqid { get; set; }
    public int uid { get; set; }
    public string job_title { get; set; }
    public string quali { get; set; }
    public string expr { get; set; }
    public string j_desc { get; set; }
    public int no_vacan { get; set; }
    public string sal_pack { get; set; }
    public string flag { get; set; }

	public requirement_DAL()
	{
		//
		// TODO: Add constructor logic here
		//
	}
}