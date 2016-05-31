<%@ Page Title="" Language="C#" MasterPageFile="~/ass2/MasterPage.master" AutoEventWireup="true" CodeFile="~/ass2/index.aspx.cs" Inherits="index" %>


<asp:Content ID="Content2" ContentPlaceHolderID="ContentBody" runat="Server">
    <div style="margin-left: 15px;">
        <span style="color: #FFFFFF"><strong><span style="font-family: 'Source Sans Pro'; font-size: xx-large">Home Page</span></strong><br />

        </span>
     


        <div>

            <asp:ScriptManager ID="ScriptManager1" runat="server">
            </asp:ScriptManager>

            <asp:UpdatePanel ID="UpdatePanel1" runat="server">

                <ContentTemplate>

                    <asp:Timer ID="Timer1" runat="server" Interval="2000" OnTick="Timer1_Tick">
                    </asp:Timer>

                    <a href="locked/gallery.aspx">
                        <asp:Image ID="Image1" runat="server" Height="150" Width="300" ImageUrl="~/ass2/images/15.jpg" />
                    </a>
                    <a href="locked/gallery.aspx">
                        <asp:Image ID="Image2" runat="server" Height="150" Width="300" ImageUrl="~/ass2/images/16.jpg" />
                    </a>
                    <a href="locked/gallery.aspx">
                        <asp:Image ID="Image3" runat="server" Height="150" Width="300" ImageUrl="~/ass2/images/18.jpg" />
                    </a>
                    <br />
                    <br />
                    <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="&lt;&lt;" />
                    <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="&gt;&gt;" />


                </ContentTemplate>
            </asp:UpdatePanel>
        </div>
        <div style="font-family: 'Source Sans Pro';">
            <span class="auto-style20">(｡・`ω´･)  A Family of peple who love ACG.<br />
                ACG = Anime (o^∇^o)ﾉ Comic ヾ(=^▽^=)ノ Game (≖ ‿ ≖)✧
        <br />
                <br />
            </span>

            <div style="margin-left: 30px;">
                <link href="css/1-col-portfolio.css" rel="stylesheet">
                <link href="css/bootstrap.min.css" rel="stylesheet">
                <!-- Project One -->
                <div class="row">
                    <div class="col-md-7">
                        <a href="#">
                            <img class="img-responsive" src="topicImage/Gintama.jpg" alt="" height="300px" width="700px">
                        </a>
                    </div>
                    <div class="col-md-5">
                        <h3 class="auto-style20">Gintama</h3>
                        <h4 class="auto-style20">Author Favorite</h4>
                        <p class="auto-style20">Every Thurday</p>
                        <a class="btn btn-primary" href="#">View Topic <span class="glyphicon glyphicon-chevron-right"></span></a>
                    </div>
                </div>
                <!-- /.row -->

                <hr>

                <!-- Project Two -->
                <div class="row">
                    <div class="col-md-7">
                        <a href="#">
                            <img class="img-responsive" src="topicImage/Himouto! Umaru-chan.jpeg" alt="" height="300px" width="700px">
                        </a>
                    </div>
                    <h3 class="auto-style20">Himouto! Umaru-chan</h3>
                    <h4 class="auto-style20">Author Favorite</h4>
                    <p class="auto-style20">Every Thurday</p>

                    <a class="btn btn-primary" href="#">View Topic <span class="glyphicon glyphicon-chevron-right"></span></a>
                </div>
            </div>
            <!-- /.row -->

            <hr>

            <!-- Project Three -->
            <div class="row">
                <div class="col-md-7">
                    <a href="#">
                        <img class="img-responsive" src="topicImage/Non Non Biyori Repeat.jpg" alt="" height="300px" width="700px">
                    </a>
                </div>
                <div class="col-md-5">
                    <h3 class="auto-style20">Non Non Biyori Repeat</h3>
                    <h4 class="auto-style20">Author Favorite</h4>
                    <p class="auto-style20">Every Tuesday</p>
                    <a class="btn btn-primary" href="#">View Topic <span class="glyphicon glyphicon-chevron-right"></span></a>
                </div>
            </div>
            <!-- /.row -->

            <hr>

            <!-- Project Four -->
            <div class="row">

                <div class="col-md-7">
                    <a href="#">
                        <img class="img-responsive" src="topicImage/OverLord.jpg" alt="" height="300px" width="700px">
                    </a>
                </div>
                <div class="col-md-5">
                    <h3 class="auto-style20">OverLord</h3>
                    <h4 class="auto-style20">Author Favorite</h4>
                    <p class="auto-style20">Every Wednesday</p>
                    <a class="btn btn-primary" href="#">View Topic <span class="glyphicon glyphicon-chevron-right"></span></a>
                </div>
            </div>
            <!-- /.row -->

            <hr>

            <!-- Project Five -->
            <div class="row">
                <div class="col-md-7">
                    <a href="#">
                        <img class="img-responsive" src="topicImage/Charlotte.jpg" alt="" height="300px" width="700px">
                    </a>
                </div>
                <div class="col-md-5">
                    <h3 class="auto-style20">Charlotte</h3>
                    <h4 class="auto-style20">Author Favorite</h4>
                    <p class="auto-style20">Every Sunday</p>
                    <a class="btn btn-primary" href="#">View Topic <span class="glyphicon glyphicon-chevron-right"></span></a>
                </div>
            </div>
            <!-- /.row -->
        </div>




        <div style="float: bottom">
            <a href="http://users.monash.edu.au/~sgrose/msh/disclaimer.htm">Monash course disclaimer</a>
            <br />
            <span class="auto-style20">
                <br />
                <asp:AdRotator ID="AdRotator1" runat="server" AdvertisementFile="~/ass2/XMLFile.xml" />
                <br />
                <a href="DisplayCode.aspx?filename=index.aspx" target="_blank">
                    <img alt="" src="ass2image/codebuttonAddrotator.jpg" style="width: 200px; height: 30px" /></a>
                <br />
                All images are from internet.<br />
                BGM: キセキ ver.piano by zenongakufu
            </span>
        </div>
    </div>
    </div>
</asp:Content>

