<%@ Page Title="" Language="C#" MasterPageFile="~/Layout.Master" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="WebsiteWAPP.Home" %>

<asp:Content ContentPlaceHolderID="Main" runat="server">
<main>
    <!-- The main div home -->
    <div class="home">
        <nav class="side-nav">
            <h2><strong>Editor's Choice</strong></h2>
            <ul id="editor-container">
                <li><a href="#" onclick="book1_click">The 7 Habits of Highly Effective People</a></li>
                <li><a href="#" onclick="book2_click">101 Positive Thoughts to Change Your Life</a></li>
                <li><a href="#" onclick="book3_click">The Last Self-Help Book You'll Ever Need</a></li>
            </ul>
        </nav>

        <!--The Caousel controls-->
        <div class="slideshow">
            <div id="mycarousel" class="container carousel slide" data-ride="carousel">

                <ul class="carousel-indicators ">
                    <li data-target="#mycarousel" data-slide-to="0" class="active"></li>
                    <li data-target="#mycarousel" data-slide-to="1"></li>
                    <li data-target="#mycarousel" data-slide-to="2"></li>
                </ul>

                <!--The Caousel images and captions-->
                <div class="carousel-inner">
                    <figure class="item active">
                        <img src="img/1.jpg" alt="Book Pic 1" />
                        <figcaption class="carousel-caption">Habits Will Change Your Life</figcaption>
                    </figure>
                    <figure class="item">
                        <img src="img/2.jpg" alt="Book Pic 2" />
                        <figcaption class="carousel-caption">Thoughts Can Change Your Life</figcaption>
                    </figure>
                    <figure class="item">
                        <img src="img/3.jpg" alt="Book Pic 3" />
                        <figcaption class="carousel-caption">The One Self-Help Book for All of Us</figcaption>
                    </figure>
                </div>

                <!-- Left and right controls -->
                <a class="left carousel-control" href="#mycarousel" role="button" data-slide="prev">
                    <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span><span class="sr-only">Previous</span>
                </a>
                <a class="right carousel-control" href="#mycarousel" role="button" data-slide="next">
                    <span class="glyphicon  glyphicon-chevron-right" aria-hidden="true"></span><span class="sr-only">Next</span>
                </a>
            </div>
        </div>

        <!-- The right side bar for ads-->
        <div class="ads">
            <aside>
                <p>This is the aside element which should contain ads</p>
            </aside>
        </div>

        <!--The Book sliders-->
        <div class="carousel book-slider1">
            <h2><strong>First Book Carousel</strong></h2>
        </div>

        <div class="carousel book-slider2">
            <h2><strong>Second Book Carousel</strong></h2>
        </div>
    </div>
    </main>
</asp:Content>


<%--<div class="panel panel-default">
    <div class="panel-heading">Sign up For Our Emails</div>

    <form class="form-horizontal panel-heading" runat="server">
        <asp:FieldTemplateUserControl runat="server" />
        <fieldset>
            <legend>Contact Information</legend>
            <asp:Label runat="server">Email Address</asp:Label>
            <asp:TextBox ID="emails" runat="server" required="required" AutoCompleteType="Email" Text="example@gmail.com"></asp:TextBox>
            <asp:Label runat="server">Delivery Preference: </asp:Label>
            <asp:DropDownList runat="server">
                <asp:ListItem>Daily</asp:ListItem>
                <asp:ListItem>Weekly</asp:ListItem>
                <asp:ListItem>Monthly</asp:ListItem>
            </asp:DropDownList>
            <asp:Button runat="server" ID="sign_up" OnClick="sign_up_Click" Text="Sign Up" />
        </fieldset>
    </form>
</div>--%>
