<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="signup.aspx.cs" Inherits="WebsiteWAPP.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Signup</title>
    <link rel="stylesheet" href="signup.css" />
</head>

<body>
    <form id="form1" runat="server" class="wrapper">        
        <div class= "form-cont">
                <h1>Signup</h1>

                <div class="form-group1">
                    <asp:TextBox ID="user_fname" runat="server" required="required" placeholder="First Name"></asp:TextBox>
                </div>

                <div class="form-group2">
                    <asp:TextBox ID="user_lname" runat="server" required="required" placeholder="Last Name"></asp:TextBox>
                </div>

                <div class="form-group1">
                    <asp:TextBox ID="user_email" runat="server" required="required" placeholder="Email"
                        ViewStateMode="Enabled" TextMode="Email"></asp:TextBox>
                    <asp:Label ID="used_email" runat="server"></asp:Label>
                </div>

                <div class="form-group2">
                    <asp:DropDownList ID="user_gender" runat="server">
                        <asp:ListItem Value="M">Male</asp:ListItem>
                        <asp:ListItem Value="F">Female</asp:ListItem>
                    </asp:DropDownList>
                </div>


                <div class="form-group1">
                    <asp:TextBox ID="user_password" runat="server"
                    required="required" TextMode="Password" placeholder="Password"></asp:TextBox>
                </div>

                <div class="form-group2">
                    <%--<asp:Label ID="DOB" runat="server" Text="Date of Birth"></asp:Label>--%>
                    <asp:TextBox ID="user_dob" runat="server" ToolTip="mm/dd/yyy" required="required" TextMode="Date"></asp:TextBox>
                </div>

                <div class="form-group1">
                    <asp:TextBox ID="confirm_pass" runat="server" required="required" TextMode="Password" placeholder="Confirm password"></asp:TextBox>
                    <asp:CompareValidator ID="comparePass" runat="server" ErrorMessage="Passwords Do Not Match" ControlToCompare="user_password" ControlToValidate="confirm_pass"></asp:CompareValidator>
                </div>

                <div class="form-group2">
                    <%--<asp:Label ID="userEdu" runat="server" Text="Level of Educaation"></asp:Label>--%>
                        <asp:DropDownList ID="user_education" runat="server" DataTextField="user_education" DataValueField="user_education" required="required">
                        <asp:ListItem>School</asp:ListItem>
                        <asp:ListItem>Diploma</asp:ListItem>
                        <asp:ListItem>Undergraduate</asp:ListItem>
                        <asp:ListItem>Graduate</asp:ListItem>
                        <asp:ListItem>Doctorate</asp:ListItem>
                        <asp:ListItem>Other</asp:ListItem>
                    </asp:DropDownList>
                </div>
            <div>
            <asp:Button ID="sign_up" runat="server" Text="Sign Up" OnClick="Register_Click" CssClass="btn" />
            </div>
            
        <asp:Label ID="Signup_Status" runat="server" ></asp:Label>&nbsp;
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [users]"></asp:SqlDataSource>

        </div>
    </form>
</body>
</html>
