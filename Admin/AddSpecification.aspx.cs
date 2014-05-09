using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class Admin_AddSpecification : System.Web.UI.Page
{
    SqlDataAdapter SqlAda;
    DataSet ds;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            LoadQualification();
            LoadSpecification();
            PanelAdd.Visible = false;
            PanelShow.Visible = true;
        }
    }
    public void LoadQualification()
    {
        DataAccess dataaccess = new DataAccess();

        using (SqlConnection Sqlcon = dataaccess.OpenConnection())
        {
            using (SqlCommand cmd = new SqlCommand())
            {

                cmd.Connection = Sqlcon;
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.CommandText = "GetQualification";
                cmd.Parameters.Add(new SqlParameter("@Action", SqlDbType.VarChar, 50));
                cmd.Parameters["@Action"].Value = "select";
                cmd.Parameters.Add("@Exists", SqlDbType.Int).Direction = ParameterDirection.Output;
                SqlAda = new SqlDataAdapter(cmd);
                ds = new DataSet();
                SqlAda.Fill(ds);
                ddlQualification.DataSource = ds;
                ddlQualification.DataTextField = "QualificationName";
                ddlQualification.DataValueField = "QualificationId";
                ddlQualification.DataBind();
                if (ddlQualification.Items.Count >= 1)
                {
                    ListItem lstitem = new ListItem();
                    lstitem.Text = "[Select]";
                    lstitem.Value = "0";
                    ddlQualification.Items.Insert(0, lstitem);
                }
            }
        }

    }

    public void  LoadSpecification()
    {
        DataAccess dataaccess = new DataAccess();

        using (SqlConnection Sqlcon = dataaccess.OpenConnection())
        {
            using (SqlCommand cmd = new SqlCommand())
            {

                cmd.Connection = Sqlcon;
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.CommandText = "GetSpecification";
                cmd.Parameters.Add(new SqlParameter("@Action", SqlDbType.VarChar, 50));
                cmd.Parameters["@Action"].Value = "select";
                cmd.Parameters.Add("@Exists", SqlDbType.Int).Direction = ParameterDirection.Output;
                SqlAda = new SqlDataAdapter(cmd);
                ds = new DataSet();
                SqlAda.Fill(ds);
                GrdLoadSpecification.DataSource = ds;
                GrdLoadSpecification.DataBind();
            }
        }

    }
    protected void GrdLoadSpecification_PageIndexChanged(object sender, GridViewPageEventArgs e)
    {
        GrdLoadSpecification.PageIndex = e.NewPageIndex;
        LoadSpecification();

    }
    protected void GrdLoadSpecification_RowDataBound(object sender, GridViewRowEventArgs e)
    {

    }
    protected void GrdLoadSpecification_PageIndexChanged(object sender, EventArgs e)
    {

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

        txtSpecification.Text = "";
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
                cmd.CommandText = "InsertSpecification";
                cmd.Parameters.Add(new SqlParameter("@Exists", SqlDbType.Int));
                cmd.Parameters.Add(new SqlParameter("@SpecificationName", SqlDbType.VarChar, 600));
                cmd.Parameters.Add(new SqlParameter("@QualificationId", SqlDbType.Int));
                cmd.Parameters.Add(new SqlParameter("@date", SqlDbType.DateTime));

                cmd.Parameters["@date"].Value = System.DateTime.Now;
                cmd.Parameters["@SpecificationName"].Value = txtSpecification.Text;
                cmd.Parameters["@QualificationId"].Value = ddlQualification.SelectedValue;
                cmd.Parameters["@Exists"].Value = 0;
                cmd.ExecuteNonQuery();
                int retVal = (int)cmd.Parameters["@Exists"].Value;
            }
        }
        LoadSpecification();
        PanelAdd.Visible = false;
        PanelShow.Visible = true;
        txtSpecification.Text = "";
    }
}