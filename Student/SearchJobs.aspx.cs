using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class Student_SearchJobs : System.Web.UI.Page
{
    SqlDataAdapter SqlAda;
    DataSet ds;
    protected void Page_Load(object sender, EventArgs e)
    {

        LoadPostedJob();
    }


    public void LoadPostedJob()
    {
        DataAccess dataaccess = new DataAccess();

        using (SqlConnection Sqlcon = dataaccess.OpenConnection())
        {
            using (SqlCommand cmd = new SqlCommand())
            {

                cmd.Connection = Sqlcon;
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.CommandText = "getPostJob";
                cmd.Parameters.Add(new SqlParameter("@Action", SqlDbType.VarChar, 50));
                cmd.Parameters.Add(new SqlParameter("@CompanyId", SqlDbType.Int));

                cmd.Parameters["@CompanyId"].Value = 0;

                cmd.Parameters["@Action"].Value = "select";
                cmd.Parameters.Add("@Exists", SqlDbType.Int).Direction = ParameterDirection.Output;
                SqlAda = new SqlDataAdapter(cmd);
                ds = new DataSet();
                SqlAda.Fill(ds);
                GrdLoadJobCompany.DataSource = ds;
                GrdLoadJobCompany.DataBind();
            }
        }

    }

    protected void GrdLoadJobCompany_PageIndexChanged(object sender, EventArgs e)
    {


    }
    protected void GrdLoadJobCompany_RowDataBound(object sender, GridViewRowEventArgs e)
    {


    }
    protected void GrdLoadJobCompany_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {
        string StudentId = Session["StudentId"].ToString();

        int indexrow = e.RowIndex;
        string tid = ((Label)GrdLoadJobCompany.Rows[indexrow].FindControl("PostJobId")).Text;
       // Session["PostJobId"] = tid;
        string Cid = ((Label)GrdLoadJobCompany.Rows[indexrow].FindControl("CompanyId")).Text;
       // Response.Redirect("~/MyAccount.aspx");
        DataAccess dataaccess = new DataAccess();

        using (SqlConnection Sqlcon = dataaccess.OpenConnection())
        {
            using (SqlCommand cmd = new SqlCommand())
            {

                cmd.Connection = Sqlcon;
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.CommandText = "InsertJobApplied";
                cmd.Parameters.Add(new SqlParameter("@Exists", SqlDbType.Int));
                cmd.Parameters.Add(new SqlParameter("@StudentId", SqlDbType.Int));
                cmd.Parameters.Add(new SqlParameter("@CompanyId", SqlDbType.Int));
                cmd.Parameters.Add(new SqlParameter("@PostJobId", SqlDbType.Int));
                cmd.Parameters.Add(new SqlParameter("@Status", SqlDbType.VarChar,500));

                cmd.Parameters["@StudentId"].Value = int.Parse( StudentId);
                cmd.Parameters["@CompanyId"].Value = int.Parse(Cid);
                cmd.Parameters["@PostJobId"].Value = int.Parse(tid);
                cmd.Parameters["@Status"].Value = "In Process";
                 

                cmd.Parameters["@Exists"].Value = 0;
                cmd.ExecuteNonQuery();
                int retVal = (int)cmd.Parameters["@Exists"].Value;
                if (retVal == 1)
                {
                    Response.Redirect("~/Student/AppliedSuccess.aspx");
 
                }
            }
        }

    }
    protected void GrdLoadJobCompany_RowUpdating(object sender, GridViewUpdateEventArgs e)
    {

        int indexrow = e.RowIndex;
        string tid = ((Label)GrdLoadJobCompany.Rows[indexrow].FindControl("PostJobId")).Text;

        Response.Redirect("~/Student/ShowJobDetails.aspx?PostJobId=" + tid);
    }
    protected void GrdLoadJobCompany_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
}