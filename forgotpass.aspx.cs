using MySql.Data.MySqlClient;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace HOME
{
    public partial class forgotpass : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void Button1_Click(object sender, EventArgs e)
        {
            var DBCon = Handlers.SqlInstance.Instance;

            if (textpass.Text != confirmpass.Text)
            {
                messagelabel.Visible = true;
                messagelabel.Text = "Password must match!";

                messagelabel.ForeColor = System.Drawing.Color.Red;
            }
            else
            {
                var email = textusername.Text;
                var pass = confirmpass.Text;

                MySqlCommand cmd = new MySqlCommand("UPDATE `users` SET `password`='" + pass + "' WHERE `email` = '" + email + "'", DBCon);



                cmd.ExecuteNonQuery();

                DBCon.Close();

                Session.Clear();
                Response.Redirect("index.aspx");
            }
        }
    }
}