<%@ page title="" language="C#" masterpagefile="~/MasterPage2.master" autoeventwireup="true" inherits="frmSignOut, App_Web_3kyftmgl" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
 <p>
        <strong><span style="font-size: 24pt; color: #00ccff">SignOut Completed 
        Successfully.. Go </span>
        <asp:LinkButton ID="LinkButton1" runat="server" Font-Bold="True" 
            Font-Size="X-Large" ForeColor="#3333FF" onclick="LinkButton1_Click">Home</asp:LinkButton>
        </strong>
    </p>
</asp:Content>

