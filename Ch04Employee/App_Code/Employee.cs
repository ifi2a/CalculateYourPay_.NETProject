using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for Employee
/// </summary>
public class Employee
{
	public Employee()
	{
		//
		// TODO: Add constructor logic here
		//
	}

    //Properties
    public string TitleID { get; set; }
    public string Title { get; set; }
    public string FirstName { get; set; }
    public string LastName { get; set; }
    public double PayRate { get; set; }
    public double Hours { get; set; }

    //Property for GrossPay
    public double GrossPay{get{return PayRate*Hours;}}





}