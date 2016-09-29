<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Add-Remove.aspx.cs" Inherits="SocialistBooks.Account.Add_Remove" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <div>
        <div class="row">

            <div class="col-xs-2">
                <asp:Button ID="BookLookUpButton" runat="server" Text="Look up Book" Width="108px" OnClick="BookLookUpButton_Click" />
            </div>

            <div class="col-xs-2">
                <asp:TextBox ID="ISBNEntry" runat="server" Width="150px"></asp:TextBox>
                <asp:Label ID="ISBN_Label" runat="server" Text="ISBN">ISBN</asp:Label>
            </div>

            <div class="col-xs-2">
                <asp:TextBox ID="AuthorEntry" runat="server" Width="150px"></asp:TextBox>
                <asp:Label ID="Author_Label" runat="server" Text="Author">Author</asp:Label>
            </div>
        
            <div class="col-xs-2">
                <asp:TextBox ID="TitleEntry" runat="server" Width="150px"></asp:TextBox>
                <asp:Label ID="Title_Label" runat="server" Text="Title">Title</asp:Label>
            </div>

        </div>
        <br />
        <br />
        <br />
        <asp:GridView ID="GridView1" runat="server" BackColor="White" 
            BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" 
            CellPadding="3" DataSourceID="SqlDataSource1" 
            OnRowCommand ="AddBookToUserList"
            ForeColor="Black" GridLines="Vertical">
            <AlternatingRowStyle BackColor="#CCCCCC" />
            <Columns>
                <asp:ButtonField ButtonType="Button" CommandName="AddBook" Text="Add" />
            </Columns>
            <FooterStyle BackColor="#CCCCCC" />
            <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
            <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
            <SortedAscendingCellStyle BackColor="#F1F1F1" />
            <SortedAscendingHeaderStyle BackColor="Gray" />
            <SortedDescendingCellStyle BackColor="#CAC9C9" />
            <SortedDescendingHeaderStyle BackColor="#383838" />
        </asp:GridView>
        <br />
        
        <br />
    </div>

    <div>


        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:DefaultConnection %>" >
        </asp:SqlDataSource>
    </div>
    <hr />

    <div>


    </div>


</asp:Content>
