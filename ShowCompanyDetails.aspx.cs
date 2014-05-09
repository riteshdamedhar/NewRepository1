using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class ShowCompanyDetails : System.Web.UI.Page
{
    SqlDataAdapter SqlAda;
    DataSet ds;
    string CompanyId = string.Empty;
    protected void Page_Load(object sender, EventArgs e)
    {

       
       CompanyId = Request.QueryString["CompanyId"].ToString();
       LoadCompanyDetails();
    }

    public void LoadCompanyDetails()
    {
        
                DataAccess dataaccess = new DataAccess();
                SqlConnection Sqlcon = dataaccess.OpenConnection();
               
                String SQLQuery = "SELECT CompanyId , CompanyName , CompanyAdd, CompanyLogo,CompanyDesc,CompanyRegNo, CompanyMobNo, CompanyEmail, Active from CompanyMaster where  CompanyId = "+CompanyId+"";
                SqlCommand command = new SqlCommand(SQLQuery, Sqlcon);
                SqlDataReader Dr;



                Dr = command.ExecuteReader();

                while (Dr.Read())
                {

                        lblCompanyName.Text = Dr["CompanyName"].ToString();
                        lblCompanyDesc.Text=  Dr["CompanyDesc"].ToString();
                        imgCompanyLogo.ImageUrl="~/CompanyLogo/"+ Dr["CompanyLogo"].ToString();
                        lblCompanyNo.Text=Dr["CompanyMobNo"].ToString();
                        lblCompRegNo.Text=Dr["CompanyRegNo"].ToString();
                        lblEmail.Text=Dr["CompanyEmail"].ToString(); 
                }

                    Dr.Close();
            
        }

    }

