<%@ Page Title="" Language="C#" MasterPageFile="~/Layout.Master" AutoEventWireup="true" CodeBehind="manageBooks.aspx.cs" Inherits="WebsiteWAPP.manageUsers" %>

<asp:Content ID="Content2" ContentPlaceHolderID="Main" runat="server">
    <div class ="center">
    <asp:GridView ID="gvBooks" AutoGenerateColumns="false" runat="server" ShowFooter ="true" DataKeyNames="book_id"
        BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="3" >
        <FooterStyle BackColor="White" ForeColor="#000066" />
        <HeaderStyle BackColor="#006699" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="White" ForeColor="#000066" HorizontalAlign="Left" />
        <RowStyle ForeColor="#000066" />
        <SelectedRowStyle BackColor="#669999" Font-Bold="True" ForeColor="White" />
        <SortedAscendingCellStyle BackColor="#F1F1F1" />
        <SortedAscendingHeaderStyle BackColor="#007DBB" />
        <SortedDescendingCellStyle BackColor="#CAC9C9" />
        <SortedDescendingHeaderStyle BackColor="#00547E" />
        
        <Columns>
            <asp:TemplateField HeaderText="Book Title">
                <asp:ItemTemplate>
                <asp:Label Text = '<%# Eval("book_title") %>' runat="server" />
                </asp:ItemTemplate>
                <asp:EditItemTemplate>
                    <asp:TextBox Id="TxtBookTitle" Text = '<%# Eval("book_title") %>' runat="server" />
                </asp:EditItemTemplate>
                <FooterTemplate>
                    <asp:TextBox ID ="txtbooktitlefooter" runat ="server" />
                </FooterTemplate>
            </asp:TemplateField>


            <asp:TemplateField HeaderText="Book Category">
                <asp:ItemTemplate>
                    <asp:Label Text='<%# Eval("category_name") %>' runat="server" />
                </asp:ItemTemplate>
                <asp:EditItemTemplate>
                    <asp:TextBox ID="DropCategory" Text='<%# Eval("category_name") %>' runat="server" />
                    <%--<asp:DropDownList ID="DropCategory" Text='<%# Eval("category_name") %>' runat="server"></asp:DropDownList>--%>
                </asp:EditItemTemplate>
                <FooterTemplate>
                    <asp:TextBox ID="txtBookCategory" runat="server" />
                </FooterTemplate>
            </asp:TemplateField>

            <asp:TemplateField HeaderText="Book Author">
                <asp:ItemTemplate>
                    <asp:Label Text='<%# Eval("book_author") %>' runat="server" />
                </asp:ItemTemplate>
                <asp:EditItemTemplate>
                    <asp:TextBox ID="TxtBookAuthor" Text='<%# Eval("book_author") %>' runat="server" />
                </asp:EditItemTemplate>
                <FooterTemplate>
                    <asp:TextBox ID="txtbookauthorfooter" runat="server" />
                </FooterTemplate>
            </asp:TemplateField>

            <asp:TemplateField HeaderText="Book Publisher">
                <asp:ItemTemplate>
                    <asp:Label Text='<%# Eval("book_publisher") %>' runat="server" />
                </asp:ItemTemplate>
                <asp:EditItemTemplate>
                    <asp:TextBox ID="TxtBookPublisher" Text='<%# Eval("book_publisher") %>' runat="server" />
                </asp:EditItemTemplate>
                <FooterTemplate>
                    <asp:TextBox ID="txtbookpublisherfooter" runat="server" />
                </FooterTemplate>
            </asp:TemplateField>

            <asp:TemplateField HeaderText="Book ISBN">
                <asp:ItemTemplate>
                    <asp:Label Text='<%# Eval("book_isbn") %>' runat="server" />
                </asp:ItemTemplate>
                <asp:EditItemTemplate>
                    <asp:TextBox ID="TxtBookISBN" Text='<%# Eval("book_isbn") %>' runat="server" />
                </asp:EditItemTemplate>
                <FooterTemplate>
                    <asp:TextBox ID="txtbookISBNfooter" runat="server" />
                </FooterTemplate>
            </asp:TemplateField>


<%--            <asp:TemplateField HeaderText="Book Summary">
                <asp:ItemTemplate>
                    <asp:Label Text='<%# Eval("book_summary") %>' runat="server" />
                </asp:ItemTemplate>
                <asp:EditItemTemplate>
                    <asp:TextBox ID="TxtBookSum" Text='<%# Eval("book_summary") %>' runat="server" />
                </asp:EditItemTemplate>
                <FooterTemplate>
                    <asp:TextBox ID="txtbooksummaryfooter" runat="server" />
                </FooterTemplate>
            </asp:TemplateField>--%>

            <asp:TemplateField>
                <ItemTemplate>
                    <asp:ImageButton ImageUrl="~/img/edit.png" runat="server" CommandName="Edit" ToolTip="Edit" Width="20px" Height="20px" />
                    <asp:ImageButton ImageUrl="~/img/delete.png" runat="server" CommandName="Delete" ToolTip="Delete" Width="20px" Height="20px" />
                </ItemTemplate>

                <EditItemTemplate>
                    <asp:ImageButton ImageUrl="~/img/save.png" runat="server" CommandName="Update" ToolTip="Update" Width="20px" Height="20px" />
                    <asp:ImageButton ImageUrl="~/img/cancel.png" runat="server" CommandName="Cancel" ToolTip="Cancel" Width="20px" Height="20px" />
                </EditItemTemplate>

                <FooterTemplate>
                    <asp:ImageButton ImageUrl="~/img/add.png" runat="server" CommandName="Add" ToolTip="Add New" Width="20px" Height="20px" />
                </FooterTemplate>
            </asp:TemplateField>
        
        </Columns>
    </asp:GridView>


    <br />

    <asp:Label ID="lblSuccesMessage" Text="" runat="server" ForeColor="Green"></asp:Label>
    <br />
    <asp:Label ID="lblErrorMessage" Text="" runat="server" ForeColor="Red"></asp:Label>
    </div>
</asp:Content>