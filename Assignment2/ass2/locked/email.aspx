<%@ Page Title="" Language="C#" MasterPageFile="~/ass2/locked/MasterPage.master" AutoEventWireup="true" CodeFile="email.aspx.cs" Inherits="ass2_locked_email" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentBody" Runat="Server">
    <span style="font-family: 'Source Sans Pro';color: #FFFFFF"><span style="font-family: 'Source Sans Pro';font-size: xx-large">Email to others</span>
        <br />

<div style="margin-left: 10px">
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" CellPadding="3" DataSourceID="AccessDataSource1" ForeColor="Black" GridLines="Vertical" Width="348px">
        <AlternatingRowStyle BackColor="#CCCCCC" />
        <Columns>
            <asp:BoundField DataField="UserName" HeaderText="UserName" SortExpression="UserName" />
            <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email" />
             <asp:TemplateField HeaderText="Select"> 
          <ItemTemplate>
            <asp:CheckBox runat="server" id="chkEmail" /> 
          </ItemTemplate> 
        </asp:TemplateField>
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
    <asp:AccessDataSource ID="AccessDataSource1" runat="server" DataFile="~/ass2/Assign2user.mdb" SelectCommand="SELECT [UserName], [Email] FROM [users]"></asp:AccessDataSource>

     <br /><br />
    <div style="margin-left: 10px;">
        <span class="auto-style20">
    <table class="emailTable">
    <tr>
      <td class="emailHeader" width="15%">From</td>
      <td class="emailRow">ACG Together</td>
    </tr>
    <tr>
      <td class="emailHeader" width="15%">Subject</td>
      <td class="emailRow">
        <asp:TextBox ID="txtSubject" Width="350" runat="server" ForeColor="Black" />
      </td>
    </tr>
    <tr>
      <td class="emailHeader">Message</td>
      <td class="emailRow">
        <asp:TextBox runat="server" ID="txtMsg" 
          TextMode="MultiLine" Columns="55" Rows="15" ForeColor="Black" />
      </td>
    </tr>
    </table>
    <br />
    
    <asp:Button id="SendMail" runat="server" 
      OnClick="SendEmail" Text="Send Email" ForeColor="Black"/>
        </span>
        <br />
     <asp:label id="lblMail" CssClass="error" runat="server" ForeColor="#3366FF" /><br />
        <a href="../DisplayCode.aspx?filename=locked/email.aspx" target="_blank">
        <img alt="" class="auto-style23" src="../ass2image/codebuttonEmail.jpg" /></a><br />	
        </div> 
    </div>
</asp:Content>

