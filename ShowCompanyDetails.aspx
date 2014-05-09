<%@ page title="" language="C#" masterpagefile="~/MasterPage2.master" autoeventwireup="true" inherits="ShowCompanyDetails, App_Web_3kyftmgl" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style10
        {}
        .style11
        {
            text-decoration: underline;
        }
        .style12
        {
            height: 34px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="style1">
        <tr>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td style="text-align: center">
                <asp:Label ID="lblCompanyName" runat="server" Font-Bold="True" 
                    Font-Italic="True" Font-Size="XX-Large" Font-Underline="True" 
                    ForeColor="#FF3300" style="text-align: center"></asp:Label>
                <br />
            </td>
        </tr>
        <tr>
            <td style="text-align: center">
                <asp:Image ID="imgCompanyLogo" runat="server" Height="120px" Width="260px" />
            </td>
        </tr>
        <tr>
            <td>
            <div>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Label ID="lblCompanyDesc" runat="server"></asp:Label>
                </div>&nbsp;</td>
        </tr>
        <tr>
            <td class="style12">
            <div>
                <br />
                <span class="style10"><span class="style11">Contact Details :</span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                </span>
                <asp:Label ID="lblEmail" runat="server"></asp:Label>
                <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Label ID="lblCompanyNo" runat="server"></asp:Label>
                </div>
            </td>
        </tr>
        <tr>
            <td>
            <div>
                Company Registration No. -
                <asp:Label ID="lblCompRegNo" runat="server"></asp:Label>
            </div>
            </td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
        </tr>
    </table>
</asp:Content>

