<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Registration.aspx.cs" Inherits="Registration" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 102%;
            height: 228px;
        }
        .auto-style2 {
            text-align: right;
            width: 150px;
        }
        .auto-style3 {
            margin-right: 0px;
        }
        .auto-style4 {
            text-align: right;
            width: 150px;
            height: 24px;
        }
        .auto-style6 {
            height: 24px;
        }
        .auto-style7 {
            height: 24px;
            width: 249px;
        }
        .auto-style8 {
            width: 249px;
        }
        .auto-style9 {
            text-align: right;
            width: 150px;
            height: 26px;
        }
        .auto-style10 {
            width: 249px;
            height: 26px;
        }
        .auto-style11 {
            height: 26px;
        }
        .auto-style12 {
            text-align: right;
            padding-top: 0px;
            margin-top: 0px;
        }
        .auto-style13 {
            text-align: center;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
        </div>
        <table class="auto-style1">
            <tr>
                <td class="auto-style4">First Name:</td>
                <td class="auto-style7">
                    <asp:TextBox ID="TextBoxFN" runat="server" Width="180px"></asp:TextBox>
                </td>
                <td class="auto-style6">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBoxFN" ErrorMessage="First Name is required" ForeColor="Red" Width="180px"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style9">&nbsp;&nbsp;Last Name:</td>
                <td class="auto-style10">
                    <asp:TextBox ID="TextBoxLN" runat="server" CssClass="auto-style3" Width="180px"></asp:TextBox>
                </td>
                <td class="auto-style11">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBoxLN" ErrorMessage="Last Name is required" ForeColor="Red" Width="180px"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">User Name:</td>
                <td class="auto-style8">
                    <asp:TextBox ID="TextBoxUN" runat="server" Width="180px"></asp:TextBox>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TextBoxUN" ErrorMessage="User Name is required" ForeColor="Red" Width="180px"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">E-mail:</td>
                <td class="auto-style8">
                    <asp:TextBox ID="TextBoxEmail" runat="server" Width="180px"></asp:TextBox>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ControlToValidate="TextBoxEmail" ErrorMessage="Required valid e-mail address" ForeColor="Red" style="height: 19px" Width="180px"></asp:RequiredFieldValidator>
                    <br />
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="TextBoxEmail" ErrorMessage="You must enter a valid e-mail address" ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">Password:</td>
                <td class="auto-style8">
                    <asp:TextBox ID="TextBoxPW" runat="server" TextMode="Password" Width="180px"></asp:TextBox>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="TextBoxPW" ErrorMessage="Passord required" ForeColor="Red" Width="180px"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">Confirm Password:</td>
                <td class="auto-style8">
                    <asp:TextBox ID="TextBoxCPW" runat="server" TextMode="Password" Width="180px"></asp:TextBox>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="TextBoxCPW" ErrorMessage="Reconfirm password" ForeColor="Red" Width="180px"></asp:RequiredFieldValidator>
                    <br />
                    <asp:CompareValidator ID="CompareValidator1" runat="server" ErrorMessage="Both password must be same" ForeColor="Red" ControlToCompare="TextBoxPW" ControlToValidate="TextBoxCPW"></asp:CompareValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">Secret Question:</td>
                <td class="auto-style8">
                    <asp:DropDownList ID="DropDownListSQue" runat="server" Height="17px" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged" Width="180px">
                        <asp:ListItem>Select secret question</asp:ListItem>
                        <asp:ListItem> Who was your childhood hero?</asp:ListItem>
                        <asp:ListItem>What was your childhood nickname?</asp:ListItem>
                        <asp:ListItem>What is your favorite movie?</asp:ListItem>
                        <asp:ListItem>What was your favorite food as a child?</asp:ListItem>
                        <asp:ListItem>What is the name of your elementary school?</asp:ListItem>
                    </asp:DropDownList>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="DropDownListSQue" ErrorMessage="Select Question" ForeColor="Red" InitialValue="Select secret question" Width="180px"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">Secret Answer:</td>
                <td class="auto-style8">
                    <asp:TextBox ID="TextBoxSAns" runat="server" Width="180px"></asp:TextBox>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="TextBoxSAns" ErrorMessage="Secret answer required" ForeColor="Red" Width="180px"></asp:RequiredFieldValidator>
                </td>
            </tr>

        </table>
        <p class="auto-style13">
            <asp:Button ID="Button1" runat="server" BackColor="White" BorderColor="#003300" BorderStyle="Double" ClientIDMode="Static" CssClass="auto-style12" Font-Bold="True" Font-Names="Segoe Print" Font-Overline="False" Font-Size="Large" Height="36px" OnClick="Button1_Click" Text="Submit" Width="116px" />
        </p>
    </form>
</body>
</html>
