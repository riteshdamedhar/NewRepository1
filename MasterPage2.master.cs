using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;


public partial class MasterPage2 : System.Web.UI.MasterPage
{
    SqlDataAdapter SqlAda;
    DataSet ds;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            LoadITJob();
            LoadGovJob();
            LoadMgtJOb();
        }
    }


    private void LoadITJob()
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

                Repeater2.DataSource = ds;
                Repeater2.DataBind();
            }
        }
    }

    private void LoadMgtJOb()
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

                Repeater3.DataSource = ds;
                Repeater3.DataBind();
            }
        }
    }
    private void LoadGovJob()
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

                Repeater4.DataSource = ds;
                Repeater4.DataBind();
            }
        }

    }

}
