<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="createSummaries.aspx.cs" Inherits="WebsiteWAPP.createSummaries" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">

<head runat="server">
    <title>CreateSums</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" />
    <link rel="stylesheet" href="masterStyle.css" />
</head>

<body>
        <header>
            <div class="nav-container">
                <h1>Book Sums</h1>
                    <ul class="topnav show-desktop hide-mobile">
                        <li><a>
                             Home</a></li>
                        <li><a>
                            Summaries</a></li>
                        <li><a class="active">
                             Create</a></li>
                        <li><a>
                            About</a></li>
                        <li><a>
                            Contact</a></li>
                    </ul>
            </div>
        </header>


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
                    <asp:ListItem Value="1">Education</asp:ListItem>
                    <asp:ListItem Value="2">Fiction</asp:ListItem>
                    <asp:ListItem Value="3">Non-Fiction</asp:ListItem>
                    <asp:ListItem Value="4">Self-Help</asp:ListItem>
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
            </p>
            <p>

                <asp:TextBox ID="summary_data" runat="server" Height="402px" Width="401px"></asp:TextBox>
            </p>
            <p>

                <asp:Button ID="submit" runat="server" OnClick="submit_Click" Text="Submit" />
            </p>

        </form>

        <footer>
            <em>Copyright &copy; 2019, Badran </em>
        </footer>    

</body>
</html>