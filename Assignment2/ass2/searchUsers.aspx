<%@ Page Language="C#" AutoEventWireup="true" CodeFile="searchUsers.aspx.cs" Inherits="ass2_searchUsers" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    <h1>Search Users</h1>

        Gender:

        <asp:DropDownList ID="DropDownListGender" runat="server">
            <asp:ListItem>Male</asp:ListItem>
            <asp:ListItem>Female</asp:ListItem>
            

        </asp:DropDownList>


        <br />
        <br />
        UserName:&nbsp;&nbsp;
        <asp:TextBox ID="TextBoxSearchByName" runat="server"></asp:TextBox>
        <br />
        <br />
        Age:
        <asp:RadioButtonList ID="RadioButtonListAge" runat="server">
                 <asp:ListItem>Below 8</asp:ListItem>
                    <asp:ListItem>8 - 15</asp:ListItem>
                    <asp:ListItem>15 - 23</asp:ListItem>
                    <asp:ListItem>Upon 23</asp:ListItem>
        </asp:RadioButtonList>
&nbsp;<br />
        <asp:Button ID="ButtonSearch" runat="server" Text="Search" Width="130px" style="height: 26px" OnClick="ButtonSearch_Click" />
        <br />
        <br />
        <br />
    
        <br />
        <asp:Panel ID="log" Runat="server" Visible="false">
        <asp:DataGrid ID="GridView1" runat="server" AutoGenerateColumns="false">
            <Columns>
                <asp:BoundColumn DataField="UserName" HeaderText="UserName" SortExpression="UserName" />
                <asp:BoundColumn DataField="Email" HeaderText="Email" SortExpression="Email" />
                <asp:BoundColumn DataField="Phone" HeaderText="Phone" SortExpression="Phone" />
                <asp:BoundColumn DataField="Gender" HeaderText="Gender" SortExpression="Gender" />
                <asp:BoundColumn DataField="Age" HeaderText="Age" SortExpression="Age" />
                <asp:BoundColumn DataField="Type" HeaderText="Type" SortExpression="Type" />
            </Columns>
        </asp:DataGrid>
            </asp:Panel>
        <br />
        <asp:label ID="error" Runat="server" Visible="false" ForeColor="#ff0066" Font-Bold="true" Font-Size="14"></asp:label>
        <br />
          <a href="DisplayCode.aspx?filename=searchUsers.aspx" target="_blank">
              <img src="ass2image/codebuttonsearchrecords.jpg" /><br /></a>
        </div>
    </form>
</body>
</html>
