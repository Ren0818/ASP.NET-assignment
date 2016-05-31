<%@ Page Title="" Language="C#" MasterPageFile="~/ass2/locked/MasterPage.master" AutoEventWireup="true" CodeFile="gallery.aspx.cs" Inherits="gallery" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentBody" Runat="Server">
       <div class="auto-style25" style="color: #FFFFFF; width: 353px;">
                            <span class="auto-style24">Welcome <asp:Label ID="lblUser" runat="server" />
    <br />
            you have used <asp:Label ID="lblType" runat="server" /> authentication to log on.
    </span>
    <br />

            <asp:Button Text="Logout" OnClick="Logout_Click" runat="server" CssClass="btn-primary" Height="32px" Width="96px"/>


        </div>
    <!-- Bootstrap Core CSS -->
    <link href="css/bootstrap.min.css" rel="stylesheet">
   

    <!-- Page Content -->
    <div class="container">

        <!-- Portfolio Item Heading -->
        <div class="row">
            <div class="col-lg-12">
                <h1 class="page-header"><span class="auto-style20">Gallery</span>
                    <small>graph collections</small>
                </h1>
            </div>
        </div>
        <!-- /.row -->

        <!-- Portfolio Item Row -->
        <div class="row">

            <div class="col-md-8">
               
                <img class="img-responsive" src="../gallery/35.jpg" alt="" height=500px width=700px>
            </div>

            <div class="col-md-4">
                <h3 class="auto-style20">Deep Sea Girl</h3>
                <p class="auto-style20">Hatsune Miku Famous Song</p>
                <h3 class="auto-style20">Others</h3>
                <ul class="auto-style20">
                    <li>Remen</li>
                    <li>Black Rock Shooter</li>
                    <li>Setain Stone</li>
                    <li>Unknown</li>
                </ul>
            </div>

        </div>
        <!-- /.row -->

        <!-- Related Projects Row -->
        <div class="row">

            <div class="col-lg-12">
                <h3 class="page-header" style="color: #FFFFFF">Others</h3>
            </div>

            <div class="col-sm-3 col-xs-6">
                <a href="#">
                    <img class="img-responsive portfolio-item" src="../gallery/19.jpg" alt="" height=300px width=500px alt="">
                </a>
            </div>

            <div class="col-sm-3 col-xs-6">
                <a href="#">
                    <img class="img-responsive portfolio-item" src="../gallery/39.jpg" alt="" height=300px width=500px alt="">
                </a>
            </div>

            <div class="col-sm-3 col-xs-6">
                <a href="#">
                    <img class="img-responsive portfolio-item" src="../gallery/2.jpg" alt="" height=300px width=500px" alt="">
                </a>
            </div>

            <div class="col-sm-3 col-xs-6">
                <a href="#">
                    <img class="img-responsive portfolio-item" src="../gallery/36.jpg" alt="" height=300px width=500px alt="">
                </a>
            </div>

        </div>
        <!-- /.row -->

        <hr>

        <!-- Footer -->
        <footer>
            <div class="row">
                <div class="col-lg-12">
                    <p>Copyright © Xiang Ren 2015</p>
                </div>
            </div>
            <!-- /.row -->
        </footer>

    </div>
    <!-- /.container -->

 


</asp:Content>

