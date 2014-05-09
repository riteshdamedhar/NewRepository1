using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class Employers : System.Web.UI.Page
{
    SqlDataAdapter SqlAda;
    DataSet ds;
    protected void Page_Load(object sender, EventArgs e)
    {
        LoadAcceptedCompany();
    }
    public void LoadAcceptedCompany()
    {
        DataAccess dataaccess = new DataAccess();

        using (SqlConnection Sqlcon = dataaccess.OpenConnection())
        {
            using (SqlCommand cmd = new SqlCommand())
            {

                cmd.Connection = Sqlcon;
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.CommandText = "getCompany";
                cmd.Parameters.Add(new SqlParameter("@Action", SqlDbType.VarChar, 50));
                cmd.Parameters.Add(new SqlParameter("@Active", SqlDbType.Int));


                cmd.Parameters["@Active"].Value = 1;

                cmd.Parameters["@Action"].Value = "select";
                cmd.Parameters.Add("@Exists", SqlDbType.Int).Direction = ParameterDirection.Output;
                SqlAda = new SqlDataAdapter(cmd);
                ds = new DataSet();
                SqlAda.Fill(ds);

                GrdLoadCompany.DataSource = ds;
                GrdLoadCompany.DataBind();


            }
        }

    }
    protected void GrdLoadCompany_PageIndexChanged(object sender, EventArgs e)
    {

    }
    protected void GrdLoadCompany_RowDataBound(object sender, GridViewRowEventArgs e)
    {

    }
    protected void GrdLoadCompany_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {

        int indexrow = e.RowIndex;
        string tid = ((Label)GrdLoadCompany.Rows[indexrow].FindControl("CompanyId")).Text;

        Response.Redirect("~/ShowCompanyDetails.aspx?CompanyId=" + tid);

    }
    protected void GrdLoadCompany_RowUpdating(object sender, GridViewUpdateEventArgs e)
    {

        int indexrow = e.RowIndex;
        string tid = ((Label)GrdLoadCompany.Rows[indexrow].FindControl("CompanyId")).Text;

        Response.Redirect("~/ShowJobByCompany.aspx?CompanyId="+tid);

    }
}