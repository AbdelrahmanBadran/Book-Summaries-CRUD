<%@ Page Title="" Language="C#" MasterPageFile="~/Layout.Master" AutoEventWireup="true" CodeBehind="manageSums.aspx.cs" Inherits="WebsiteWAPP.manageSums" %>

<asp:Content ID="Content2" ContentPlaceHolderID="Main" runat="server">

    <asp:HiddenField ID="HiddenField_Id" runat="server" />
    <link rel="stylesheet" href="createSummaries.css" />

    <div class="wrapper">
        <div class="form-cont">
            <p>
                <asp:Label ID="bookTitle" runat="server" Text="Book Title"></asp:Label>
                <asp:TextBox ID="book_title" runat="server" required="required"></asp:TextBox>
            </p>

            <p>
                <asp:Label ID="author" runat="server" Text="Author Name"></asp:Label>
                <asp:TextBox ID="book_author" runat="server" required="required"></asp:TextBox>
            </p>
            <p>

                <asp:Label ID="category" runat="server" Text="Category"></asp:Label>
                <asp:DropDownList ID="category_name" runat="server" DataSourceID="SqlDataSource1" DataTextField="category_name" DataValueField="category_name">
                    <asp:ListItem Value="Education">Education</asp:ListItem>
                    <asp:ListItem Value="Fiction">Fiction</asp:ListItem>
                    <asp:ListItem Value="Non-Fiction">Non-Fiction</asp:ListItem>
                    <asp:ListItem Value="Self-Help">Self-Help</asp:ListItem>
                </asp:DropDownList>
                <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [category_name] FROM [categories]"></asp:SqlDataSource>
            </p>
            <p>

                <asp:Label ID="publisher" runat="server" Text="Publisher Name"></asp:Label>
                <asp:TextBox ID="book_publisher" runat="server" required="required"></asp:TextBox>
            </p>
            <p>

                <asp:Label ID="isbn" runat="server" Text="ISBN"></asp:Label>
                <asp:TextBox ID="book_isbn" runat="server" required="required"></asp:TextBox>
            </p>
            <p>

                <asp:Label ID="bookSummary" runat="server" Text="Book Summary"></asp:Label>
            </p>
            <p>

                <asp:TextBox ID="book_summary" class="long" runat="server" required="required"></asp:TextBox>
            </p>
        

        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [category_name] FROM [categories]"></asp:SqlDataSource>
        

        <div style="margin:auto">
            <asp:Button ID="Update" runat="server" OnClick="Update_Click" Text="Update Summary" CssClass="btn-success" Height="30px" Width="120px" />        
            <asp:Button ID="Delete1" runat="server" OnClick="Delete_Click1" Text="Delete Summary" CssClass="btn-danger" Height="30px" Width="120px" />        
        </div>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [books]"></asp:SqlDataSource>

        </div>
    </div>
</asp:Content>

