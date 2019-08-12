<%@ Page Title="" Language="C#" MasterPageFile="~/Layout.Master" AutoEventWireup="true" CodeBehind="CreateSummary.aspx.cs" Inherits="WebsiteWAPP.CreateSummary" %>

<asp:Content ID="sumContent" ContentPlaceHolderID="Main" runat="server">
    <form id="form1" runat="server">
        <p>
        <asp:Label ID="bookTitle" runat="server" Text="Book Title"></asp:Label>
        <asp:TextBox ID="book_title" runat="server"></asp:TextBox>
        </p>

        <p>
        <asp:Label ID="author" runat="server" Text="Author Name"></asp:Label>
        <asp:TextBox ID="book_author" runat="server"></asp:TextBox>
        </p>
        <p>

        <asp:Label ID="categry" runat="server" Text="Category"></asp:Label>
        <asp:DropDownList ID="category_id" runat="server">
            <asp:ListItem>Education</asp:ListItem>
            <asp:ListItem>Fiction</asp:ListItem>
            <asp:ListItem>Non-Fiction</asp:ListItem>
            <asp:ListItem>Self-Help</asp:ListItem>
            </asp:DropDownList>
        </p>
        <p>

        <asp:Label ID="publisher" runat="server" Text="Publisher Name"></asp:Label>
        <asp:TextBox ID="book_publisher" runat="server"></asp:TextBox>
        </p>
        <p>

        <asp:Label ID="isbn" runat="server" Text="ISBN"></asp:Label>
        <asp:TextBox ID="book_isbn" runat="server"></asp:TextBox>
        </p>
        <p>

        <asp:Label ID="bookSummary" runat="server" Text="Book Summary"></asp:Label>
        <asp:TextBox ID="summary_data" runat="server"></asp:TextBox>
        </p>
    </form>
</asp:Content>
