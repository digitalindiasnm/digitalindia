using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for feedback_DAL
/// </summary>
public class feedback_DAL
{
    public long f_id { get; set; }
    public string name { get; set; }
    public string email { get; set; }
    public string subject { get; set; }
    public string msg { get; set; }
    public string flag { get; set; }
  
  

	public feedback_DAL()
	{
		//
		// TODO: Add constructor logic here
		//
	}
}