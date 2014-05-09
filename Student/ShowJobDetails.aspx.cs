using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class Student_ShowJobDetails : System.Web.UI.Page
{
    SqlDataAdapter SqlAda;
    DataSet ds;
    string PostJobId = string.Empty;
    protected void Page_Load(object sender, EventArgs e)
    {
        PostJobId = Request.QueryString["PostJobId"].ToString();
        LoadJobDetails();

    }
    public void LoadJobDetails()
    {

        DataAccess dataaccess = new DataAccess();
        SqlConnection Sqlcon = dataaccess.OpenConnection();

        String SQLQuery = "SELECT p.PostJobId, p.JobTitle,p.JobDesc,p.QulificationId,p.SpecificationId,p.ExpInYear,p.ExpInMonth,p.JobTypeId,p.CompanyId,p.Active,p.Location,C.CompanyName,C.CompanyLogo,Q.QualificationName from PostJobMaster as p inner join CompanyMaster as C on C.CompanyId = p.CompanyId inner join QualificationMaster as Q on Q.QualificationId=p.QulificationId where p.CompanyId =" + PostJobId + "";



        SqlCommand command = new SqlCommand(SQLQuery, Sqlcon);
        SqlDataReader Dr;



        Dr = command.ExecuteReader();

        while (Dr.Read())
        {

            lblJobTitle.Text = Dr["JobTitle"].ToString();
            lblCompName.Text = Dr["CompanyName"].ToString();
            imgCompLogo.ImageUrl = "~/CompanyLogo/" + Dr["CompanyLogo"].ToString();
            lblQuil.Text = Dr["QualificationName"].ToString();
            lblExpYear.Text = Dr["ExpInYear"].ToString();
            lblExpMonths.Text = Dr["ExpInMonth"].ToString();
            lblLocation.Text = Dr["Location"].ToString();
            lblJobDesc.Text = Dr["JobDesc"].ToString();
        }

        Dr.Close();

    }

}