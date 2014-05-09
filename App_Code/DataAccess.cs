using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using System.IO;
using System.Configuration;


/// <summary>
/// Summary description for DataAccess
/// </summary>
public class DataAccess
{
        // Declaring global variable
        SqlConnection SqlConn = new SqlConnection();
        SqlCommand sqlCommand = new SqlCommand();
        SqlTransaction sqlTrans;
        string conString = string.Empty;
        private Boolean IsStarted = false;
        public Boolean IsCommited = false;

    
        public DataAccess()
        {
            try
            {
               // conString = @"Data Source=LAB1-COMP-12;Initial Catalog=Devgiri;Persist Security Info=True;User Id=sa;Password=123";

                conString = ConfigurationManager.ConnectionStrings["constr"].ToString();
              //  conString = @"Data Source=.;Initial Catalog=Devgiri;Persist Security Info=True;User Id=sa;Password=123";
                SqlConn.ConnectionString = conString;
                sqlCommand = SqlConn.CreateCommand();
                sqlCommand.Connection = SqlConn;

            }
            catch (Exception ex)
            {
               
            }
        }


        //Open Database Connection
        public SqlConnection OpenConnection()
        {
            try
            {
                if (SqlConn.State.ToString().Equals("Closed"))
                {
                    SqlConn.Open();
                }
                return SqlConn;
            }
            catch (Exception ex)
            {
                throw new Exception("ConnectionOpen:" + ex.Message.ToString());
            }
        }

        //close Database Connection
        public void CloseConnection()
        {
            try
            {
                if (SqlConn.State.ToString().Equals("Open"))
                {
                    SqlConn.Close();
                }
            }
            catch (Exception ex)
            {
                throw new Exception("ConnectionClose:" + ex.Message.ToString());
            }
        }

      
	
}