using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class Company : System.Web.UI.Page
{

    SqlDataAdapter SqlAda;
    DataSet ds;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            LoadPendingCompany();
            LoadAcceptedCompany();
            LoadRejectedCompany();

        }
    }

    public void LoadPendingCompany()
    {
        DataAccess dataaccess = new DataAccess();

        using (SqlConnection Sqlcon = dataaccess.OpenConnection())
        {
            using (SqlCommand cmd = new SqlCommand())
            {

                cmd.Connection = Sqlcon;
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.CommandText = "getCompany";
                cmd.Parameters.Add(new SqlParameter("@Action", SqlDbType.VarChar, 50));
                cmd.Parameters.Add(new SqlParameter("@Active", SqlDbType.Int));


                cmd.Parameters["@Active"].Value = 0;

                cmd.Parameters["@Action"].Value = "select";
                cmd.Parameters.Add("@Exists", SqlDbType.Int).Direction = ParameterDirection.Output;
                SqlAda = new SqlDataAdapter(cmd);
                ds = new DataSet();
                SqlAda.Fill(ds);
                GrdCompany.DataSource = ds;
                GrdCompany.DataBind();
               

            }
        }

    }

    public void LoadAcceptedCompany()
    {
        DataAccess dataaccess = new DataAccess();

        using (SqlConnection Sqlcon = dataaccess.OpenConnection())
        {
            using (SqlCommand cmd = new SqlCommand())
            {

                cmd.Connection = Sqlcon;
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.CommandText = "getCompany";
                cmd.Parameters.Add(new SqlParameter("@Action", SqlDbType.VarChar, 50));
                cmd.Parameters.Add(new SqlParameter("@Active", SqlDbType.Int));


                cmd.Parameters["@Active"].Value = 1;

                cmd.Parameters["@Action"].Value = "select";
                cmd.Parameters.Add("@Exists", SqlDbType.Int).Direction = ParameterDirection.Output;
                SqlAda = new SqlDataAdapter(cmd);
                ds = new DataSet();
                SqlAda.Fill(ds);
               
                GrdAccepted.DataSource = ds;
                GrdAccepted.DataBind();


            }
        }

    }


    public void LoadRejectedCompany()
    {
        DataAccess dataaccess = new DataAccess();

        using (SqlConnection Sqlcon = dataaccess.OpenConnection())
        {
            using (SqlCommand cmd = new SqlCommand())
            {

                cmd.Connection = Sqlcon;
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.CommandText = "getCompany";
                cmd.Parameters.Add(new SqlParameter("@Action", SqlDbType.VarChar, 50));
                cmd.Parameters.Add(new SqlParameter("@Active", SqlDbType.Int));


                cmd.Parameters["@Active"].Value = 2;

                cmd.Parameters["@Action"].Value = "select";
                cmd.Parameters.Add("@Exists", SqlDbType.Int).Direction = ParameterDirection.Output;
                SqlAda = new SqlDataAdapter(cmd);
                ds = new DataSet();
                SqlAda.Fill(ds);
             
                grdRejected.DataSource = ds;
                grdRejected.DataBind();
               
            }
        }

    }

    
    protected void grdRejected_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {

    }
    protected void grdRejected_RowDataBound(object sender, GridViewRowEventArgs e)
    {

    }
    protected void grdRejected_PageIndexChanged(object sender, EventArgs e)
    {

    }
    protected void grdRejected_RowUpdating(object sender, GridViewUpdateEventArgs e)
    {
        //kuldeep
        int indexrow = e.RowIndex;
        short tid = short.Parse(((Label)grdRejected.Rows[indexrow].FindControl("CompanyId")).Text);


        DataAccess dataaccess = new DataAccess();

        using (SqlConnection Sqlcon = dataaccess.OpenConnection())
        {
            using (SqlCommand cmd = new SqlCommand())
            {

                cmd.Connection = Sqlcon;
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.CommandText = "getCompany";
                cmd.Parameters.Add(new SqlParameter("@Action", SqlDbType.VarChar, 50));
                cmd.Parameters.Add(new SqlParameter("@CompanyId", SqlDbType.Int));
                cmd.Parameters.Add(new SqlParameter("@Active", SqlDbType.Int));

                cmd.Parameters["@Active"].Value = 3;
                cmd.Parameters["@CompanyId"].Value = tid;
                cmd.Parameters["@Action"].Value = "Modify";
                cmd.Parameters.Add("@Exists", SqlDbType.Int).Direction = ParameterDirection.Output;

                cmd.ExecuteNonQuery();


                LoadRejectedCompany();
            }
        }
 
    }
    protected void GrdAccepted_RowDataBound(object sender, GridViewRowEventArgs e)
    {

    }
    protected void GrdAccepted_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {
        //kuldeep
        int indexrow = e.RowIndex;
        short tid = short.Parse(((Label)GrdAccepted.Rows[indexrow].FindControl("CompanyId")).Text);


        DataAccess dataaccess = new DataAccess();

        using (SqlConnection Sqlcon = dataaccess.OpenConnection())
        {
            using (SqlCommand cmd = new SqlCommand())
            {

                cmd.Connection = Sqlcon;
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.CommandText = "getCompany";
                cmd.Parameters.Add(new SqlParameter("@Action", SqlDbType.VarChar, 50));
                cmd.Parameters.Add(new SqlParameter("@CompanyId", SqlDbType.Int));
                cmd.Parameters.Add(new SqlParameter("@Active", SqlDbType.Int));

                cmd.Parameters["@Active"].Value = 4;
                cmd.Parameters["@CompanyId"].Value = tid;
                cmd.Parameters["@Action"].Value = "Modify";
                cmd.Parameters.Add("@Exists", SqlDbType.Int).Direction = ParameterDirection.Output;

                cmd.ExecuteNonQuery();
                LoadAcceptedCompany();
            }
        }

    }
    protected void GrdAccepted_RowUpdating(object sender, GridViewUpdateEventArgs e)
    {

    }
    protected void GrdAccepted_PageIndexChanged(object sender, EventArgs e)
    {

    }
    protected void btnPending_Click(object sender, EventArgs e)
    {
        LoadPendingCompany();
       
        PanelAccepted.Visible = false;
        PanelRejected.Visible = false;
        panelAccept.Visible = true;
    }
    protected void btnAccept_Click(object sender, EventArgs e)
    {
        LoadAcceptedCompany();
      

        PanelAccepted.Visible = true;
        PanelRejected.Visible = false;
        panelAccept.Visible = false;
    }
    protected void btnReject_Click(object sender, EventArgs e)
    {
        LoadRejectedCompany();
        PanelAccepted.Visible =false;
        PanelRejected.Visible = true;
        panelAccept.Visible = false;
    }

    protected void GrdCompany_PageIndexChanged(object sender, EventArgs e)
    {

    }
    protected void GrdCompany_RowDataBound(object sender, GridViewRowEventArgs e)
    {

    }
    protected void GrdCompany_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {
        int indexrow = e.RowIndex;
        short tid = short.Parse(((Label)GrdCompany.Rows[indexrow].FindControl("CompanyId")).Text);


        DataAccess dataaccess = new DataAccess();

        using (SqlConnection Sqlcon = dataaccess.OpenConnection())
        {
            using (SqlCommand cmd = new SqlCommand())
            {

                cmd.Connection = Sqlcon;
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.CommandText = "getCompany";
                cmd.Parameters.Add(new SqlParameter("@Action", SqlDbType.VarChar, 50));
                cmd.Parameters.Add(new SqlParameter("@CompanyId", SqlDbType.Int));
                cmd.Parameters.Add(new SqlParameter("@Active", SqlDbType.Int));

                cmd.Parameters["@Active"].Value = 4;
                cmd.Parameters["@CompanyId"].Value = tid;
                cmd.Parameters["@Action"].Value = "Modify";
                cmd.Parameters.Add("@Exists", SqlDbType.Int).Direction = ParameterDirection.Output;

                cmd.ExecuteNonQuery();


                LoadPendingCompany();
            }
        }
    }
    protected void GrdCompany_RowUpdating(object sender, GridViewUpdateEventArgs e)
    {
        int indexrow = e.RowIndex;
        short tid = short.Parse(((Label)GrdCompany.Rows[indexrow].FindControl("CompanyId")).Text);


        DataAccess dataaccess = new DataAccess();

        using (SqlConnection Sqlcon = dataaccess.OpenConnection())
        {
            using (SqlCommand cmd = new SqlCommand())
            {

                cmd.Connection = Sqlcon;
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.CommandText = "getCompany";
                cmd.Parameters.Add(new SqlParameter("@Action", SqlDbType.VarChar, 50));
                cmd.Parameters.Add(new SqlParameter("@CompanyId", SqlDbType.Int));
                cmd.Parameters.Add(new SqlParameter("@Active", SqlDbType.Int));

                cmd.Parameters["@Active"].Value = 3;
                cmd.Parameters["@CompanyId"].Value = tid;
                cmd.Parameters["@Action"].Value = "Modify";
                cmd.Parameters.Add("@Exists", SqlDbType.Int).Direction = ParameterDirection.Output;

                cmd.ExecuteNonQuery();


                LoadPendingCompany();
            }
        }
    }
}