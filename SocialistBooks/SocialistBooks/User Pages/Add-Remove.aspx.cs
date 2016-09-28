using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

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
                
            }
            else if(!AuthorEntry.Text.Equals(""))
            {
                SqlDataSource1.SelectCommand = String.Format("SELECT [ISBN], [Title], [Author] FROM [MasterBookList] WHERE ([Author] = '{0}')",AuthorEntry.Text.ToString());
                //SelectCommand="SELECT [BookID], [ISBN], [Title], [Author] FROM [MasterBookList] WHERE ([Author] = @Author)"
            }
            else if(!TitleEntry.Text.Equals(""))
            {
                //Search for and display the data by Title
            }
        }
    }
}