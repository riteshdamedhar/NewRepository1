<%@ page title="" language="C#" masterpagefile="~/MasterPage2.master" autoeventwireup="true" inherits="VarificationDone, App_Web_3kyftmgl" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
    .style10
    {
        text-align: center;
    }
    .style11
    {
        color: #FF0000;
    }
    .style12
    {
        font-size: x-large;
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
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td class="style10">
            <span class="style11"><span class="style12">Your Varification is Successful...
            </span></span><span class="style12">
            <asp:HyperLink ID="HyperLink1" runat="server" CssClass="style11" 
                NavigateUrl="~/MyAccount.aspx">Click here to Login</asp:HyperLink>
            </span>&nbsp;</td>
    </tr>
    <tr>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td>
            &nbsp;</td>
    </tr>
</table>
</asp:Content>

