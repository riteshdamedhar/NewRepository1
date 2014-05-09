<%@ Page Title="" Language="C#" MasterPageFile="~/Company/CompanyMaster.master" AutoEventWireup="true" CodeFile="CompanyHome.aspx.cs" Inherits="Company_CompanyHome" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style13
        {
            text-decoration: underline;
            color: #FF5050;
            font-size: xx-large;
        }
        .style14
        {
            text-align: center;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <p class="style14">
        <br />
        <span class="style13"><strong><em>Company Home</em></strong></span></p>
    <p class="style14">
        <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
    </p>
    <p class="style14">
        &nbsp;</p>
    <p class="style14">
        &nbsp;</p>
</asp:Content>

