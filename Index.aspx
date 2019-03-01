<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Index.aspx.cs" Inherits="UserRegistration.Index" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Registration Page</title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:HiddenField ID="hfUserID" runat="server" />
            <h1 style="text-align:center; color:blue">Registration Form</h1>
            <table align="center">
                <tr>
                    <td>
                        <asp:Label ID="lblFirstName" runat="server">First Name:</asp:Label>
                    </td>
                    <td colspan="2">
                        <asp:TextBox ID="txtFirstName" required="required" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="lblLastName" runat="server">Last Name:</asp:Label>
                    </td>
                    <td colspan="2">
                        <asp:TextBox ID="txtLastName" required="required" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="lblContact" runat="server">Contact:</asp:Label>
                    </td>
                    <td colspan="2">
                        <asp:TextBox ID="txtContact" TextMode="Number" required="required" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="lblGender" runat="server">Gender</asp:Label>
                    </td>
                    <td colspan="2">
                        <asp:DropDownList ID="ddlGender" runat="server">
                            <asp:ListItem Value="Male">Male</asp:ListItem>
                            <asp:ListItem Value="Female">Female</asp:ListItem>
                        </asp:DropDownList>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="lblAddress" runat="server">Address:</asp:Label>
                    </td>
                    <td colspan="2">
                        <asp:TextBox ID="txtAddress" required="required" TextMode="MultiLine" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td colspan="3">
                         <hr />
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="lblUserName" runat="server">UserName:</asp:Label>
                    </td>
                    <td colspan="2">
                        <asp:TextBox ID="txtUserName" required="required" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="lblPassword" runat="server">Password:</asp:Label>
                    </td>
                    <td colspan="2">
                        <asp:TextBox ID="txtPassword" TextMode="Password" required="required" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="lblConfirmPassword" runat="server">Confirm Password:</asp:Label>
                    </td>
                    <td colspan="2">
                        <asp:TextBox ID="txtConfirmPassword" required="required" TextMode="Password" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td></td>
                    <td colspan="2">
                        <asp:Button ID="btnSubmit" Text="Submit" OnClick="btnSubmit_Click" runat="server" />
                    </td>
                </tr>
                <tr>
                    <td></td>
                    <td colspan="2">
                        <asp:Label ID="lblSucess" Text="" runat="server" ForeColor="Green" ></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td></td>
                    <td colspan="2">
                        <asp:Label ID="lblError" Text="" runat="server" ForeColor="Red" ></asp:Label>
                    </td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
