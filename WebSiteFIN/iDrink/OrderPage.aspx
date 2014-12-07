<%@ Page Language="C#" AutoEventWireup="true" CodeFile="OrderPage.aspx.cs" Inherits="iDrink_OrderPage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:Label ID="_memberLabel" runat="server"></asp:Label>
        <br />
        <br />
    
        <asp:RadioButtonList ID="RadioButtonList1" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource1" DataTextField="GoodName" DataValueField="GoodName">
        </asp:RadioButtonList>
        數量 :<br />
        <asp:TextBox ID="_quantityTextBox" runat="server" Width="55px">5</asp:TextBox>
        <br />
        <br />
        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Button" />
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:iDrinkConnectionString %>" SelectCommand="SELECT [GoodName], [GoodPrice] FROM [GOODS]"></asp:SqlDataSource>
    
    </div>
    </form>
</body>
</html>
