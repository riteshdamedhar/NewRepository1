using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;


public partial class Admin_Nationality : System.Web.UI.Page
{
    SqlDataAdapter SqlAda;
    DataSet ds;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            LoadNationality();
            PanelAdd.Visible = false;
            PanelShow.Visible = true;
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
                GrdLoadNationality.DataSource = ds;
                GrdLoadNationality.DataBind();
            }
        }

    }
    protected void GrdLoadNationality_PageIndexChanged(object sender, GridViewPageEventArgs e)
    {
        GrdLoadNationality.PageIndex = e.NewPageIndex;
        LoadNationality();

    }
    protected void GrdLoadNationality_RowDataBound(object sender, GridViewRowEventArgs e)
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
       
        txtNationality.Text = "";
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
                cmd.CommandText = "InsertNationality";
                cmd.Parameters.Add(new SqlParameter("@Exists", SqlDbType.Int));
                cmd.Parameters.Add(new SqlParameter("@Nationality", SqlDbType.VarChar, 600));
              
                cmd.Parameters.Add(new SqlParameter("@date", SqlDbType.DateTime));

                cmd.Parameters["@date"].Value = System.DateTime.Now;
                cmd.Parameters["@Nationality"].Value = txtNationality.Text;
                
                cmd.Parameters["@Exists"].Value = 0;
                cmd.ExecuteNonQuery();
                int retVal = (int)cmd.Parameters["@Exists"].Value;
            }
        }
        LoadNationality();
        PanelAdd.Visible = false;
        PanelShow.Visible = true;
        txtNationality.Text = "";
       
    }
    protected void GrdLoadNationality_PageIndexChanged(object sender, EventArgs e)
    {

    }
}