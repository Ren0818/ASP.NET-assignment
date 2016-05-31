<%@ Page Language="C#" AutoEventWireup="true" CodeFile="DisplayCode.aspx.cs" Inherits="ass2_DisplayCode" %>

<!DOCTYPE html>

<html>
<head>
  <title>code</title>
  
</head>
<body>
  <h1 class="pageHeader">Source Code</h1>
  <asp:label id="FileName" 
          CssClass="codeheader" Runat="server"/> 
  <asp:Panel id="pnlCode" CssClass="code" 
    runat="server" Width="80%"> 
    <asp:label id="Code" Runat="server" /> 
  </asp:Panel>
</body>
</html>
