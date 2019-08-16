<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="WebsiteWAPP.login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Login</title>
    <link rel="stylesheet" href="login.css" />
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.4.1/jquery.min.js" charset="utf-8"></script>

</head
    >
<body>
    <form id="form1" runat="server" class=" login-form">
        <h1>Login</h1>

        <div class="txtb">
        <asp:TextBox ID="user_email" runat="server" required="required" TextMode="Email"></asp:TextBox>
            <span data-placeholder="Email"></span>
        </div>
        
        
        <div class="txtb">
        <asp:TextBox ID="user_password" runat="server" required="required" TextMode="Password"></asp:TextBox>
            <span data-placeholder="Password"></span>
        </div>

        <asp:Button ID="Btn_Sign_In" BorderStyle="None" runat="server" BackColor="Transparent" CssClass="logbtn" OnClick="Login_Btn_Click" text="Login" Height="50px" Width="100%"/>
        
        <asp:Label ID="hidden_label" runat="server"></asp:Label>
        
        <div class="bottom-text">
        <asp:HyperLink ID="Forogot_Pass" runat="server" NavigateUrl="contact.aspx" >Forgot your password?</asp:HyperLink>
        </div>

        <div class="bottom-text">
            Don't have an account? <a href="signup.aspx">Sign Up</a>
        </div>
    </form>

    <script type="text/javascript">
      $(".txtb input").on("focus",function(){
        $(this).addClass("focus");
      });

      $(".txtb input").on("blur",function(){
        if($(this).val() == "")
        $(this).removeClass("focus");
      });

    </script>

</body>
</html>
