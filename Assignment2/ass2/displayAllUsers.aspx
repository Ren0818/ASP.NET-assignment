<%@ Page Language="C#" AutoEventWireup="true" CodeFile="displayAllUsers.aspx.cs" Inherits="ass2_displayAllUsers" %>

<!DOCTYPE html>


<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style  type="text/css">
        .hidden
        {
            display:none ;
            }
        .auto-style1 {
            width: 200px;
            height: 30px;
        }
    </style>
</head>

<body>
    <form id="form1" runat="server">
    <div>
    <h1>Users List</h1>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" CellPadding="3" DataKeyNames="UserId" DataSourceID="SqlDataSource1" ForeColor="Black" GridLines="Vertical" OnRowCommand="displayPW">
            <AlternatingRowStyle BackColor="#CCCCCC" />
            <Columns>
                <asp:BoundField DataField="UserId" HeaderText="UserId" InsertVisible="False" ReadOnly="True" SortExpression="UserId" />
                <asp:BoundField DataField="UserName" HeaderText="UserName" SortExpression="UserName" />
                <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email" />
                <asp:BoundField DataField="Phone" HeaderText="Phone" SortExpression="Phone" />
                <asp:BoundField DataField="Gender" HeaderText="Gender" SortExpression="Gender" />
                <asp:BoundField DataField="Age" HeaderText="Age" SortExpression="Age" />
                <asp:BoundField DataField="Type" HeaderText="Type" SortExpression="Type" />
              
              
              
                <asp:BoundField DataField="Password" HeaderText="Password" SortExpression="Password" Visible="True" >
                    <HeaderStyle CssClass="hidden" />
                    <ItemStyle CssClass="hidden" />
                
                </asp:BoundField>
              <asp:ButtonField ButtonType="Button" Text="Display Password"/>
              
              
            </Columns>
            <FooterStyle BackColor="#CCCCCC" />
            <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
            <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
            <SortedAscendingCellStyle BackColor="#F1F1F1" />
            <SortedAscendingHeaderStyle BackColor="#808080" />
            <SortedDescendingCellStyle BackColor="#CAC9C9" />
            <SortedDescendingHeaderStyle BackColor="#383838" />
        </asp:GridView>
        <br />
        
        <br />
        <asp:Label ID="Label1" runat="server" Text="Click button to see password"></asp:Label>
        
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:AssignuserConnectionString %>" ProviderName="<%$ ConnectionStrings:AssignuserConnectionString.ProviderName %>" SelectCommand="SELECT [UserId], [UserName], [Email], [Phone], [Gender], [Age], [Type], [Password] FROM [users]"></asp:SqlDataSource>
        <br />
        <a href="DisplayCode.aspx?filename=displayAllUsers.aspx" target="_blank">
        <img alt="" class="auto-style1" src="ass2image/codebuttondisplayrecords.jpg" /><br /></a>
    </div>
    </form>
</body>
</html>
