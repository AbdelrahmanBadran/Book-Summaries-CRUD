<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="signup.aspx.cs" Inherits="WebsiteWAPP.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>SignUp</title>

    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" />
    <link rel="stylesheet" href="signupStyle.css" />
    <style type="text/css">
        .checkbox {
            margin-left: 160px;
        }
    </style>
</head>

<body>
    <div class= "signup-container">
    <form id="form1" runat="server">
        <div class=" form-group">
        <asp:Label ID="fname" runat="server" Text="First Name"></asp:Label>
            <asp:TextBox ID="user_fname" runat="server" required="required"></asp:TextBox>
&nbsp;<br />
        </div>

        <div class="form-group">
        <asp:Label ID="lname" runat="server" Text="Last Name"></asp:Label>
            <asp:TextBox ID="user_lname" runat="server" required="required"></asp:TextBox>
            <br />
        </div>
        <div class="form-group">
        <asp:Label ID="Email" runat="server" Text="Email"></asp:Label>
            <asp:TextBox ID="user_email" runat="server" required="required" ViewStateMode="Enabled" TextMode="Email"></asp:TextBox>
            <asp:Label ID="used_email" runat="server"></asp:Label>
            <br />
        </div>
        <div class="form-group">
            <asp:Label ID="Gender" runat="server" Text="Gender"></asp:Label>
            <asp:DropDownList ID="user_gender" runat="server" >
                <asp:ListItem Value="M">Male</asp:ListItem>
                <asp:ListItem Value="F">Female</asp:ListItem>
            </asp:DropDownList>
            <br />
        </div>
        <div class="form-group">
        <asp:Label ID="Password" runat="server" Text="Password"></asp:Label>
            <asp:TextBox ID="user_password" runat="server" required="required" TextMode="Password"></asp:TextBox>
            <br />
        </div>
        <div class="form-group">
        <asp:Label ID="DOB" runat="server" Text="Date of Birth"></asp:Label>
            <asp:TextBox ID="user_dob" runat="server" ToolTip="mm/dd/yyy" required="required" TextMode="Date"></asp:TextBox>
        </div>

        <div class="form-group">
        <asp:Label ID="confirmpass" runat="server" Text="Confirm Password"></asp:Label>
        <asp:TextBox ID="confirm_pass" runat="server" required="required" TextMode="Password"></asp:TextBox>
        <asp:CompareValidator ID="comparePass" runat="server" ErrorMessage="Passwords Do Not Match" ControlToCompare="user_password" ControlToValidate="confirm_pass"></asp:CompareValidator>
            <br />
        </div>

        <div class="form-group">
        <asp:Label ID="userEdu" runat="server" Text="Level of Educaation"></asp:Label>
        <asp:DropDownList ID="user_education" runat="server" DataTextField="user_education" DataValueField="user_education" required="required">
            <asp:ListItem>School</asp:ListItem>
            <asp:ListItem>Diploma</asp:ListItem>
            <asp:ListItem>Undergraduate</asp:ListItem>
            <asp:ListItem>Graduate</asp:ListItem>
            <asp:ListItem>Doctorate</asp:ListItem>
            <asp:ListItem>Other</asp:ListItem>
            
        </asp:DropDownList>
            <br />
        </div>

        <div class="form-group-sm">
        <asp:CheckBox ID="Agree" runat="server" required="required" />
&nbsp;I have read and agree to the
        <asp:HyperLink ID="Terms" runat="server">Terms and Conditions</asp:HyperLink>
        &nbsp;and&nbsp;
        <asp:HyperLink ID="Privacy" runat="server">Privacy Policy</asp:HyperLink>
            <br />
        </div>

        <div class="checkbox">
        <asp:Button ID="sign_up" runat="server" Text="Sign Up" OnClick ="Register_Click" class= "btn-success"/>
        &nbsp;&nbsp;<br />
            <asp:Label ID="Signup_Status" runat="server" ></asp:Label>
&nbsp;<asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [user]"></asp:SqlDataSource>
        </div>
    </form>
    </div>
</body>
</html>
