<%@ page title="" language="C#" masterpagefile="~/MasterPage2.master" autoeventwireup="true" inherits="companies, App_Web_3kyftmgl" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
    .style10
    {
        text-decoration: underline;
        color: #000000;
        font-size: x-large;
    }
    .style11
    {
        text-align: center;
    }
    .style12
    {
        text-align: right;
    }
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="style1">
    <tr>
        <td bgcolor="Lime">
            &nbsp;</td>
        <td bgcolor="Lime" class="style11" colspan="2">
            <span class="style10"><strong>Company Registration</strong></span>
        </td>
        <td bgcolor="Lime">
            &nbsp;</td>
    </tr>
    <tr>
        <td>
            &nbsp;</td>
        <td>
            &nbsp;</td>
        <td style="text-align: right">
            <asp:ImageButton ID="ImageButton2" runat="server" 
                ImageUrl="~/images/btn_already_a_member.gif" onclick="ImageButton2_Click" 
                style="text-align: left" />
        </td>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td>
            &nbsp;</td>
        <td class="style12">
            &nbsp;</td>
        <td>
            &nbsp;</td>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td>
            &nbsp;</td>
        <td class="style12">
            Name of Company :</td>
        <td>
&nbsp;&nbsp;
            <asp:TextBox ID="txtcmpName" runat="server" Width="250px"></asp:TextBox>
        </td>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td>
            &nbsp;</td>
        <td class="style12">
            Address of Company :</td>
        <td>
&nbsp;&nbsp;
            <asp:TextBox ID="txtcmpAdd" runat="server" Width="250px"></asp:TextBox>
        </td>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td>
            &nbsp;</td>
        <td class="style12">
            Company Description :
        </td>
        <td>
            &nbsp;&nbsp;
            <asp:TextBox ID="txtCompDesc" runat="server" TextMode="MultiLine" Width="250px"></asp:TextBox>
            &nbsp;</td>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td>
            &nbsp;</td>
        <td class="style12">
            Company Email Id :
        </td>
        <td>
&nbsp;&nbsp;
            <asp:TextBox ID="txtcmpEmail" runat="server" Width="250px"></asp:TextBox>
        </td>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td>
            &nbsp;</td>
        <td class="style12">
            Desired Password :</td>
        <td>
            &nbsp;&nbsp;
            <asp:TextBox ID="txtPass" runat="server" Width="250px" TextMode="Password"></asp:TextBox>
            &nbsp;</td>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td>
            &nbsp;</td>
        <td class="style12">
            Company Mobile No :
        </td>
        <td>
&nbsp;&nbsp;
            <asp:TextBox ID="txtcmpMobNo" runat="server" Width="250px"></asp:TextBox>
        </td>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td>
            &nbsp;</td>
        <td class="style12">
            Company Logo :</td>
        <td>
&nbsp;&nbsp;
            <asp:FileUpload ID="FileUpload1" runat="server" />
        </td>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td>
            &nbsp;</td>
        <td class="style12">
            Company Registration No. :</td>
        <td>
&nbsp;&nbsp;
            <asp:TextBox ID="txtCmpRegNo" runat="server" Width="250px"></asp:TextBox>
        </td>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td>
            &nbsp;</td>
        <td>
            &nbsp;</td>
        <td>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:ImageButton ID="ImageButton1" runat="server" 
                ImageUrl="~/images/btn_submit1.jpg" onclick="ImageButton1_Click" />
        </td>
        <td>
            &nbsp;</td>
    </tr>
</table>
<br />
<br />
<br />
<br />
<br /><br />
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
<br /><br />
<br />
<br />
<br />
<br />
<br />
<br />
<br />

</asp:Content>

