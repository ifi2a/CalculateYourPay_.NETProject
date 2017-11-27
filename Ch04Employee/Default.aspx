<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Chapter 4: Multi-Page Employee Example</title>
    <style type="text/css">
        .style1
        {
            width: 550px;
        }
        .style3
        {
            color: #006666;
            font-family: "Courier New", Courier, monospace;
            font-size: x-large;
        }
        .auto-style1 {
            width: 85px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <br />
        <span class="style3"><strong>Employee Information</strong></span><br />
        <br />
        <table class="style1">
            <tr>
                <td class="auto-style1">
                    Title:&nbsp;
                </td>
                <td>
                    <asp:DropDownList ID="ddlTitle" runat="server" DataSourceID="AccessDataSource1" DataTextField="Job_Title" DataValueField="TitleID">
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td class="auto-style1">
                    First Name:&nbsp;
                </td>
                <td>
                    <asp:TextBox ID="txtFirstName" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                        ControlToValidate="txtFirstName" Display="Dynamic" 
                        ErrorMessage="*First name is required" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style1">
                    Last Name:&nbsp;
                </td>
                <td>
                    <asp:TextBox ID="txtLastName" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                        ControlToValidate="txtLastName" Display="Dynamic" 
                        ErrorMessage="*Last name is required" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style1">
                    Pay Rate:&nbsp;
                </td>
                <td>
                    <asp:TextBox ID="txtPayRate" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                        ControlToValidate="txtPayRate" Display="Dynamic" 
                        ErrorMessage="*Pay rate is required" ForeColor="Red"></asp:RequiredFieldValidator>
                    <asp:RangeValidator ID="RangeValidator1" runat="server" 
                        ControlToValidate="txtPayRate" Display="Dynamic" 
                        ErrorMessage="*Pay rate must be from 1 to 200" ForeColor="Red" 
                        MaximumValue="200" MinimumValue="1" Type="Double"></asp:RangeValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style1">
                    Hours:&nbsp;
                </td>
                <td>
                    <asp:TextBox ID="txtHours" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                        ControlToValidate="txtHours" Display="Dynamic" 
                        ErrorMessage="*Hours is required" ForeColor="Red"></asp:RequiredFieldValidator>
                    <asp:RangeValidator ID="RangeValidator2" runat="server" 
                        ControlToValidate="txtHours" Display="Dynamic" 
                        ErrorMessage="*Hours must be from 1 to 80" ForeColor="Red" Type="Double" MaximumValue="80" MinimumValue="1"></asp:RangeValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style1">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style1">
                    &nbsp;</td>
                <td>
                    <asp:Button ID="btnSummary" runat="server" Text="Summary Page" OnClick="btnSummary_Click" />
&nbsp;&nbsp;&nbsp;
                    <asp:Button ID="btnClear" runat="server" Text="Clear All" 
                        CausesValidation="False" OnClick="btnClear_Click" />
                </td>
            </tr>
        </table>
        <br />
        <asp:AccessDataSource ID="AccessDataSource1" runat="server" DataFile="~/App_Data/JobTitleDatabase.mdb" SelectCommand="SELECT [TitleID], [Job Title] AS Job_Title FROM [tblJobTitles] ORDER BY [Job Title]"></asp:AccessDataSource>
        <br />
        <br />
    
    </div>
    </form>
</body>
</html>
