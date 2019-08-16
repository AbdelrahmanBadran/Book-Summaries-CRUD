<%@ Page Language="C#" MasterPageFile="~/Layout.Master"  AutoEventWireup="true" CodeBehind="createSummaries.aspx.cs" Inherits="WebsiteWAPP.createSummaries" %>

<asp:content contentplaceholderid="Main" runat="server">
  
    <div class = "form-container">
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
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [category_name] FROM [categories]"></asp:SqlDataSource>
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

                <asp:TextBox ID="book_summary" runat="server" required="required" Height="402px" Width="401px"></asp:TextBox>
            </p>
            <p>

                <asp:Button ID="submit" runat="server" OnClick="submit_Click" Text="Submit" />
            </p>
    </div>
</asp:content>