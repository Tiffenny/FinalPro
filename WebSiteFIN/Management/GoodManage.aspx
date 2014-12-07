<%@ Page Language="C#" AutoEventWireup="true" CodeFile="GoodManage.aspx.cs" Inherits="Management_GoodManage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <br />
        <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="GoodId" DataSourceID="SqlDataSource1">
            <Columns>
                <asp:BoundField DataField="GoodId" HeaderText="GoodId" ReadOnly="True" SortExpression="GoodId" />
                <asp:BoundField DataField="GoodName" HeaderText="GoodName" SortExpression="GoodName" />
                <asp:BoundField DataField="GoodType" HeaderText="GoodType" SortExpression="GoodType" />
                <asp:BoundField DataField="GoodPrice" HeaderText="GoodPrice" SortExpression="GoodPrice" />
                <asp:BoundField DataField="GoodSale" HeaderText="GoodSale" SortExpression="GoodSale" />
                <asp:CommandField ButtonType="Button" ShowDeleteButton="True" ShowEditButton="True" />
            </Columns>
        </asp:GridView>
        <br />
        <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" DataKeyNames="GoodId" DataSourceID="SqlDataSource1" DefaultMode="Insert" Height="50px" OnItemDeleted="DetailsView1_ItemDeleted" OnItemInserted="DetailsView1_ItemInserted" OnItemUpdated="DetailsView1_ItemUpdated" Width="125px">
            <Fields>
                <asp:BoundField DataField="GoodId" HeaderText="GoodId" ReadOnly="True" SortExpression="GoodId" />
                <asp:BoundField DataField="GoodName" HeaderText="GoodName" SortExpression="GoodName" />
                <asp:BoundField DataField="GoodType" HeaderText="GoodType" SortExpression="GoodType" />
                <asp:BoundField DataField="GoodPrice" HeaderText="GoodPrice" SortExpression="GoodPrice" />
                <asp:BoundField DataField="GoodSale" HeaderText="GoodSale" SortExpression="GoodSale" />
                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowInsertButton="True" />
            </Fields>
        </asp:DetailsView>
        <br />
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:iDrinkConnectionString %>" DeleteCommand="DELETE FROM [GOODS] WHERE [GoodId] = @GoodId" InsertCommand="INSERT INTO [GOODS] ([GoodId], [GoodName], [GoodType], [GoodPrice], [GoodSale]) VALUES (@GoodId, @GoodName, @GoodType, @GoodPrice, @GoodSale)" SelectCommand="SELECT * FROM [GOODS]" UpdateCommand="UPDATE [GOODS] SET [GoodName] = @GoodName, [GoodType] = @GoodType, [GoodPrice] = @GoodPrice, [GoodSale] = @GoodSale WHERE [GoodId] = @GoodId">
            <DeleteParameters>
                <asp:Parameter Name="GoodId" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="GoodId" Type="Int32" />
                <asp:Parameter Name="GoodName" Type="String" />
                <asp:Parameter Name="GoodType" Type="String" />
                <asp:Parameter Name="GoodPrice" Type="Int32" />
                <asp:Parameter Name="GoodSale" Type="Int32" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="GoodName" Type="String" />
                <asp:Parameter Name="GoodType" Type="String" />
                <asp:Parameter Name="GoodPrice" Type="Int32" />
                <asp:Parameter Name="GoodSale" Type="Int32" />
                <asp:Parameter Name="GoodId" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
        <br />
    
    </div>
    </form>
</body>
</html>
