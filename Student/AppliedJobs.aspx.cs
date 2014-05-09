using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class Student_AppliedJobs : System.Web.UI.Page
{
    SqlDataAdapter SqlAda;
    DataSet ds;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            LoadStatus();
            
        }

    }

    public void LoadStatus()
    {
        string StudentId = Session["StudentId"].ToString();    

        DataAccess dataaccess = new DataAccess();

        using (SqlConnection Sqlcon = dataaccess.OpenConnection())
        {
            using (SqlCommand cmd = new SqlCommand())
            {

                cmd.Connection = Sqlcon;
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.CommandText = "getStatus";
                cmd.Parameters.Add(new SqlParameter("@StudentId",SqlDbType.Int));


                cmd.Parameters.Add(new SqlParameter("@Action", SqlDbType.VarChar, 50));
                cmd.Parameters["@Action"].Value = "select";
                cmd.Parameters["@StudentId"].Value = StudentId;
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

    }
    protected void GrdLoadJobCompany_RowUpdating(object sender, GridViewUpdateEventArgs e)
    {

    }
    protected void GrdLoadJobCompany_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
}