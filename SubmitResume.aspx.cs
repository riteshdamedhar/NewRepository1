using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.IO;
using System.Data;
using System.Configuration;

public partial class SubmitResume : System.Web.UI.Page
{
    SqlDataAdapter SqlAda;
    DataSet ds;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            LoadNationality();
            LoadLocation();
            LoadQuali();
            LoadInstitute();
            LoadSpeci();
            LoadJobType();
            LoadFunction();
            LoadIndu();
        }
    }
    public void LoadNationality()
    {
        DataAccess dataaccess = new DataAccess();

        using (SqlConnection Sqlcon = dataaccess.OpenConnection())
        {
            using (SqlCommand cmd = new SqlCommand())
            {

                cmd.Connection = Sqlcon;
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.CommandText = "GetNationality";
                cmd.Parameters.Add(new SqlParameter("@Action", SqlDbType.VarChar, 50));
                cmd.Parameters["@Action"].Value = "select";
                cmd.Parameters.Add("@Exists", SqlDbType.Int).Direction = ParameterDirection.Output;
                SqlAda = new SqlDataAdapter(cmd);
                ds = new DataSet();
                SqlAda.Fill(ds);
                ddlNationality.DataSource = ds;
                ddlNationality.DataTextField = "Nationality";
                ddlNationality.DataValueField = "NationalityId";
                ddlNationality.DataBind();
                if (ddlNationality.Items.Count >= 1)
                {
                    ListItem lstitem = new ListItem();
                    lstitem.Text = "[Select]";
                    lstitem.Value = "0";
                    ddlNationality.Items.Insert(0, lstitem);
                }
            }
        }

    }
    public void  LoadLocation()
    {
        DataAccess dataaccess = new DataAccess();

        using (SqlConnection Sqlcon = dataaccess.OpenConnection())
        {
            using (SqlCommand cmd = new SqlCommand())
            {

                cmd.Connection = Sqlcon;
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.CommandText = "GetLocation";
                cmd.Parameters.Add(new SqlParameter("@Action", SqlDbType.VarChar, 50));
                cmd.Parameters["@Action"].Value = "select";
                cmd.Parameters.Add("@Exists", SqlDbType.Int).Direction = ParameterDirection.Output;
                SqlAda = new SqlDataAdapter(cmd);
                ds = new DataSet();
                SqlAda.Fill(ds);
                ddlLocation.DataSource = ds;
                ddlLocation.DataTextField = "LocationName";
                ddlLocation.DataValueField = "LocationId";
                ddlLocation.DataBind();
                if (ddlLocation.Items.Count >= 1)
                {
                    ListItem lstitem = new ListItem();
                    lstitem.Text = "[Select]";
                    lstitem.Value = "0";
                    ddlLocation.Items.Insert(0, lstitem);
                }
            }
        }


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
    public void LoadInstitute()
    {
        DataAccess dataaccess = new DataAccess();

        using (SqlConnection Sqlcon = dataaccess.OpenConnection())
        {
            using (SqlCommand cmd = new SqlCommand())
            {

                cmd.Connection = Sqlcon;
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.CommandText = "GetInstitute";
                cmd.Parameters.Add(new SqlParameter("@Action", SqlDbType.VarChar, 50));
                cmd.Parameters["@Action"].Value = "select";
                cmd.Parameters.Add("@Exists", SqlDbType.Int).Direction = ParameterDirection.Output;
                SqlAda = new SqlDataAdapter(cmd);
                ds = new DataSet();
                SqlAda.Fill(ds);
               ddlInstitute.DataSource = ds;
               ddlInstitute.DataTextField = "InstituteName";
               ddlInstitute.DataValueField = "InstituteId";
               ddlInstitute.DataBind();
               if (ddlInstitute.Items.Count >= 1)
                {
                    ListItem lstitem = new ListItem();
                    lstitem.Text = "[Select]";
                    lstitem.Value = "0";
                    ddlInstitute.Items.Insert(0, lstitem);
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

    public void LoadFunction()
    {
        DataAccess dataaccess = new DataAccess();

        using (SqlConnection Sqlcon = dataaccess.OpenConnection())
        {
            using (SqlCommand cmd = new SqlCommand())
            {

                cmd.Connection = Sqlcon;
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.CommandText = "GetFunction";
                cmd.Parameters.Add(new SqlParameter("@Action", SqlDbType.VarChar, 50));
                cmd.Parameters["@Action"].Value = "select";
                cmd.Parameters.Add("@Exists", SqlDbType.Int).Direction = ParameterDirection.Output;
                SqlAda = new SqlDataAdapter(cmd);
                ds = new DataSet();
                SqlAda.Fill(ds);
                ddlFunction.DataSource = ds;
                ddlFunction.DataTextField = "functionName";
                ddlFunction.DataValueField = "functionId";
                ddlFunction.DataBind();
                if (ddlFunction.Items.Count >= 1)
                {
                    ListItem lstitem = new ListItem();
                    lstitem.Text = "[Select]";
                    lstitem.Value = "0";
                    ddlFunction.Items.Insert(0, lstitem);
                }
            }
        }


    }


    public void LoadIndu()
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
                ddlCIndustry.DataSource = ds;
                ddlCIndustry.DataTextField = "IndustryName";
                ddlCIndustry.DataValueField = "IndustryId";
                ddlCIndustry.DataBind();
                if (ddlCIndustry.Items.Count >= 1)
                {
                    ListItem lstitem = new ListItem();
                    lstitem.Text = "[Select]";
                    lstitem.Value = "0";
                    ddlCIndustry.Items.Insert(0, lstitem);
                }
            }
        }


    }
    protected void TextBox8_TextChanged(object sender, EventArgs e)
    {

    }


    protected void ImageButton2_Click(object sender, ImageClickEventArgs e)
    {
        string gender = null;
        string filename = string.Empty;
        if (RadioButton1.Checked)
        {
            gender = "Male";

        }
        else if (RadioButton2.Checked)
        {
            gender = "Female";
        }
        else
        {
            gender = "Not Specified";
        }

        if (FileUpload1.PostedFile != null && FileUpload1.PostedFile.FileName != "")
        {
           filename = Path.GetFileName(FileUpload1.PostedFile.FileName);
           FileUpload1.SaveAs(Server.MapPath("~/Resumes/" + filename));

        }

        string fileImage = string.Empty;

        if (FileUpload2.PostedFile != null && FileUpload2.PostedFile.FileName != "")
        {
            fileImage = Path.GetFileName(FileUpload2.PostedFile.FileName);
            FileUpload2.SaveAs(Server.MapPath("~/Profile Image/" + fileImage));
            
        }
        DataAccess dataaccess = new DataAccess();
 
        using (SqlConnection Sqlcon = dataaccess.OpenConnection())
        {
            using (SqlCommand cmd = new SqlCommand())
            {

                cmd.Connection = Sqlcon;
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.CommandText = "InsertStudent";
                cmd.Parameters.Add(new SqlParameter("@Exists", SqlDbType.Int));
                cmd.Parameters.Add(new SqlParameter("@FirstName", SqlDbType.VarChar, 100));
                cmd.Parameters.Add(new SqlParameter("@LastName", SqlDbType.VarChar, 100));
                cmd.Parameters.Add(new SqlParameter("@Email", SqlDbType.VarChar, 100));
                cmd.Parameters.Add(new SqlParameter("@Password", SqlDbType.VarChar, 100));
                cmd.Parameters.Add(new SqlParameter("@MobNo", SqlDbType.VarChar, 100));
                cmd.Parameters.Add(new SqlParameter("@Gender", SqlDbType.VarChar, 100));
                cmd.Parameters.Add(new SqlParameter("@KeySkills", SqlDbType.VarChar, 500));
                cmd.Parameters.Add(new SqlParameter("@OtherInstitute", SqlDbType.VarChar, 500));
                cmd.Parameters.Add(new SqlParameter("@ResumeTitle", SqlDbType.VarChar, 500));
                cmd.Parameters.Add(new SqlParameter("@Resume", SqlDbType.VarChar, 500));
                cmd.Parameters.Add(new SqlParameter("@NationalityId", SqlDbType.Int));
                cmd.Parameters.Add(new SqlParameter("@LocationId", SqlDbType.Int));
                cmd.Parameters.Add(new SqlParameter("@JobTypeId", SqlDbType.Int));
                cmd.Parameters.Add(new SqlParameter("@TotalYearExp", SqlDbType.Int));
                cmd.Parameters.Add(new SqlParameter("@TotalMonthExp", SqlDbType.Int));
                cmd.Parameters.Add(new SqlParameter("@QualificationId", SqlDbType.Int));
                cmd.Parameters.Add(new SqlParameter("@FunctionId", SqlDbType.Int));
                cmd.Parameters.Add(new SqlParameter("@IndustryId", SqlDbType.Int));
                cmd.Parameters.Add(new SqlParameter("@SpecificationId", SqlDbType.Int));
                cmd.Parameters.Add(new SqlParameter("@YearOfPassing", SqlDbType.Int));
                cmd.Parameters.Add(new SqlParameter("@InstituteId", SqlDbType.Int));
                cmd.Parameters.Add(new SqlParameter("@Active", SqlDbType.Int));
                cmd.Parameters.Add(new SqlParameter("@ProfileImage", SqlDbType.VarChar, 500));
                cmd.Parameters.Add(new SqlParameter("@DOB", SqlDbType.Date));
                cmd.Parameters.Add(new SqlParameter("@Address", SqlDbType.VarChar, 500));

                
                cmd.Parameters["@DOB"].Value = txtDOB.Text;
                cmd.Parameters["@Address"].Value = txtPAdd.Text;
                cmd.Parameters["@ProfileImage"].Value = fileImage;
                cmd.Parameters["@FirstName"].Value = txtFname.Text;
                cmd.Parameters["@LastName"].Value = txtLname.Text;
                cmd.Parameters["@Email"].Value = txtEmail.Text;
                cmd.Parameters["@Password"].Value = txtPassword.Text;
                cmd.Parameters["@MobNo"].Value = txtMobNo.Text;
                cmd.Parameters["@Gender"].Value = gender;
                cmd.Parameters["@KeySkills"].Value = txtSkills.Text;
                cmd.Parameters["@OtherInstitute"].Value = txtOtherInsti.Text;
                cmd.Parameters["@ResumeTitle"].Value = txtResumeT.Text;
                cmd.Parameters["@Resume"].Value = filename;
                cmd.Parameters["@NationalityId"].Value = ddlNationality.SelectedValue;
                cmd.Parameters["@LocationId"].Value = ddlLocation.SelectedValue;
                cmd.Parameters["@JobTypeId"].Value = ddlJobType.SelectedValue;
                cmd.Parameters["@TotalYearExp"].Value = ddlYExp.SelectedValue;
                cmd.Parameters["@TotalMonthExp"].Value = ddlMExp.SelectedValue;
                cmd.Parameters["@QualificationId"].Value = ddlQul.SelectedValue;
                cmd.Parameters["@FunctionId"].Value = ddlFunction.SelectedValue;
                cmd.Parameters["@IndustryId"].Value = ddlCIndustry.SelectedValue;
                cmd.Parameters["@SpecificationId"].Value = ddlSpeci.SelectedValue;
                cmd.Parameters["@YearOfPassing"].Value = ddlPassingY.SelectedValue;
                cmd.Parameters["@InstituteId"].Value = ddlInstitute.SelectedValue;
                cmd.Parameters["@Active"].Value = 0;
                cmd.Parameters["@Exists"].Value = 0;
                int retVal = cmd.ExecuteNonQuery();
             //   int retVal = (int)cmd.Parameters["@Exists"].Value;
                if (retVal == 1)
                {
                    Response.Redirect("~/Conform.aspx?Email=" + txtEmail.Text);
                }
            }
        }
    }
    protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("~/MyAccount.aspx");
    }
    protected void txtUserName_TextChanged(object sender, EventArgs e)
    {

    }
    protected void ddlJobType_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
}