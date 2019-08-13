<%@ Page Title="" Language="C#" MasterPageFile="~/Layout.Master" AutoEventWireup="true" CodeBehind="manageSums.aspx.cs" Inherits="WebsiteWAPP.manageSums" %>

<asp:Content ID="Content2" ContentPlaceHolderID="Main" runat="server">

    <asp:HiddenField ID="HiddenField_Id" runat="server" />
    <div class="form-container">
        <p>
            <asp:Label ID="bookTitle" runat="server" Text="Book Title"></asp:Label>
            <asp:TextBox ID="book_title" runat="server"></asp:TextBox>
        </p>

        <p>
            <asp:Label ID="author" runat="server" Text="Author Name"></asp:Label>
            <asp:TextBox ID="book_author" runat="server"></asp:TextBox>
        </p>
        <p>

            <asp:Label ID="category" runat="server" Text="Category"></asp:Label>
            <asp:DropDownList ID="category_name" runat="server" DataSourceID="SqlDataSource1" DataTextField="category_name" DataValueField="category_name">
                <asp:ListItem Value="Education">Education</asp:ListItem>
                <asp:ListItem Value="Fiction">Fiction</asp:ListItem>
                <asp:ListItem Value="Non-Fiction">Non-Fiction</asp:ListItem>
                <asp:ListItem Value="Self-Help">Self-Help</asp:ListItem>
            </asp:DropDownList>
        </p>

        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [category_name] FROM [categories]"></asp:SqlDataSource>
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
        </p>
        <p>

            <asp:TextBox ID="book_summary" runat="server" Height="402px" Width="401px"></asp:TextBox>
        </p>

    </div>

    <div style="margin-left: 40px">
        <asp:Button ID="Update" runat="server" OnClick="Update_Click" Text="Update Summary" CssClass="btn-success" />        
        <asp:ImageButton ID="Delete" runat="server" ImageUrl="~/img/delete.png" OnClick="Delete_Click" Width="40px" height="40px" />
    </div>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [books]"></asp:SqlDataSource>


</asp:Content>

