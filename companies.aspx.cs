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

public partial class companies : System.Web.UI.Page
{
    SqlDataAdapter SqlAda;
    DataSet ds;
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void ImageButton2_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("~/CompanyLogin.aspx");
    }
   
    protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
    {
        string filename = string.Empty;
       
        if (FileUpload1.PostedFile != null && FileUpload1.PostedFile.FileName != "")
        {
            filename = Path.GetFileName(FileUpload1.PostedFile.FileName);
            FileUpload1.SaveAs(Server.MapPath("~/CompanyLogo/" + filename));

        }


        DataAccess dataaccess = new DataAccess();

        using (SqlConnection Sqlcon = dataaccess.OpenConnection())
        {
            using (SqlCommand cmd = new SqlCommand())
            {

                cmd.Connection = Sqlcon;
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.CommandText = "InsertCompany";
                
                cmd.Parameters.Add(new SqlParameter("@Exists", SqlDbType.Int));
                cmd.Parameters.Add(new SqlParameter("@Active", SqlDbType.Int));
                cmd.Parameters.Add(new SqlParameter("@CompanyName", SqlDbType.VarChar, 100));
                cmd.Parameters.Add(new SqlParameter("@CompanyDesc", SqlDbType.VarChar, 5000));
                cmd.Parameters.Add(new SqlParameter("@CompanyAdd", SqlDbType.VarChar, 500));
                cmd.Parameters.Add(new SqlParameter("@CompanyLogo", SqlDbType.VarChar, 500));
                cmd.Parameters.Add(new SqlParameter("@CompanyRegNo", SqlDbType.VarChar, 100));
                cmd.Parameters.Add(new SqlParameter("@CompanyMobNo", SqlDbType.VarChar, 50));
                cmd.Parameters.Add(new SqlParameter("@CompanyEmail", SqlDbType.VarChar, 50));
                cmd.Parameters.Add(new SqlParameter("@Password", SqlDbType.VarChar, 100));

                cmd.Parameters["@CompanyDesc"].Value = txtCompDesc.Text;
                cmd.Parameters["@Password"].Value = txtPass.Text;
                cmd.Parameters["@CompanyName"].Value = txtcmpName.Text;
                cmd.Parameters["@CompanyAdd"].Value = txtcmpAdd.Text;
                cmd.Parameters["@CompanyLogo"].Value = filename;
                cmd.Parameters["@CompanyRegNo"].Value = txtCmpRegNo.Text;
                cmd.Parameters["@CompanyMobNo"].Value = txtcmpMobNo.Text;
                cmd.Parameters["@CompanyEmail"].Value = txtcmpEmail.Text;
                cmd.Parameters["@Active"].Value = 0;


               
                cmd.Parameters["@Exists"].Value = 0;
                int retVal = cmd.ExecuteNonQuery();
                if (retVal == 1)
                {
                    txtcmpAdd.Text = "";
                    txtcmpEmail.Text = "";
                    txtcmpMobNo.Text = "";
                    txtcmpName.Text = "";
                    txtCmpRegNo.Text = "";
                    txtPass.Text = "";


 
                }
            }
        }
    }
}