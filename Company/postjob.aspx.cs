using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class Company_postjob : System.Web.UI.Page
{
    private static string State = null;
    private static int ID = 0;
    SqlDataAdapter SqlAda;
    DataSet ds;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            LoadJobType();
            LoadQuali();
            LoadSpeci();
            LoadPostedJob();
            PanelAdd.Visible = false;


        }

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
              

                cmd.Parameters["@Action"].Value = "select";
                cmd.Parameters.Add("@Exists", SqlDbType.Int).Direction = ParameterDirection.Output;
                SqlAda = new SqlDataAdapter(cmd);
                ds = new DataSet();
                SqlAda.Fill(ds);
                GrdLoadPostJob.DataSource = ds;
                GrdLoadPostJob.DataBind();


            }
        }

    }


    protected void btnAdd_Click(object sender, EventArgs e)
    {
        State = "I";
        PanelAdd.Visible = true;
        PanelShow.Visible = false;
    }
    protected void btnExit_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/Company/CompanyHome.aspx");

    }
    public void LoadQuali()
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
                ddlQul.DataSource = ds;
                ddlQul.DataTextField = "QualificationName";
                ddlQul.DataValueField = "QualificationId";
                ddlQul.DataBind();
                if (ddlQul.Items.Count >= 1)
                {
                    ListItem lstitem = new ListItem();
                    lstitem.Text = "[Select]";
                    lstitem.Value = "0";
                    ddlQul.Items.Insert(0, lstitem);
                }
            }
        }


    }

    public void LoadSpeci()
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
                ddlSpeci.DataSource = ds;
                ddlSpeci.DataTextField = "SpecificationName";
                ddlSpeci.DataValueField = "SpecificationId";
                ddlSpeci.DataBind();
                if (ddlSpeci.Items.Count >= 1)
                {
                    ListItem lstitem = new ListItem();
                    lstitem.Text = "[Select]";
                    lstitem.Value = "0";
                    ddlSpeci.Items.Insert(0, lstitem);
                }
            }
        }


    }

    public void LoadJobType()
    {
        DataAccess dataaccess = new DataAccess();

        using (SqlConnection Sqlcon = dataaccess.OpenConnection())
        {
            using (SqlCommand cmd = new SqlCommand())
            {

                cmd.Connection = Sqlcon;
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.CommandText = "GetJobType";
                cmd.Parameters.Add(new SqlParameter("@Action", SqlDbType.VarChar, 50));
                cmd.Parameters["@Action"].Value = "select";
                cmd.Parameters.Add("@Exists", SqlDbType.Int).Direction = ParameterDirection.Output;
                SqlAda = new SqlDataAdapter(cmd);
                ds = new DataSet();
                SqlAda.Fill(ds);
                ddlJobType.DataSource = ds;
                ddlJobType.DataTextField = "JobTypeName";
                ddlJobType.DataValueField = "JobTypeId";
                ddlJobType.DataBind();
                if (ddlJobType.Items.Count >= 1)
                {
                    ListItem lstitem = new ListItem();
                    lstitem.Text = "[Select]";
                    lstitem.Value = "0";
                    ddlJobType.Items.Insert(0, lstitem);
                }
            }
        }


    }
    protected void btnSubmit_Click(object sender, EventArgs e)
    {
        DataAccess dataaccess = new DataAccess();

        using (SqlConnection Sqlcon = dataaccess.OpenConnection())
        {
            using (SqlCommand cmd = new SqlCommand())
            {

                cmd.Connection = Sqlcon;
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.CommandText = "insertPostJob";
                cmd.Parameters.Add(new SqlParameter("@Exists", SqlDbType.Int));
                cmd.Parameters.Add(new SqlParameter("@QulificationId", SqlDbType.Int));
                cmd.Parameters.Add(new SqlParameter("@JobTitle", SqlDbType.VarChar,100));
                cmd.Parameters.Add(new SqlParameter("@JobDesc", SqlDbType.VarChar, 500));
                cmd.Parameters.Add(new SqlParameter("@SpecificationId", SqlDbType.Int));
                cmd.Parameters.Add(new SqlParameter("@ExpInYear", SqlDbType.Int));
                cmd.Parameters.Add(new SqlParameter("@ExpInMonth", SqlDbType.Int));
                cmd.Parameters.Add(new SqlParameter("@JobTypeId", SqlDbType.Int));
                cmd.Parameters.Add(new SqlParameter("@CompanyId", SqlDbType.Int));
                cmd.Parameters.Add(new SqlParameter("@Active", SqlDbType.Int));
                cmd.Parameters.Add(new SqlParameter("@Location", SqlDbType.VarChar, 100));



                cmd.Parameters["@Location"].Value = txtLocation.Text;
                cmd.Parameters["@QulificationId"].Value = ddlQul.SelectedValue;
                cmd.Parameters["@JobTitle"].Value = txtJobTitle.Text;
                cmd.Parameters["@JobDesc"].Value = txtJobDesc.Text;
                cmd.Parameters["@SpecificationId"].Value = ddlSpeci.SelectedValue;
                cmd.Parameters["@ExpInYear"].Value = ddlYear.SelectedValue;
                cmd.Parameters["@ExpInMonth"].Value = ddlMonth.SelectedValue;
                cmd.Parameters["@JobTypeId"].Value = ddlJobType.SelectedValue;
                cmd.Parameters["@CompanyId"].Value = Session["CompanyId"].ToString();
                cmd.Parameters["@Active"].Value = 1;


                cmd.Parameters["@Exists"].Value = 0;
                cmd.ExecuteNonQuery();
                int retVal = (int)cmd.Parameters["@Exists"].Value;
            }
        }
        LoadPostedJob();
        PanelAdd.Visible = false;
        PanelShow.Visible = true;
       // txtQualificationName.Text = "";
    }
    protected void btnCancel_Click(object sender, EventArgs e)
    {
        PanelAdd.Visible = false;
        PanelShow.Visible = true;

    }
    protected void GrdLoadPostJob_PageIndexChanged(object sender, EventArgs e)
    {

    }
    protected void GrdLoadPostJob_RowDataBound(object sender, GridViewRowEventArgs e)
    {

    }
    protected void GrdLoadPostJob_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {

    }
    protected void GrdLoadPostJob_RowUpdating(object sender, GridViewUpdateEventArgs e)
    {

    }
}