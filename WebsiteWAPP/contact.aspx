<%@ Page Title="" Language="C#" MasterPageFile="~/Layout.Master" AutoEventWireup="true" CodeBehind="contact.aspx.cs" Inherits="WebsiteWAPP.contact" %>

<asp:Content ID="Content2" ContentPlaceHolderID="Main" runat="server">
   
    <p>
    <asp:Label ID="FullName" runat="server" Text="Full Name"></asp:Label>
    <asp:TextBox ID="guest_full_name" runat="server"></asp:TextBox>
    </p>
            <p>

                <asp:Label ID="Email" runat="server" Text="Email"></asp:Label>
                <asp:TextBox ID="guest_email" runat="server"></asp:TextBox>
            </p>           
    <p>

                <asp:Label ID="about" runat="server" Text="About"></asp:Label>
                <asp:TextBox ID="guest_about" runat="server"></asp:TextBox>
            </p>
    <p>

        <asp:Label ID="Comment" runat="server" Text="Comment"></asp:Label>
    </p>
    <p>

        <asp:TextBox ID="guest_message" runat="server" Height="402px" Width="401px"></asp:TextBox>
    </p>
    <p>

        <asp:Button ID="submit" runat="server" OnClick="submit_Click" Text="Submit" />
    </p>

</asp:Content>

