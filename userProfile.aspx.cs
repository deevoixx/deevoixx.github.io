using MySql.Data.MySqlClient;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Windows.Forms;

namespace HOME
{
    public partial class userProfile : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
           
        }

        protected void updatebtn_Click(object sender, EventArgs e)
        {
            var DBCon = Handlers.SqlInstance.Instance;


            var email = Request.Form["email"];
            var txtpfp = txtPfpUrl.Text;
            var gender = Request.Form["gender"];
            var password = Request.Form["password"];
            var userId = Session["id"];
            MySqlCommand cmd = new MySqlCommand("UPDATE `users` SET `email`='" + email + "',`gender`='" + gender + " ',`password`='" + password + " ',`pfpUrl`='" + txtpfp + "' WHERE `user_id` =" + userId + "", DBCon);



            cmd.ExecuteNonQuery();

            DBCon.Close();

            Session.Clear();
            Response.Redirect("index.aspx");

        }
    }
}