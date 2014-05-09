using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Net;
using System.Net.Mail;
using System.Threading; 


public partial class conform : System.Web.UI.Page
{
    int value = 1021;

    protected void Page_Load(object sender, EventArgs e)
    {
        string EmailId = string.Empty;
        EmailId = Request.QueryString["Email"].ToString();
        value = value + 11;

        sendemail("Mr.amrutkulkarni@yahoo.in", "" + EmailId + "", "Your Varification Code for Devgiri Jobs is ", "<p>" + value + "</p>", "C:\\MyDoc.txt", true);

    }
    protected void btnSubmit_Click(object sender, EventArgs e)
    {
        if (txtCode.Text == value.ToString())
        {
            //Label1.Text = "Correct";
            Response.Redirect("~/VarificationDone.aspx");

        }
        else
        {
            Label1.Text = "Enter Correct Code";

        }
    }


    public Boolean sendemail(String strFrom, string strTo, string strSubject, string strBody, string strAttachmentPath, bool IsBodyHTML)
    {
        Array arrToArray;
        char[] splitter = { ';' };
        arrToArray = strTo.Split(splitter);
        MailMessage mm = new MailMessage();
        mm.From = new MailAddress(strFrom);
        mm.Subject = strSubject;
        mm.Body = strBody;
        mm.IsBodyHtml = IsBodyHTML;
        mm.ReplyTo = new MailAddress("Mr.amrutkulkarni@yahoo.in");
        foreach (string s in arrToArray)
        {
            mm.To.Add(new MailAddress(s));
        }
        if (strAttachmentPath != "")
        {
            try
            {
                //Add Attachment
                Attachment attachFile = new Attachment(strAttachmentPath);
                mm.Attachments.Add(attachFile);
            }
            catch { }
        }
        SmtpClient smtp = new SmtpClient();
        try
        {
            smtp.Host = "smtp.gmail.com";
            smtp.EnableSsl = true; //Depending on server SSL Settings true/false
            System.Net.NetworkCredential NetworkCred = new System.Net.NetworkCredential();
            NetworkCred.UserName = "Mr.amrutkulkarni@yahoo.in";
            NetworkCred.Password = "Timesofindia1";
            smtp.UseDefaultCredentials = true;
            smtp.Credentials = NetworkCred;
            smtp.Port = 587;//Specify your port No;
            smtp.Send(mm);
            return true;

        }
        catch
        {
            mm.Dispose();
            smtp = null;
            return false;
        }

    }





    //public void sendSMS(string uid, string password, string message, string no)
    //{
      
    //  HttpWebRequest myReq = (HttpWebRequest)WebRequest.Create("http://moneycentral.msn.com/investor/StockRating/srstopstocksresults.aspx?sco=1&page=1col=13" + uid + "&pwd=" + password + "&msg=" + message + "&phone=" + no + "&provider=way2sms");

    //    HttpWebResponse myResp = (HttpWebResponse)myReq.GetResponse();
    //    System.IO.StreamReader respStreamReader = new System.IO.StreamReader(myResp.GetResponseStream());
    //    string responseString = respStreamReader.ReadToEnd();
    //    respStreamReader.Close();
    //    myResp.Close();
    //}

    
}