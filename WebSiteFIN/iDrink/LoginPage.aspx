<%@ Page Language="C#" AutoEventWireup="true" CodeFile="LoginPage.aspx.cs" Inherits="iDrink_LoginPage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            width: 219px;
        }
        .auto-style4 {
            width: 187px;
        }
        .auto-style5 {
            width: 358px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <br />
        <br />
        <table class="auto-style1">
            <tr>
                <td class="auto-style4">&nbsp;</td>
                <td class="auto-style5">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style4">&nbsp;</td>
                <td class="auto-style5">
                    <table class="auto-style1">
                        <tr>
                            <td class="auto-style2">
                                <asp:Label ID="_userNameLabel" runat="server" style="text-align: center" Text="UserName"></asp:Label>
                            </td>
                            <td>
                                <asp:TextBox ID="_userNameTextBox" runat="server"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style2">
                                <asp:Label ID="_userPwdLabel" runat="server" style="text-align: center" Text="Password"></asp:Label>
                            </td>
                            <td>
                                <asp:TextBox ID="_userPwdTextBox" runat="server"></asp:TextBox>
                            </td>
                        </tr>
                    </table>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style4">&nbsp;</td>
                <td class="auto-style5">
                    <asp:Button ID="_loginButton" runat="server" OnClick="_loginButton_Click" Text="Login" />
&nbsp;<asp:Label ID="_errorLabel" runat="server" BorderColor="#FF3300"></asp:Label>
                </td>
                <td>
                    <asp:Button ID="_registerButton" runat="server" Text="Register" />
                </td>
            </tr>
        </table>
        <br />
    
    </div>
    </form>
</body>
</html>
