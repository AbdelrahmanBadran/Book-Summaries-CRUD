<%@ Page Title="" Language="C#" MasterPageFile="~/Layout.Master" AutoEventWireup="true" CodeBehind="summaries.aspx.cs" Inherits="WebsiteWAPP.summaries" %>

<asp:Content ID="Content2" ContentPlaceHolderID="Main" runat="server">

    <!--The Book View-->
    <div class="book-container">
        <div>
            <asp:PlaceHolder ID="BookSum" runat="server"></asp:PlaceHolder>
        </div>
    </div>

    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [books]"></asp:SqlDataSource>


</asp:Content>
