<%@ Page Language="C#" AutoEventWireup="true" CodeFile="SummaryPage.aspx.cs" Inherits="SummaryPage" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .style3
        {
            color: #006666;
            font-family: "Courier New", Courier, monospace;
            font-size: x-large;
        }
        .style5
        {
            width: 120px;
        }
        .auto-style1 {
            width: 120px;
            height: 28px;
        }
        .auto-style2 {
            height: 28px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <br />
        <span class="style3"><strong>Employee Payroll Summary</strong></span><br />
        <br />
        <table cellpadding="3" cellspacing="3">
            <tr>
                <td class="auto-style1">
                    Title:&nbsp; 
                </td>
                <td class="auto-style2">
                    <asp:Label ID="lblTitle" runat="server"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="style5">
                    First Name:&nbsp;
                </td>
                <td>
                    <asp:Label ID="lblFirstName" runat="server"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="style5">
                    Last Name:&nbsp;
                </td>
                <td>
                    <asp:Label ID="lblLastName" runat="server"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="style5">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style5">
                    Gross Pay:&nbsp;
                </td>
                <td>
                    <asp:Label ID="lblGrossPay" runat="server"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="style5">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style5">
                   &nbsp;</td>
                <td>
                    <asp:Button ID="btnReturn" runat="server" 
                        Text="Return" PostBackUrl="~/Default.aspx" />
                </td>
            </tr>
        </table>
        <br />
    
    </div>
    </form>
</body>
</html>
