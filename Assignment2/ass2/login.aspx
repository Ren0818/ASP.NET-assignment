<%@ Page Title="" Language="C#" MasterPageFile="~/ass2/MasterPage.master" AutoEventWireup="true" CodeFile="login.aspx.cs" Inherits="ass2_login" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentBody" Runat="Server">
     <asp:AccessDataSource ID="DS1" runat="server" DataFile="Assign2user.mdb" OnSelected="CheckLogin" />

    <div>
    <asp:Login ID="Login" runat="server" OnAuthenticate="Login_Authenticate" 
        BackColor="#EFF3FB" BorderColor="#B5C7DE" BorderPadding="4" BorderStyle="Solid" BorderWidth="1px" Font-Names="Verdana" Font-Size="1.1em" ForeColor="#333333" Height="217px" Width="575px"
         TitleText="Please enter your details below to login for the site."
        UserNameLabelText="Username:" UserNameRequiredErrorMessage="Username required<p/>"
         PasswordLabelText="Password:" PasswordRequiredErrorMessage="Password required"
         LoginButtonText="Click to login" DisplayRememberMe="false">
        <InstructionTextStyle Font-Italic="True" ForeColor="Black" />
        <LoginButtonStyle BackColor="White" BorderColor="#507CD1" BorderStyle="Solid" BorderWidth="1px" Font-Names="Verdana" Font-Size="0.8em" ForeColor="#284E98" />
        <TextBoxStyle Font-Size="0.8em" />
        <TitleTextStyle BackColor="#507CD1" Font-Bold="True" Font-Size="0.9em" ForeColor="White" />
    </asp:Login>
        </div>
     <asp:ValidationSummary id="vlSummary1" Font-Names="Arial" 
        Visible="true" CssClass="vldSummary" 
        runat="server" ValidationGroup="Login" 
        HeaderText="Please correct the following errors:" ForeColor="Red" />
     <br />
      <a href="DisplayCode.aspx?filename=login.aspx" target="_blank">
     <img alt="" class="auto-style23" src="ass2image/codebuttonlogin.jpg" />
          </a>
</asp:Content>

