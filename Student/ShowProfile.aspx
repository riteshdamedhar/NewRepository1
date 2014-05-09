<%@ page title="" language="C#" masterpagefile="~/Student/StudentMaster.master" autoeventwireup="true" inherits="Student_ShowProfile, App_Web_2sqaqgoh" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
    .style10
    {
        text-decoration: underline;
        font-size: x-large;
    }
        .style11
        {
            text-align: left;
        }
        .style12
        {
            text-align: left;
            width: 471px;
        }
        .style13
        {
            font-weight: bold;
        }
        .style14
        {
            text-decoration: underline;
            font-size: large;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="style1">
        <tr>
            <td class="style10" colspan="3">
                <strong>Current Profile</strong></td>
        </tr>
        <tr>
            <td class="style12">
                &nbsp;
                <p >
                <asp:Image ID="Image1" align="center" runat="server" Height="130px" Width="130px" />
                    &nbsp;&nbsp;&nbsp;
                    <asp:Label ID="lblName" runat="server" Text="Label" 
                        
                        style="font-weight: 700; font-style: italic; text-decoration: underline; font-size: x-large; color: #3333FF"></asp:Label>
                </p>
                <br />
            </td>
            <td class="style11">
                &nbsp;</td>
            <td class="style11">
                Date of Birth :&nbsp;
                <asp:Label ID="lblDOB" runat="server" Text="Label"></asp:Label>
                <br />
                <br />
                Gender :
                <asp:Label ID="lblGender" runat="server" Text="Label"></asp:Label>
                <br />
                <br />
                <br />
                <br />
                <br />
                <br />
            </td>
        </tr>
        <tr>
            <td colspan="3">
                Address :
                <asp:Label ID="lblAdd" runat="server" Text="Label" style="font-weight: 700"></asp:Label>
            </td>
        </tr>
        <tr>
            <td colspan="3">
                Mobile No :
                <asp:Label ID="lblMob" runat="server" Text="Label" CssClass="style13"></asp:Label>
            </td>
        </tr>
        <tr>
            <td colspan="3">
                Location :
                <asp:Label ID="lblLocation" runat="server" Text="Label" CssClass="style13"></asp:Label>
            </td>
        </tr>
        <tr>
            <td colspan="3">
                Email Address :
                <asp:Label ID="lblEmail" runat="server" Text="Label" CssClass="style13"></asp:Label>
            </td>
        </tr>
        <tr>
            <td colspan="3">
                Nationality : 
                <asp:Label ID="lblNat" runat="server" Text="Label" CssClass="style13"></asp:Label>
            </td>
        </tr>
        <tr>
            <td colspan="3">
                &nbsp;</td>
        </tr>
        <tr>
            <td colspan="3">
                <span class="style14"><strong>Work Experience</strong></span> </td>
        </tr>
        <tr>
            <td colspan="3">
                &nbsp;</td>
        </tr>
        <tr>
            <td colspan="3">
                Total Experience :&nbsp;
                <asp:Label ID="lblExpYear" runat="server" Text="Label" CssClass="style13"></asp:Label>
&nbsp;Year&nbsp;
                <asp:Label ID="lblExpMonth" runat="server" Text="Label" CssClass="style13"></asp:Label>
            &nbsp;&nbsp;Months</td>
        </tr>
        <tr>
            <td colspan="3">
                Skills :
                <asp:Label ID="lblSkill" runat="server" Text="Label" style="font-weight: 700"></asp:Label>
            </td>
        </tr>
        <tr>
            <td colspan="3">
                Current Industry :
                <asp:Label ID="lblIndustry" runat="server" Text="Label" 
                    style="font-weight: 700"></asp:Label>
            </td>
        </tr>
        <tr>
            <td colspan="3">
                Function :
                <asp:Label ID="lblFunction" runat="server" Text="Label" CssClass="style13"></asp:Label>
            </td>
        </tr>
        <tr>
            <td colspan="3">
                Year of Passing :&nbsp;
                <asp:Label ID="lblYearOfPassing" runat="server" Text="Label" CssClass="style13"></asp:Label>
            </td>
        </tr>
        <tr>
            <td colspan="3">
                Job Type :&nbsp;
                <asp:Label ID="lblJobType" runat="server" Text="Label" CssClass="style13"></asp:Label>
            </td>
        </tr>
        <tr>
            <td colspan="3">
                Specification :
                <asp:Label ID="lblSpeci" runat="server" Text="Label" CssClass="style13"></asp:Label>
            </td>
        </tr>
        <tr>
            <td colspan="3">
                &nbsp;</td>
        </tr>
        <tr>
            <td colspan="3" style="text-align: center">
                <asp:Button ID="btnEdit" runat="server" BackColor="#3366FF" Font-Bold="True" 
                    ForeColor="White" onclick="btnEdit_Click" Text="Edit Profile" />
            </td> 
            
        </tr>
        <tr>
            <td colspan="3">
                &nbsp;&nbsp;
<br />
&nbsp;<br />
                <br />
                <br />
                <br />
                <br />
                <br />
                <br />
                <br />
                <br />
                <br />
                <br />
                <br />
                <br />
                <br />
                <br />
                <br />
                <br />
            </td>
        </tr>
    </table>
</asp:Content>

