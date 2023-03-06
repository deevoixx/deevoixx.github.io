using DocumentFormat.OpenXml.Spreadsheet;
using MySql.Data.MySqlClient;
using OpenXmlPowerTools;
using Org.BouncyCastle.Asn1.Ocsp;
using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using static System.Windows.Forms.VisualStyles.VisualStyleElement.ListView;

namespace HOME
{
    public partial class WebForm3 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
           
           
        }
        protected void submitbtn_click(object sender, EventArgs e)
        {
            var DBCon = Handlers.SqlInstance.Instance;


            var email = Request.Form["email"];
            var txtpfp = txtPfpUrl.Text;
            var gender = Request.Form["gender"];
            var password = Request.Form["password"];
            var userId = Session["adminid"];
            MySqlCommand cmd = new MySqlCommand("UPDATE `admin_user` SET `email`='"+ email +" ',`password`='"+ password +" ',`pfpUrl`='" +txtpfp + "' WHERE `id` =" + userId +"", DBCon);

     

                    cmd.ExecuteNonQuery();
                
                DBCon.Close();

            Session.Clear();
            Response.Redirect("index.aspx");

        }


    }
}
