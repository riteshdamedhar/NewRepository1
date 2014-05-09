using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class Admin_AddCoures : System.Web.UI.Page
{
    SqlDataAdapter SqlAda;
    DataSet ds;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            LoadMgtJob();
            PanelAdd.Visible = false;
            PanelShow.Visible = true;
        }
    }

    public void LoadMgtJob()
    {
        DataAccess dataaccess = new DataAccess();

        using (SqlConnection Sqlcon = dataaccess.OpenConnection())
        {
            using (SqlCommand cmd = new SqlCommand())
            {

                cmd.Connection = Sqlcon;
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.CommandText = "GetMgtJob";
                cmd.Parameters.Add(new SqlParameter("@Action", SqlDbType.VarChar, 50));
                cmd.Parameters["@Action"].Value = "select";
                cmd.Parameters.Add("@Exists", SqlDbType.Int).Direction = ParameterDirection.Output;
                SqlAda = new SqlDataAdapter(cmd);
                ds = new DataSet();
                SqlAda.Fill(ds);
                GrdLoadMgtJob.DataSource = ds;
                GrdLoadMgtJob.DataBind();
            }
        }

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
                cmd.CommandText = "InsertMgtJob";
                cmd.Parameters.Add(new SqlParameter("@Exists", SqlDbType.Int));
                cmd.Parameters.Add(new SqlParameter("@MgtJobHeading", SqlDbType.VarChar, 600));
                cmd.Parameters.Add(new SqlParameter("@MgtJobDesc", SqlDbType.NVarChar, 600));
                cmd.Parameters.Add(new SqlParameter("@MgtJobDate", SqlDbType.DateTime));

                cmd.Parameters["@MgtJobDate"].Value = System.DateTime.Now;
                cmd.Parameters["@MgtJobHeading"].Value = txtMgtHead.Text;
                cmd.Parameters["@MgtJobDesc"].Value = txtMgtDesc.Text;
                cmd.Parameters["@Exists"].Value = 0;
                cmd.ExecuteNonQuery();
                int retVal = (int)cmd.Parameters["@Exists"].Value;
            }
        }
        LoadMgtJob();
        PanelAdd.Visible = false;
        PanelShow.Visible = true;
        txtMgtDesc.Text = "";
        txtMgtHead.Text = "";
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
    protected void btnCancel_Click(object sender, EventArgs e)
    {
        PanelShow.Visible = true;
        PanelAdd.Visible = false;
        txtMgtHead.Text = "";
        txtMgtDesc.Text = "";
    }
    protected void GrdLoadMgtJob_PageIndexChanged(object sender, GridViewPageEventArgs e)
    {
        GrdLoadMgtJob.PageIndex = e.NewPageIndex;
        LoadMgtJob();

    }
    protected void GrdLoadMgtJob_RowCommand(object sender, GridViewCommandEventArgs e)
    {

    }
    protected void GrdLoadMgtJob_PageIndexChanged(object sender, EventArgs e)
    {

    }
}