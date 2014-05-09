using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class Admin_AddLocation : System.Web.UI.Page
{
    SqlDataAdapter SqlAda;
    DataSet ds;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            LoadNationality();
            LoadLocation();
            PanelAdd.Visible = false;
            PanelShow.Visible = true;
        }
    }
    protected void GrdLoadLocation_PageIndexChanged(object sender, GridViewPageEventArgs e)
    {
        GrdLoadLocation.PageIndex = e.NewPageIndex;
        LoadLocation();
    }
    protected void GrdLoadLocation_RowDataBound(object sender, GridViewRowEventArgs e)
    {

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

   public void LoadLocation()
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
                GrdLoadLocation.DataSource = ds;
                GrdLoadLocation.DataBind();
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
   
   protected void btnCancel_Click(object sender, EventArgs e)
   {

       PanelShow.Visible = true;
       PanelAdd.Visible = false;

       txtLocation.Text = "";
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
               cmd.CommandText = "InsertLocation";
               
               cmd.Parameters.Add(new SqlParameter("@Exists", SqlDbType.Int));
               cmd.Parameters.Add(new SqlParameter("@LocationName", SqlDbType.VarChar, 600));
               cmd.Parameters.Add(new SqlParameter("@NationalityId", SqlDbType.Int));
               cmd.Parameters.Add(new SqlParameter("@date", SqlDbType.DateTime));

               cmd.Parameters["@date"].Value = System.DateTime.Now;
               cmd.Parameters["@LocationName"].Value = txtLocation.Text;
               cmd.Parameters["@NationalityId"].Value = ddlNationality.SelectedValue;
               cmd.Parameters["@Exists"].Value = 0;
               cmd.ExecuteNonQuery();
               int retVal = (int)cmd.Parameters["@Exists"].Value;
           }
       }
       LoadLocation();
       PanelAdd.Visible = false;
       PanelShow.Visible = true;
       txtLocation.Text = "";
   }
   protected void GrdLoadLocation_PageIndexChanged(object sender, EventArgs e)
   {

   }
}