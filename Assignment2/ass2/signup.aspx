<%@ Page Title="" Language="C#" MasterPageFile="~/ass2/MasterPage.master" AutoEventWireup="true" CodeFile="~/ass2/signup.aspx.cs" Inherits="signup" %>

<asp:Content ID="Content2" ContentPlaceHolderID="contentBody" runat="Server">
    <link href="css/bootstrap.css" rel="stylesheet" />
    <br />
    <br />
    <table class="style1" border="0">
        <tr>
            <td class="auto-style20" style="text-align: right">
                <strong>UserName:</strong></td>
            <td class="style6" style="width: 247px">
                <asp:TextBox ID="signpageUN" runat="server" Width="210px"
                    Style="margin-left: 0px"></asp:TextBox>
            </td>
            <td class="style11">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server"
                    ControlToValidate="signpageUN" ErrorMessage="User name is required"
                    ForeColor="Red"></asp:RequiredFieldValidator>
                <br />
            </td>
        </tr>
        <tr>
            <td class="auto-style20" style="text-align: right">
                <strong>Password</strong></td>
            <td class="style6" style="width: 247px">
                <asp:TextBox ID="signpagePW" runat="server" TextMode="Password" Width="210px"></asp:TextBox>
            </td>
            <td class="style11">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server"
                    ControlToValidate="signpagePW" ErrorMessage="Password is required"
                    ForeColor="Red"></asp:RequiredFieldValidator>
                <br />
                <br />
            </td>
        </tr>
        <tr>
            <td class="auto-style20" style="text-align: right">
                <strong>Confirm Password:</strong></td>
            <td class="style7" style="width: 247px">
                <asp:TextBox ID="signpageCP" runat="server" TextMode="Password" Width="210px"></asp:TextBox>
            </td>
            <td class="style12">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server"
                    ControlToValidate="signpageCP" ErrorMessage="Password is required"
                    ForeColor="Red"></asp:RequiredFieldValidator>
                <br />
                <asp:CompareValidator ID="CompareValidator1" runat="server"
                    ControlToCompare="signpagePW" ControlToValidate="signpageCP"
                    ErrorMessage="Both password should be same" ForeColor="Red"></asp:CompareValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style20" style="text-align: right">
                <strong>Email:</strong></td>
            <td class="style6" style="width: 247px">
                <asp:TextBox ID="signpageEm" runat="server" Width="210px"></asp:TextBox>
            </td>
            <td class="style11">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server"
                    ControlToValidate="signpageEm" ErrorMessage="Email is required" ForeColor="Red"></asp:RequiredFieldValidator>
                <br />
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server"
                    ControlToValidate="signpageEm" ErrorMessage="Invalid Email" ForeColor="Red"
                    ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style20" style="text-align: right">
                <strong>Phone:</strong></td>
            <td class="style6" style="width: 247px">
                <asp:TextBox ID="signpagePh" runat="server" Width="210px"></asp:TextBox>
            </td>
            <td class="style11">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server"
                    ControlToValidate="signpagePh" ErrorMessage="Phone is required" ForeColor="Red"></asp:RequiredFieldValidator>
                <br />
                <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server"
                    ControlToValidate="signpagePh" ErrorMessage="Invalid Phone" ForeColor="Red"
                    ValidationExpression="^\d{10}$"></asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style20" style="text-align: right">
                <strong>Gender:</strong></td>
            <td style="width: 247px">
                <asp:DropDownList ID="genderDropDownList" runat="server" Width="148px">
                    <asp:ListItem>Select Gender</asp:ListItem>
                    <asp:ListItem>Male</asp:ListItem>
                    <asp:ListItem>Female</asp:ListItem>
                </asp:DropDownList>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server"
                    ControlToValidate="genderDropDownList" ErrorMessage="Gender is required"
                    ForeColor="Red" InitialValue="Select Gender"></asp:RequiredFieldValidator>
                <br />
                <br />
            </td>
        </tr>
        <tr>
            <td class="auto-style20" style="text-align: right">
                <strong>Age:</strong></td>
            <td style="width: 247px">
                <asp:RadioButtonList ID="RadioButtonListAge" runat="server" CssClass="auto-style20">
                    <asp:ListItem>Below 8</asp:ListItem>
                    <asp:ListItem>8 - 15</asp:ListItem>
                    <asp:ListItem>15 - 23</asp:ListItem>
                    <asp:ListItem>Upon 23</asp:ListItem>
                </asp:RadioButtonList>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ErrorMessage="Age is required" ForeColor="Red" ControlToValidate="RadioButtonListAge"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style20" style="text-align: right">
                <strong>Any prefered type?</strong> </td>
            <td style="width: 247px">
                <asp:CheckBox ID="CheckBoxPrefer" runat="server" ForeColor="White" Text="Yes" AutoPostBack="true" OnCheckedChanged="CheckBoxPrefer_CheckedChanged" />
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <asp:Panel ID="Panel1" runat="server" Visible="false">
                <td class="auto-style20" style="text-align: right">
                    <strong>If Yes, which one?</strong></td>
                <td>
                    <asp:ListBox ID="typePerfer" runat="server" Width="210px">
                        <asp:ListItem>Romantic</asp:ListItem>
                        <asp:ListItem>Comedy</asp:ListItem>
                        <asp:ListItem>Action</asp:ListItem>
                        <asp:ListItem>Drama/Tragedy</asp:ListItem>
                        <asp:ListItem>Supernatural/Magic</asp:ListItem>
                        <asp:ListItem>Mecha/Military</asp:ListItem>
                        <asp:ListItem>Others</asp:ListItem>
                    </asp:ListBox>
                </td>
                <td>&nbsp;</td>
            </asp:Panel>
        </tr>

        <tr>
            <td class="auto-style20">&nbsp;</td>
            <td class="style6" style="width: 247px">
                <asp:Button ID="Button1" runat="server" Class="btn btn-primary" OnClick="Button1_Click" Text="Submit"
                    Width="88px" />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <input id="Reset1" class="btn btn-primary" style="width: 73px" type="reset" value="reset" /></td>
            <td class="style11">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style20">&nbsp;</td>
            <td class="style6" style="width: 247px">&nbsp;</td>
            <td class="style11">
                <br />
                <a href="displayAllUsers.aspx" target="_blank" class="btn bg-success">Click here to see all the users</a>
                <br />
            </td>
        </tr>
        <tr>
            <td class="auto-style20">&nbsp;</td>
            <td class="style6" style="width: 247px">&nbsp;</td>
            <td class="style11">
                 <br />
                <a href="searchUsers.aspx" target="_blank" class="btn bg-success">Click here to search other users</a>
                 <br />
            </td>
        </tr>
    </table>
    <br />
    <br />
    <asp:Label ID="Label1" runat="server" ForeColor="White"></asp:Label>
    <br />
    <asp:Label ID="Label2" runat="server" ForeColor="White"></asp:Label>
    <br />
    <asp:Label ID="Label3" runat="server" ForeColor="White"></asp:Label>
    <br />
    <asp:Label ID="Label4" runat="server" ForeColor="White"></asp:Label>
    <br />
    <asp:Label ID="Label5" runat="server" ForeColor="White"></asp:Label>
    <br />
    <asp:Label ID="Label7" runat="server" ForeColor="White"></asp:Label>
    <br />
    <asp:Label ID="Label8" runat="server" ForeColor="White"></asp:Label>
    <br />
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <br />
    <br />



    <br />
    <br />


    <asp:AccessDataSource ID="usersdata" runat="server" DataFile="~/ass2/Assign2user.mdb" InsertCommand="INSERT INTO users(UserName, [Password], Email, Phone, Gender, Age,  Type) VALUES (?, ?, ?, ?, ?, ?, ?);" SelectCommand="select * from [users];">
        <InsertParameters>
            <asp:ControlParameter Name="UserName" ControlID="Label1" Type="String" />
            <asp:ControlParameter Name="Password" ControlID="Label2" Type="String" />
            <asp:ControlParameter Name="Email" ControlID="Label3" Type="String" />
            <asp:ControlParameter Name="Phone" ControlID="Label4" Type="String" />
            <asp:ControlParameter Name="Gender" ControlID="Label5" Type="String" />
            <asp:ControlParameter Name="Age" ControlID="Label7" Type="String" />
            <asp:ControlParameter Name="Type" ControlID="Label8" Type="String" />
        </InsertParameters>
    </asp:AccessDataSource>
    <br />
    <a href="DisplayCode.aspx?filename=signup.aspx" target="_blank">
        <img alt="" class="auto-style23" src="ass2image/codebuttonAddRecords.jpg" />
    </a>
    <br />
    <br />

    <br />
</asp:Content>


