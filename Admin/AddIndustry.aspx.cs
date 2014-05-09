using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class Admin_AddIndustry : System.Web.UI.Page
{
    SqlDataAdapter SqlAda;
    DataSet ds;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            LoadIndustry();
            PanelAdd.Visible = false;
            PanelShow.Visible = true;
        }
    }


    public void LoadIndustry()
    {
        DataAccess dataaccess = new DataAccess();

        using (SqlConnection Sqlcon = dataaccess.OpenConnection())
        {
            using (SqlCommand cmd = new SqlCommand())
            {

                cmd.Connection = Sqlcon;
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.CommandText = "GetIndustry";
                cmd.Parameters.Add(new SqlParameter("@Action", SqlDbType.VarChar, 50));
                cmd.Parameters["@Action"].Value = "select";
                cmd.Parameters.Add("@Exists", SqlDbType.Int).Direction = ParameterDirection.Output;
                SqlAda = new SqlDataAdapter(cmd);
                ds = new DataSet();
                SqlAda.Fill(ds);
                GrdLoadIndustry.DataSource = ds;
                GrdLoadIndustry.DataBind();
            }
        }

    }
    protected void btnAdd_Click(object sender, EventArgs e)
    {
        PanelAdd.Visible = true;
        PanelShow.Visible = false;
    }
    protected void GrdLoadIndustry_PageIndexChanged(object sender, GridViewPageEventArgs e)
    {
        GrdLoadIndustry.PageIndex = e.NewPageIndex;
        LoadIndustry();


    }
    protected void GrdLoadIndustry_RowDataBound(object sender, GridViewRowEventArgs e)
    {

    }
    protected void GrdLoadIndustry_PageIndexChanged(object sender, EventArgs e)
    {

    }
    
    protected void btnExit_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/Admin/AdminHome.aspx");
    }
    protected void btnCancel_Click(object sender, EventArgs e)
    {
        PanelShow.Visible = true;
        PanelAdd.Visible = false;

        txtIndustry.Text = "";
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
                cmd.CommandText = "InsertIndustry";
                cmd.Parameters.Add(new SqlParameter("@Exists", SqlDbType.Int));
                cmd.Parameters.Add(new SqlParameter("@IndustryName", SqlDbType.VarChar, 600));

                cmd.Parameters.Add(new SqlParameter("@date", SqlDbType.DateTime));

                cmd.Parameters["@date"].Value = System.DateTime.Now;
                cmd.Parameters["@IndustryName"].Value = txtIndustry.Text;

                cmd.Parameters["@Exists"].Value = 0;
                cmd.ExecuteNonQuery();
                int retVal = (int)cmd.Parameters["@Exists"].Value;
            }
        }
        LoadIndustry();
        PanelAdd.Visible = false;
        PanelShow.Visible = true;
        txtIndustry.Text = "";
    }
}