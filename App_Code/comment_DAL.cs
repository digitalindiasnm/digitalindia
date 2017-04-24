using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for comment_DAL
/// </summary>
public class comment_DAL
{
    public int cmt_id { get; set; }
    public int uplo_id { get; set; }
    public int u_id { get; set; }
    public string comment { get; set; }
    public string flag { get; set; }

	public comment_DAL()
	{
		//
		// TODO: Add constructor logic here
		//
	}
}