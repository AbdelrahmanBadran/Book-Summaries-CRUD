<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="WebsiteWAPP.login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Label ID="email_label" runat="server" Text="Email"></asp:Label>
        </div>
        <asp:TextBox ID="user_email" runat="server" required="required" TextMode="Email"></asp:TextBox>
        <br />
        <br />
        <asp:Label ID="pass_label" runat="server" Text="Password"></asp:Label>
        <br />
        <asp:TextBox ID="user_password" runat="server" required="required" TextMode="Password"></asp:TextBox>
        <asp:Label ID="hidden_label" runat="server"></asp:Label>
        <br />
        <br />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="Btn_Sign_In" runat="server" Text="Login" OnClick="Login_Btn_Click" />
        <br />
        <br />
        <asp:HyperLink ID="Forogot_Pass" runat="server" NavigateUrl="contact.aspx" >Forgot your password?</asp:HyperLink>
    </form>
</body>
</html>
