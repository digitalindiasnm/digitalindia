using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for upload_DAL
/// </summary>
public class upload_DAL
{
    public long uplo_id { get; set; }
    public long u_id { get; set; }
    public string uplo_pic { get; set; }
    public string uplo_video { get; set; }
   
    public string description { get; set; }
    public string flag { get; set; }

	public upload_DAL()
	{
		//
		// TODO: Add constructor logic here
		//
	}
}