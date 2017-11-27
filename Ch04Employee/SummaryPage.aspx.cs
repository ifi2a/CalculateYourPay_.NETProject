using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class SummaryPage : System.Web.UI.Page
{

    //Declare a variable as an Employee type
    Employee sessionEmployee;

    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["Employee"] != null)
        {
            sessionEmployee = (Employee)Session["Employee"];

            lblTitle.Text =
                sessionEmployee.Title;
            lblFirstName.Text =
                sessionEmployee.FirstName;
            lblLastName.Text =
                sessionEmployee.LastName;
            lblGrossPay.Text =
                sessionEmployee.GrossPay.ToString("c");

        }


    }
}