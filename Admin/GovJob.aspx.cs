using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;


public partial class Admin_AddClassNews : System.Web.UI.Page
{
    SqlDataAdapter SqlAda;
    DataSet ds;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            LoadGovJob();
            PanelAdd.Visible = false;
            PanelShow.Visible = true;
        }
    }
    public void LoadGovJob()
    {
        DataAccess dataaccess = new DataAccess();

        using (SqlConnection Sqlcon = dataaccess.OpenConnection())
        {
            using (SqlCommand cmd = new SqlCommand())
            {

                cmd.Connection = Sqlcon;
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.CommandText = "GetGovJob";
                cmd.Parameters.Add(new SqlParameter("@Action", SqlDbType.VarChar, 50));
                cmd.Parameters["@Action"].Value = "select";
                cmd.Parameters.Add("@Exists", SqlDbType.Int).Direction = ParameterDirection.Output;
                SqlAda = new SqlDataAdapter(cmd);
                ds = new DataSet();
                SqlAda.Fill(ds);
                GrdLoadGovJob.DataSource = ds;
                GrdLoadGovJob.DataBind();
            }
        }
 
    }
    protected void btnAdd_Click(object sender, EventArgs e)
    {
        PanelAdd.Visible = true;
        PanelShow.Visible = false;
    }
    protected void btnExit_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/Admin/AdminHome.aspx");
    }
    protected void btnSave_Click(object sender, EventArgs e)
    {
        DataAccess dataaccess = new DataAccess();

        using (SqlConnection Sqlcon = dataaccess.OpenConnection())
        {
            using (SqlCommand cmd = new SqlCommand())
            {

                cmd.Connection = Sqlcon;
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.CommandText = "InsertGovJob";
                cmd.Parameters.Add(new SqlParameter("@Exists", SqlDbType.Int));
                cmd.Parameters.Add(new SqlParameter("@GovJobHeading", SqlDbType.VarChar, 600));
                cmd.Parameters.Add(new SqlParameter("@GovJobDesc", SqlDbType.NVarChar, 600));
                cmd.Parameters.Add(new SqlParameter("@GovJobDate", SqlDbType.DateTime));

                cmd.Parameters["@GovJobDate"].Value = System.DateTime.Now;
                cmd.Parameters["@GovJobHeading"].Value = txtGovJobHead.Text;
                cmd.Parameters["@GovJobDesc"].Value = txtGovJobDesc.Text;
                cmd.Parameters["@Exists"].Value = 0;
                cmd.ExecuteNonQuery();
                int retVal = (int)cmd.Parameters["@Exists"].Value;
            }
        }
        LoadGovJob();
        PanelAdd.Visible = false;
        PanelShow.Visible = true;
        txtGovJobDesc.Text = "";
        txtGovJobHead.Text = "";
    }
    protected void btnCancel_Click(object sender, EventArgs e)
    {
        PanelShow.Visible = true;
        PanelAdd.Visible = false;
        txtGovJobDesc.Text = "";
        txtGovJobHead.Text = "";

    }
   
    protected void GrdLoadNews_RowDataBound(object sender, GridViewRowEventArgs e)
    {

    }
    protected void GrdLoadNews_PageIndexChanged(object sender, EventArgs e)
    {

    }
    
    protected void GrdLoadGovJob_PageIndexChanged(object sender, GridViewPageEventArgs e)
    {
        GrdLoadGovJob.PageIndex = e.NewPageIndex;
        LoadGovJob();
    }
    protected void GrdLoadGovJob_RowCommand(object sender, GridViewCommandEventArgs e)
    {

    }
    protected void GrdLoadGovJob_PageIndexChanged(object sender, EventArgs e)
    {

    }
}