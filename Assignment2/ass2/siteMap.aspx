<%@ Page Title="" Language="C#" MasterPageFile="~/ass2/MasterPage.master" AutoEventWireup="true" CodeFile="siteMap.aspx.cs" Inherits="ass2_siteMap" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentBody" Runat="Server">
    <asp:TreeView ID="TreeView1" runat="server" DataSourceID="SiteMapDataSource1" ImageSet="BulletedList3" ShowExpandCollapse="False" style="font-size: xx-large">
        <HoverNodeStyle Font-Underline="True" ForeColor="#5555DD" />
        <NodeStyle Font-Names="Verdana" Font-Size="15pt" ForeColor="White" HorizontalPadding="5px" NodeSpacing="0px" VerticalPadding="0px" />
        <ParentNodeStyle Font-Bold="False" />
        <SelectedNodeStyle Font-Underline="True" ForeColor="#5555DD" HorizontalPadding="0px" VerticalPadding="0px" />
    </asp:TreeView>
    <asp:SiteMapDataSource ID="SiteMapDataSource1" runat="server" />
    <br />
    <br />
    <a href="DisplayCode.aspx?filename=siteMap.aspx" target="_blank">
    <img alt="" class="auto-style23" src="ass2image/codebuttonSiteMap.jpg" /></a>
</asp:Content>

