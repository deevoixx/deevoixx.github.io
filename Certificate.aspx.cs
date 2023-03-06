using System;
using System.Web.UI;

namespace HOME
{
    public partial class Certificate : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void Back_Click(object sender, EventArgs e)
        {
            Response.Redirect("HOMEPAGE.aspx");
        }
    }
}