<%@ Page Title="" Language="C#" MasterPageFile="~/Layout.Master" AutoEventWireup="true" CodeBehind="summaries.aspx.cs" Inherits="WebsiteWAPP.summaries" %>

<asp:Content ID="Content2" ContentPlaceHolderID="Main" runat="server">

    <!--The Book View-->
    <div class="book-container">
        <%--<div class=" book-slider1">--%>
        <div>
            <asp:PlaceHolder ID="Education" runat="server"></asp:PlaceHolder>
        </div>

        <div>
            <asp:PlaceHolder ID="Fiction" runat="server"></asp:PlaceHolder>
        </div>

        <div>
            <asp:PlaceHolder ID="Non_Fiction" runat="server"></asp:PlaceHolder>
        </div>

        <div>
            <asp:PlaceHolder ID="Self_Help" runat="server"></asp:PlaceHolder>
        </div>

    </div>

    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [books]"></asp:SqlDataSource>


</asp:Content>
