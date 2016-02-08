using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
namespace LoginPage
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void txt_GLogin_Click(object sender, EventArgs e)
        {
            SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["project-testConnectionString"].ConnectionString);
            conn.Open();
            string checkuser = "select * from employee where name_employee='" + txt_Username.Text + "' and password_employee='"+txt_Password.Text+"'";
            SqlCommand com = new SqlCommand(checkuser, conn);
            object obj = com.ExecuteScalar();
            conn.Close();
            if (obj != null)
            {
                Session["New"] = txt_Username.Text;
                Response.Write("Success !");
                Response.Redirect("Manager.aspx");
                
            }
            else
            {
                Response.Write("Incorrect Username or Password !");
            }

        }


        protected void txt_Password_TextChanged(object sender, EventArgs e)
        {

        }

        protected void txt_Back_Click(object sender, EventArgs e)
        {
            Response.Redirect("Default.aspx");
        }
    }
}