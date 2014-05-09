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



public partial class Student_ShowProfile : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

        string StudentId = Session["StudentId"].ToString();

        DataAccess dataaccess = new DataAccess();
        SqlConnection Sqlcon = dataaccess.OpenConnection();
       // bool boolReturnValue = false;
        String SQLQuery = @"select FirstName,LastName,Email,Password,SM.NationalityId,NM.Nationality,SM.LocationId,
LM.LocationName,MobNo,Gender,SM.JobTypeId,JTM.JobTypeName,TotalYearExp,TotalMonthExp,
SM.IndustryId,I.IndustryName, SM.FunctionId,FM.FunctionName, KeySkills,SM.QualificationId,
QM.QualificationName,SM.SpecificationId,SPM.SpecificationName,YearOfPassing, 
SM.InstituteId,IM.InstituteName,OtherInstitute,ResumeTitle,Resume, Active,ProfileImage,DOB,Address 
from StudentMaster as SM
inner join IndustryMaster as I on I.IndustryId=SM.IndustryId
inner join NationalityMaster as NM on NM.NationalityId=SM.NationalityId
inner join LocationMaster as LM on LM.LocationId=SM.LocationId
inner join JobTypeMaster as JTM on JTM.JobTypeId=SM.JobTypeId
inner join FunctionMaster as FM on FM.FunctionId=SM.FunctionId
inner join QualificationMaster as QM on QM.QualificationId=SM.QualificationId
inner join SpecificationMaster as SPM on SPM.SpecificationId=SM.SpecificationId 
inner join InstituteMaster as IM on IM.InstituteId=SM.InstituteId
where StudentId ='" + StudentId + "'";
        SqlCommand command = new SqlCommand(SQLQuery, Sqlcon);
        SqlDataReader Dr1;
        Dr1 = command.ExecuteReader();
        while (Dr1.Read())
        {
            lblGender.Text = Dr1["Gender"].ToString();
            lblName.Text = (Dr1["FirstName"].ToString()) +" "+ (Dr1["LastName"].ToString());
            lblAdd.Text = Dr1["Address"].ToString();
            lblEmail.Text = Dr1["Email"].ToString();
            lblExpMonth.Text = Dr1["TotalMonthExp"].ToString();
            lblExpYear.Text = Dr1["TotalYearExp"].ToString();
            lblFunction.Text = Dr1["FunctionName"].ToString();
            lblDOB.Text = Dr1["DOB"].ToString();
            lblIndustry.Text = Dr1["IndustryName"].ToString();
            lblMob.Text = Dr1["MobNo"].ToString();
            lblLocation.Text = Dr1["LocationName"].ToString();
            lblNat.Text = Dr1["Nationality"].ToString();
            lblSkill.Text = Dr1["KeySkills"].ToString();
            lblYearOfPassing.Text = Dr1["YearOfPassing"].ToString();
            lblJobType.Text = Dr1["JobTypeName"].ToString();
            lblSpeci.Text = Dr1["SpecificationName"].ToString();
            Image1.ImageUrl = "~/Profile Image/" + Dr1["ProfileImage"].ToString();
        }
        Dr1.Close();

    }

    protected void btnEdit_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/Student/EditProfile.aspx");
    }
}

