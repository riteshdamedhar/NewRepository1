using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

public partial class Admin_AddEvent : System.Web.UI.Page
{
    SqlDataAdapter SqlAda;
    DataSet ds;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            LoadData();
            PanelAdd.Visible = false;
            PanelShow.Visible = true;
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
                cmd.CommandText = "InsertITJob";
                cmd.Parameters.Add(new SqlParameter("@Exists", SqlDbType.Int));
                cmd.Parameters.Add(new SqlParameter("@ITJobHeading", SqlDbType.VarChar, 100));
                cmd.Parameters.Add(new SqlParameter("@ITJobDesc", SqlDbType.NVarChar, 50));
                cmd.Parameters.Add(new SqlParameter("@ITJobDate", SqlDbType.DateTime));

                cmd.Parameters["@ITJobHeading"].Value = txtITJob.Text;
                cmd.Parameters["@ITJobDesc"].Value = txtITDesc.Text;
                cmd.Parameters["@ITJobDate"].Value = System.DateTime.Now;

                cmd.Parameters["@Exists"].Value = 0;
                cmd.ExecuteNonQuery();
                int retVal = (int)cmd.Parameters["@Exists"].Value;
            }
        }
        LoadData();
        PanelShow.Visible = true;
        PanelAdd.Visible = false;
        txtITJob.Text = "";
        txtITDesc.Text = "";
      
    }
    protected void btnExit_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/Admin/AdminHome.aspx");

    }
    protected void txtEventHead_TextChanged(object sender, EventArgs e)
    {

    }
    protected void btnCancel_Click(object sender, EventArgs e)
    {
        PanelShow.Visible = true;
        PanelAdd.Visible = false;
        txtITJob.Text = "";
        txtITDesc.Text = "";

    }
protected void  btnAdd_Click(object sender, EventArgs e)
{
    PanelAdd.Visible=true;
    PanelShow.Visible = false;
}




public void LoadData()
{
    DataAccess dataaccess = new DataAccess();

    using (SqlConnection Sqlcon = dataaccess.OpenConnection())
    {
        using (SqlCommand cmd = new SqlCommand())
        {

            cmd.Connection = Sqlcon;
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.CommandText = "GetITJob";
            cmd.Parameters.Add(new SqlParameter("@Action", SqlDbType.VarChar, 50));
            cmd.Parameters["@Action"].Value = "select";
            cmd.Parameters.Add("@Exists", SqlDbType.Int).Direction = ParameterDirection.Output;
            SqlAda = new SqlDataAdapter(cmd);
            ds = new DataSet();
            SqlAda.Fill(ds);
            GrdLoadITJob.DataSource = ds;
            GrdLoadITJob.DataBind();
        }
    }
}

protected void GrdLoadITJob_PageIndexChanged(object sender, GridViewPageEventArgs e)
{
    GrdLoadITJob.PageIndex = e.NewPageIndex;
    LoadData();
}
protected void GrdLoadITJob_RowDataBound(object sender, GridViewRowEventArgs e)
{

}

protected void GrdLoadITJob_PageIndexChanged(object sender, EventArgs e)
{

}
}