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
        <br />
        
        <br />
    </div>

    <div>


        <asp:ListView ID="ListView1" runat="server" DataSourceID="SqlDataSource1">
            <AlternatingItemTemplate>
                <tr style="">
                    <td>
                        <asp:Label ID="ISBNLabel" runat="server" Text='<%# Eval("ISBN") %>' />
                    </td>
                    <td>
                        <asp:Label ID="TitleLabel" runat="server" Text='<%# Eval("Title") %>' />
                    </td>
                    <td>
                        <asp:Label ID="AuthorLabel" runat="server" Text='<%# Eval("Author") %>' />
                    </td>
                </tr>
            </AlternatingItemTemplate>
            <EditItemTemplate>
                <tr style="">
                    <td>
                        <asp:Button ID="UpdateButton" runat="server" CommandName="Update" Text="Update" />
                        <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Cancel" />
                    </td>
                    <td>
                        <asp:TextBox ID="ISBNTextBox" runat="server" Text='<%# Bind("ISBN") %>' />
                    </td>
                    <td>
                        <asp:TextBox ID="TitleTextBox" runat="server" Text='<%# Bind("Title") %>' />
                    </td>
                    <td>
                        <asp:TextBox ID="AuthorTextBox" runat="server" Text='<%# Bind("Author") %>' />
                    </td>
                </tr>
            </EditItemTemplate>
            <EmptyDataTemplate>
                <table runat="server" style="">
                    <tr>
                        <td>No data was returned.</td>
                    </tr>
                </table>
            </EmptyDataTemplate>
            <InsertItemTemplate>
                <tr style="">
                    <td>
                        <asp:Button ID="InsertButton" runat="server" CommandName="Insert" Text="Insert" />
                        <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Clear" />
                    </td>
                    <td>
                        <asp:TextBox ID="ISBNTextBox" runat="server" Text='<%# Bind("ISBN") %>' />
                    </td>
                    <td>
                        <asp:TextBox ID="TitleTextBox" runat="server" Text='<%# Bind("Title") %>' />
                    </td>
                    <td>
                        <asp:TextBox ID="AuthorTextBox" runat="server" Text='<%# Bind("Author") %>' />
                    </td>
                </tr>
            </InsertItemTemplate>
            <ItemTemplate>
                <tr style="">
                    <td>
                        <asp:Label ID="ISBNLabel" runat="server" Text='<%# Eval("ISBN") %>' />
                    </td>
                    <td>
                        <asp:Label ID="TitleLabel" runat="server" Text='<%# Eval("Title") %>' />
                    </td>
                    <td>
                        <asp:Label ID="AuthorLabel" runat="server" Text='<%# Eval("Author") %>' />
                    </td>
                </tr>
            </ItemTemplate>
            <LayoutTemplate>
                <table runat="server">
                    <tr runat="server">
                        <td runat="server">
                            <table id="itemPlaceholderContainer" runat="server" border="0" style="">
                                <tr runat="server" style="">
                                    <th runat="server">ISBN</th>
                                    <th runat="server">Title</th>
                                    <th runat="server">Author</th>
                                </tr>
                                <tr id="itemPlaceholder" runat="server">
                                </tr>
                            </table>
                        </td>
                    </tr>
                    <tr runat="server">
                        <td runat="server" style=""></td>
                    </tr>
                </table>
            </LayoutTemplate>
            <SelectedItemTemplate>
                <tr style="">
                    <td>
                        <asp:Label ID="ISBNLabel" runat="server" Text='<%# Eval("ISBN") %>' />
                    </td>
                    <td>
                        <asp:Label ID="TitleLabel" runat="server" Text='<%# Eval("Title") %>' />
                    </td>
                    <td>
                        <asp:Label ID="AuthorLabel" runat="server" Text='<%# Eval("Author") %>' />
                    </td>
                </tr>
            </SelectedItemTemplate>
        </asp:ListView>


        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:DefaultConnection %>">
        </asp:SqlDataSource>
    </div>
    <hr />

    <div>


    </div>


</asp:Content>
