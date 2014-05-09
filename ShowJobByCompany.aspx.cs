using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class ShowJobByCompany : System.Web.UI.Page
{
    SqlDataAdapter SqlAda;
    DataSet ds;
    string CompanyId = string.Empty;
    protected void Page_Load(object sender, EventArgs e)
    {
        
      
        CompanyId = Request.QueryString["CompanyId"].ToString();
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

                cmd.Parameters["@CompanyId"].Value = int.Parse(CompanyId);

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
          int indexrow = e.RowIndex;
        string tid = ((Label)GrdLoadJobCompany.Rows[indexrow].FindControl("PostJobId")).Text;
        Session["PostJobId"] = tid;

        Response.Redirect("~/MyAccount.aspx");
    }
    protected void GrdLoadJobCompany_RowUpdating(object sender, GridViewUpdateEventArgs e)
    {
        int indexrow = e.RowIndex;
        string tid = ((Label)GrdLoadJobCompany.Rows[indexrow].FindControl("PostJobId")).Text;

        Response.Redirect("~/ShowJobDetails.aspx?PostJobId=" + tid);
    }
}