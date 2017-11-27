using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _Default : System.Web.UI.Page
{
   
    //Declare a variable as an Employee type
    Employee sessionEmployee;
    
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            ddlTitle.DataBind();
            DisplayEmployee();
        }

    }



    protected void btnSummary_Click(object sender, EventArgs e)
    {
        if (IsValid)
        {
            if (sessionEmployee == null)
            {
                sessionEmployee = new Employee();
            }

            sessionEmployee.TitleID =
                ddlTitle.SelectedValue;
            sessionEmployee.Title =
                ddlTitle.SelectedItem.Text;
            sessionEmployee.FirstName =
                txtFirstName.Text;
            sessionEmployee.LastName =
                txtLastName.Text;
            sessionEmployee.PayRate =
                Convert.ToDouble(txtPayRate.Text);
            sessionEmployee.Hours =
                Convert.ToDouble(txtHours.Text);

            Session["Employee"] = sessionEmployee;


            //Redirect control to SummaryPage.aspx
            Response.Redirect("SummaryPage.aspx");

        }


    }

    protected void btnClear_Click(object sender, EventArgs e)
    {
        //Clear the textboxes on the form and
        //Set the dropdown list to the first Title
        ddlTitle.SelectedIndex = 0;
        txtFirstName.Text = "";
        txtLastName.Text = "";
        txtPayRate.Text = "";
        txtHours.Text = "";

        //Remove the Employee session
        Session.Remove("Employee");

    }

    protected void DisplayEmployee()
    {
        if (Session["Employee"] != null)
        {
            sessionEmployee = (Employee)Session["Employee"];

            ddlTitle.SelectedValue =
                sessionEmployee.TitleID;
            txtFirstName.Text =
                sessionEmployee.FirstName;
            txtLastName.Text =
                sessionEmployee.LastName;
            txtPayRate.Text =
                sessionEmployee.PayRate.ToString();
            txtHours.Text =
                sessionEmployee.Hours.ToString();

        }

    }


}