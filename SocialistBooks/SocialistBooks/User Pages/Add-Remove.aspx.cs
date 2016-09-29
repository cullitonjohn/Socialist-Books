using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Microsoft.AspNet.Identity;

namespace SocialistBooks.Account
{
    public partial class Add_Remove : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void BookLookUpButton_Click(object sender, EventArgs e)
        {
            if(!ISBNEntry.Text.Equals(""))
            {
                SqlDataSource1.SelectCommand = String.Format("SELECT [ISBN], [Title], [Author], [BookID] FROM [MasterBookList] WHERE ([ISBN] = '{0}')", ISBNEntry.Text.ToString());
            }
            else if(!AuthorEntry.Text.Equals(""))
            {
                SqlDataSource1.SelectCommand = String.Format("SELECT [ISBN], [Title], [Author], [BookID] FROM [MasterBookList] WHERE ([Author] = '{0}')", AuthorEntry.Text.ToString());
                //SelectCommand="SELECT [BookID], [ISBN], [Title], [Author] FROM [MasterBookList] WHERE ([Author] = @Author)"
            }
            else if(!TitleEntry.Text.Equals(""))
            {
                SqlDataSource1.SelectCommand = String.Format("SELECT [ISBN], [Title], [Author], [BookID] FROM [MasterBookList] WHERE ([Title] = '{0}')", TitleEntry.Text.ToString());
                //Search for and display the data by Title
            }
        }

        protected void AddBookToUserList(object sender, GridViewCommandEventArgs e)
        {
            if (e.CommandName == "AddBook")
            {
                
                int index = Convert.ToInt32(e.CommandArgument);
                GridViewRow row = GridView1.Rows[index];

                
                String userID = User.Identity.GetUserId();
                String BookID = row.Cells[4].Text;

               

                //Put ISBN, Author, and Title into the UserBook Database
                SqlDataSource1.InsertCommand
                = String.Format("INSERT INTO [UserBooks] (UId, BookId) VALUES('{0}','{1}')", userID, BookID);
                SqlDataSource1.Insert();
            }
        }
    }
}