using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.IO;
using System.Data;
using System.Configuration;

public partial class CompanyLogin : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    
        private bool YourValidationFunction(string UserName, string Password, int Active)

        {
            DataAccess dataaccess = new DataAccess();
            SqlConnection Sqlcon = dataaccess.OpenConnection();
            bool boolReturnValue = false;
            String SQLQuery = "SELECT CompanyId, CompanyEmail, Password, Active FROM CompanyMaster where CompanyEmail='"+Login1.UserName+"' and Password='"+Login1.Password+"' and Active='"+Active+"'";
            SqlCommand command = new SqlCommand(SQLQuery, Sqlcon);
            SqlDataReader Dr;

     

        Dr = command.ExecuteReader();

        while (Dr.Read())

        {

            if ((UserName == Dr["CompanyEmail"].ToString()) & (Password == Dr["Password"].ToString()) )

            {
                Session["CompanyId"] = Dr["CompanyId"].ToString();


                boolReturnValue = true;

            }

            Dr.Close();

            return boolReturnValue;

        }

        return boolReturnValue;

        }

      
        protected void Login1_Authenticate1(object sender, AuthenticateEventArgs e)
        {
            int Active = 1;
            if (YourValidationFunction(Login1.UserName, Login1.Password, Active))
            {
                Response.Redirect("~/Company/CompanyHome.aspx");
            }

            else
            {

                e.Authenticated = false;

            }
        }
}

    
