<%@ page title="" language="C#" masterpagefile="~/Student/StudentMaster.master" autoeventwireup="true" inherits="Student_EditProfile, App_Web_2sqaqgoh" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">

    <script type="text/javascript">
        function previewFile() {
            var preview = document.querySelector('#<%=imgPro.ClientID %>');
            var file = document.querySelector('#<%=FileUpload2.ClientID %>').files[0];
            var reader = new FileReader();

            reader.onloadend = function () {
                preview.src = reader.result;
            }

            if (file) {
                reader.readAsDataURL(file);
            } else {
                preview.src = "";
            }
        }
    </script>

    
    
    <style type="text/css">
        .style10
        {
            text-align: center;
            text-decoration: underline;
            font-size: xx-large;
            height: 60px;
        }
        .style11
        {
            width: 48px;
        }
        .style12
        {
            width: 48px;
            height: 18px;
        }
        .style13
        {
            height: 18px;
        }
        .style14
        {
            width: 661px;
        }
        .style15
        {
            height: 18px;
            width: 661px;
        }
        .style16
        {
            width: 661px;
            text-align: center;
        }
        .style18
        {
            height: 18px;
            width: 683px;
            text-align: left;
        }
        .style20
        {
            width: 683px;
            text-align: left;
        }
        .style22
        {
            width: 683px;
            text-align: left;
            color: #000000;
        }
        .style23
        {
            color: #FF0000;
        }
        .style24
        {
            width: 463px;
        }
        .style25
        {
            width: 683px;
        }
        .style26
        {
            color: #000000;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

<table class="style1" border="0" cellpadding="0" cellspacing="0">
        <tr>
            <td class="style10" colspan="5" style="background-color: #00FF99" 
                bgcolor="Lime">
                <strong>&nbsp;Update Resume</strong></td>
        </tr>
        <tr>
            <td colspan="5" style="text-align: right">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style11">
                &nbsp;</td>
            <td class="style25">
                <span class="txt_orange" 
                    style="color: rgb(217, 118, 43); font-family: Arial, Helvetica, sans-serif; font-size: 12px; font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; line-height: normal; orphans: auto; text-align: -webkit-right; text-indent: 0px; text-transform: none; white-space: normal; widows: auto; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255);">
                *</span><span 
                    style="color: rgb(0, 0, 0); font-family: Arial, Helvetica, sans-serif; font-size: 12px; font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; line-height: normal; orphans: auto; text-align: -webkit-right; text-indent: 0px; text-transform: none; white-space: normal; widows: auto; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); display: inline !important; float: none;"><span 
                    class="Apple-converted-space">&nbsp;</span>Required fields</span></td>
            <td class="style14" colspan="2">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style11">
                &nbsp;</td>
            <td class="style20" 
                
                
                style="border-top-style: groove; border-top-width: medium; border-right-style: none; border-right-width: medium; border-left-style: groove; border-left-width: medium">
                <span style="color: rgb(0, 0, 0); font-family: Arial, Helvetica, sans-serif; font-size: 18px; font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; line-height: normal; orphans: auto; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: auto; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); display: inline !important; float: none;">
                Get Started With Devgiri&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <br />
                </span></td>
            <td class="style14" 
                
                style="border-top-style: groove; border-top-width: medium; border-right-style: groove; border-right-width: medium; border-left-style: none; border-left-width: medium" 
                colspan="2">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style12">
                </td>
            <td class="style18" 
                
                
                style="border-right-style: none; border-right-width: medium; border-left-style: groove; border-left-width: medium">
                <span class="txt_orange" 
                    style="color: rgb(217, 118, 43); font-family: Arial, Helvetica, sans-serif; font-size: 12px; font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; line-height: normal; orphans: auto; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: auto; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255);">
                *</span><span 
                    style="color: rgb(0, 0, 0); font-family: Arial, Helvetica, sans-serif; font-size: 12px; font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; line-height: normal; orphans: auto; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: auto; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); display: inline !important; float: none;"><span 
                    class="Apple-converted-space">&nbsp;</span>Email address:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                </span>
                <br />
            </td>
            <td class="style15" 
                
                style="border-right-style: groove; border-right-width: medium; border-left-style: none; " 
                colspan="2">
                <asp:TextBox ID="txtEmail" runat="server" Width="250px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                    ControlToValidate="txtEmail" ErrorMessage="enter Email" ForeColor="Red" 
                    SetFocusOnError="True"></asp:RequiredFieldValidator>
            </td>
            <td class="style13">
                </td>
        </tr>
        <tr>
            <td class="style11">
                &nbsp;</td>
            <td class="style20" 
                
                
                style="border-right-style: none; border-right-width: medium; border-left-style: groove; border-left-width: medium">
                <span class="txt_orange" 
                    style="color: rgb(217, 118, 43); font-family: Arial, Helvetica, sans-serif; font-size: 12px; font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; line-height: normal; orphans: auto; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: auto; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255);">
                *</span><span 
                    style="color: rgb(0, 0, 0); font-family: Arial, Helvetica, sans-serif; font-size: 12px; font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; line-height: normal; orphans: auto; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: auto; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); display: inline !important; float: none;"><span 
                    class="Apple-converted-space">&nbsp;</span>First name:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                </span>
                <br />
            </td>
            <td class="style14" 
                
                style="border-right-style: groove; border-right-width: medium; border-left-style: none; " 
                colspan="2">
                <asp:TextBox ID="txtFname" runat="server" Width="250px"></asp:TextBox>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style11">
                &nbsp;</td>
            <td class="style20" 
                
                
                style="border-right-style: none; border-right-width: medium; border-left-style: groove; border-left-width: medium">
                <span style="font-family: Arial, Helvetica, sans-serif; font-size: 12px; font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; line-height: normal; orphans: auto; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: auto; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255);" 
                    class="style23">
                *</span><span style="color: rgb(0, 0, 0); font-family: Arial, Helvetica, sans-serif; font-size: 12px; font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; line-height: normal; orphans: auto; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: auto; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255);">&nbsp;&nbsp;</span><span 
                    style="color: rgb(0, 0, 0); font-family: Arial, Helvetica, sans-serif; font-size: 12px; font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; line-height: normal; orphans: auto; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: auto; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); display: inline !important; float: none;">Last 
                name:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;
                </span>
                <br />
            </td>
            <td class="style14" 
                
                style="border-right-style: groove; border-right-width: medium; border-left-style: none; " 
                colspan="2">
                <asp:TextBox ID="txtLname" runat="server" Width="250px"></asp:TextBox>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style11">
                &nbsp;</td>
            <td class="style20" 
                
                
                style="border-right-style: none; border-bottom-style: groove; border-left-style: groove; border-right-width: medium; border-bottom-width: medium; border-left-width: medium">
                <br />
            </td>
            <td class="style14" 
                
                style="border-right-style: groove; border-bottom-style: groove; border-left-style: none; border-right-width: medium; border-bottom-width: medium; border-left-width: medium" 
                colspan="2">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style11">
                &nbsp;</td>
            <td class="style20" 
                
                
                style="border-right-style: none; border-right-width: medium; border-left-style: groove; border-left-width: medium">
                <br />
                <span style="color: rgb(0, 0, 0); font-family: Arial, Helvetica, sans-serif; font-size: 18px; font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; line-height: normal; orphans: auto; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: auto; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); display: inline !important; float: none;">
                Personal Details<br />
                <br />
                </span></td>
            <td class="style14" 
                
                style="border-right-style: groove; border-right-width: medium; border-left-style: none; border-left-width: medium" 
                colspan="2">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style11">
                &nbsp;</td>
            <td class="style22" 
                
                
                
                style="border-right-style: none; border-right-width: medium; border-left-style: groove; border-left-width: medium">
                <span class="style23">*</span> Upload Image :</td>
            <td class="style24" 
                
                
                
                style="border-right-style: groove; border-right-width: medium; border-left-style: none; border-left-width: medium; font-size: -1px;">
                <%--<asp:FileUpload ID="FileUpload2" runat="server" />--%>
                <asp:FileUpload ID="FileUpload2" type="file" name="file" onchange="previewFile()" runat="server" />
&nbsp;</td>
            <td class="style14" 
                
                style="border-style: groove groove groove none; border-width: medium;" 
                rowspan="7">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Image ID="imgPro" runat="server" Height="210px" Width="150px" 
                    ImageUrl="~/images/blank face.jpg" />
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style11">
                &nbsp;</td>
            <td class="style20" 
                
                
                style="border-right-style: none; border-right-width: medium; border-left-style: groove; border-left-width: medium">
                <span class="txt_orange" 
                    style="color: rgb(217, 118, 43); font-family: Arial, Helvetica, sans-serif; font-size: 12px; font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; line-height: normal; orphans: auto; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: auto; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255);">
                * </span>
                <span style="color: rgb(0, 0, 0); font-family: Arial, Helvetica, sans-serif; font-size: 12px; font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; line-height: normal; orphans: auto; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: auto; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); display: inline !important; float: none;">
                Nationality:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                </span>
                <br />
            </td>
            <td class="style24" 
                
                
                
                style="border-right-style: groove; border-right-width: medium; border-left-style: none; border-left-width: medium; font-size: -1px;">
                <asp:DropDownList ID="ddlNationality" runat="server" Width="250px">
                </asp:DropDownList>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style11">
                &nbsp;</td>
            <td class="style20" 
                
                
                style="border-right-style: none; border-right-width: medium; border-left-style: groove; border-left-width: medium">
                <span class="txt_orange" 
                    style="color: rgb(217, 118, 43); font-family: Arial, Helvetica, sans-serif; font-size: 12px; font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; line-height: normal; orphans: auto; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: auto; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255);">
                *<span class="Apple-converted-space">&nbsp;</span></span><span 
                    style="color: rgb(0, 0, 0); font-family: Arial, Helvetica, sans-serif; font-size: 12px; font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; line-height: normal; orphans: auto; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: auto; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); display: inline !important; float: none;">Current 
                location:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                </span>
                <br />
            </td>
            <td class="style24" 
                
                
                
                style="border-right-style: groove; border-right-width: medium; border-left-style: none; border-left-width: medium; font-size: -1px;">
                <asp:DropDownList ID="ddlLocation" runat="server" Width="250px">
                </asp:DropDownList>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style11">
                &nbsp;</td>
            <td class="style20" 
                
                
                style="border-right-style: none; border-right-width: medium; border-left-style: groove; border-left-width: medium">
                <span class="txt_orange" 
                    style="color: rgb(217, 118, 43); font-family: Arial, Helvetica, sans-serif; font-size: 12px; font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; line-height: normal; orphans: auto; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: auto; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255);">
                *<span class="Apple-converted-space">&nbsp;</span></span><span 
                    style="color: rgb(0, 0, 0); font-family: Arial, Helvetica, sans-serif; font-size: 12px; font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; line-height: normal; orphans: auto; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: auto; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); display: inline !important; float: none;">Mobile 
                number :&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <br />
                <br />
                </span></td>
            <td class="style24" 
                
                
                
                style="border-right-style: groove; border-right-width: medium; border-left-style: none; border-left-width: medium; font-size: -1px;">
                <span 
                    style="color: rgb(0, 0, 0); font-family: Arial, Helvetica, sans-serif; font-size: 12px; font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; line-height: normal; orphans: auto; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: auto; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); display: inline !important; float: none;">
                <asp:TextBox ID="txtMobNo" runat="server" Width="250px"></asp:TextBox>
                </span></td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style11">
                &nbsp;</td>
            <td class="style20" 
                
                
                style="border-right-style: none; border-right-width: medium; border-left-style: groove; border-left-width: medium; border-bottom-style: none; border-bottom-width: medium;">
                <span class="txt_orange" 
                    style="color: rgb(217, 118, 43); font-family: Arial, Helvetica, sans-serif; font-size: 12px; font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; line-height: normal; orphans: auto; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: auto; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255);">
                *</span><span 
                    style="color: rgb(0, 0, 0); font-family: Arial, Helvetica, sans-serif; font-size: 12px; font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; line-height: normal; orphans: auto; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: auto; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); display: inline !important; float: none;"><span 
                    class="Apple-converted-space">&nbsp;</span>Gender:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <br />
                <br />
                </span></td>
            <td class="style24" 
                
                
                
                style="border-right-style: groove; border-right-width: medium; border-left-style: none; border-left-width: medium; border-bottom-style: none; border-bottom-width: medium;">
                <span 
                    style="color: rgb(0, 0, 0); font-family: Arial, Helvetica, sans-serif; font-size: 12px; font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; line-height: normal; orphans: auto; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: auto; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); display: inline !important; float: none;">
                <asp:RadioButton ID="RadioButton1" runat="server" Text="Male" 
                    GroupName="gender" Checked="True" />
                <asp:RadioButton ID="RadioButton2" runat="server" Text="Female" 
                    GroupName="gender" />
                <asp:RadioButton ID="RadioButton3" runat="server" 
                    Text="Prefer not to specify" GroupName="gender" />
                </span></td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style11">
                &nbsp;</td>
            <td class="style20" 
                
                
                
                style="border-right-style: none; border-right-width: medium; border-left-style: groove; border-left-width: medium; border-bottom-style: none; border-bottom-width: medium; color: #000000;">
                <span class="style23">*</span><strong> </strong>Date of Birth :</td>
            <td class="style24" 
                
                
                
                style="border-right-style: groove; border-right-width: medium; border-left-style: none; border-left-width: medium; border-bottom-style: none; border-bottom-width: medium;">
                &nbsp;<asp:ScriptManager ID="ScriptManager1" runat="server">
                </asp:ScriptManager>
                <asp:TextBox ID="txtDOB" runat="server" placeholder="MM/DD/YYYY" Width="250px"></asp:TextBox>
                <br />
                 </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style11">
                &nbsp;</td>
            <td class="style20" 
                
                
                style="border-right-style: none; border-right-width: medium; border-left-style: groove; border-left-width: medium; border-bottom-style: groove; border-bottom-width: medium;">
                <span class="style23">*</span><span class="style26"> Cureent Address :</span> </td>
            <td class="style24" 
                
                
                
                style="border-right-style: groove; border-right-width: medium; border-left-style: none; border-left-width: medium; border-bottom-style: groove; border-bottom-width: medium;">
                <asp:TextBox ID="txtPAdd" runat="server" TextMode="MultiLine" Width="250px"></asp:TextBox>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style11">
                &nbsp;</td>
            <td class="style20" 
                
                
                style="border-right-style: none; border-right-width: medium; border-left-style: groove; border-left-width: medium; border-bottom-style: none;">
                <br />
                <span style="color: rgb(0, 0, 0); font-family: Arial, Helvetica, sans-serif; font-size: 18px; font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; line-height: normal; orphans: auto; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: auto; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); display: inline !important; float: none;">
                Educational Details<br />
                <br />
            </td>
            <td class="style14" 
                
                style="border-right-style: groove; border-right-width: medium; border-left-style: none; border-left-width: medium; border-bottom-style: none;" 
                colspan="2">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style11">
                &nbsp;</td>
            <td class="style20" 
                
                
                style="border-right-style: none; border-right-width: medium; border-left-style: groove; border-left-width: medium; border-bottom-style: none;">
                <span class="txt_orange" 
                    style="color: rgb(217, 118, 43); font-family: Arial, Helvetica, sans-serif; font-size: 12px; font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; line-height: normal; orphans: auto; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: auto; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255);">
                * </span>
                <span style="color: rgb(0, 0, 0); font-family: Arial, Helvetica, sans-serif; font-size: 12px; font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; line-height: normal; orphans: auto; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: auto; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); display: inline !important; float: none;">
                HIghest Qualification :&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <br />
                <br />
                </span></td>
            <td class="style14" 
                
                style="border-right-style: groove; border-right-width: medium; border-left-style: none; border-left-width: medium; border-bottom-style: none;" 
                colspan="2">
                <span style="color: rgb(0, 0, 0); font-family: Arial, Helvetica, sans-serif; font-size: 12px; font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; line-height: normal; orphans: auto; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: auto; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); display: inline !important; float: none;">
                <asp:DropDownList ID="ddlQul" runat="server" Width="250px">
                </asp:DropDownList>
                </span></td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style11">
                &nbsp;</td>
            <td class="style20" 
                
                
                style="border-right-style: none; border-right-width: medium; border-left-style: groove; border-left-width: medium; border-bottom-style: none;">
                <span class="txt_orange" 
                    style="color: rgb(217, 118, 43); font-family: Arial, Helvetica, sans-serif; font-size: 12px; font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; line-height: normal; orphans: auto; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: auto; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255);">
                * </span>
                <span style="color: rgb(0, 0, 0); font-family: Arial, Helvetica, sans-serif; font-size: 12px; font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; line-height: normal; orphans: auto; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: auto; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); display: inline !important; float: none;">
                Specialization :&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <br />
                <br />
                </span></td>
            <td class="style14" 
                
                style="border-right-style: groove; border-right-width: medium; border-left-style: none; border-left-width: medium; border-bottom-style: none;" 
                colspan="2">
                <span style="color: rgb(0, 0, 0); font-family: Arial, Helvetica, sans-serif; font-size: 12px; font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; line-height: normal; orphans: auto; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: auto; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); display: inline !important; float: none;">
                <asp:DropDownList ID="ddlSpeci" runat="server" Width="250px">
                </asp:DropDownList>
                </span></td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style11">
                &nbsp;</td>
            <td class="style20" 
                
                
                style="border-right-style: none; border-right-width: medium; border-left-style: groove; border-left-width: medium; border-bottom-style: none;">
                <span class="txt_orange" 
                    style="color: rgb(217, 118, 43); font-family: Arial, Helvetica, sans-serif; font-size: 12px; font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; line-height: normal; orphans: auto; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: auto; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255);">
                * </span>
                <span style="color: rgb(0, 0, 0); font-family: Arial, Helvetica, sans-serif; font-size: 12px; font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; line-height: normal; orphans: auto; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: auto; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); display: inline !important; float: none;">
                Year of Passing :&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <br />
                <br />
                </span></td>
            <td class="style14" 
                
                style="border-right-style: groove; border-right-width: medium; border-left-style: none; border-left-width: medium; border-bottom-style: none;" 
                colspan="2">
                <span style="color: rgb(0, 0, 0); font-family: Arial, Helvetica, sans-serif; font-size: 12px; font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; line-height: normal; orphans: auto; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: auto; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); display: inline !important; float: none;">
                <asp:DropDownList ID="ddlPassingY" runat="server" Width="250px">
                    <asp:ListItem>1990</asp:ListItem>
                    <asp:ListItem>1991</asp:ListItem>
                    <asp:ListItem>1992</asp:ListItem>
                    <asp:ListItem>1993</asp:ListItem>
                    <asp:ListItem>1994</asp:ListItem>
                    <asp:ListItem>1995</asp:ListItem>
                    <asp:ListItem>1996</asp:ListItem>
                    <asp:ListItem>1996</asp:ListItem>
                    <asp:ListItem>1997</asp:ListItem>
                    <asp:ListItem>1998</asp:ListItem>
                    <asp:ListItem>1999</asp:ListItem>
                    <asp:ListItem>2000</asp:ListItem>
                    <asp:ListItem>2001</asp:ListItem>
                    <asp:ListItem>2002</asp:ListItem>
                    <asp:ListItem>2003</asp:ListItem>
                    <asp:ListItem>2004</asp:ListItem>
                    <asp:ListItem>2005</asp:ListItem>
                    <asp:ListItem>2006</asp:ListItem>
                    <asp:ListItem>2007</asp:ListItem>
                    <asp:ListItem>2008</asp:ListItem>
                    <asp:ListItem>2009</asp:ListItem>
                    <asp:ListItem>2010</asp:ListItem>
                    <asp:ListItem>2011</asp:ListItem>
                    <asp:ListItem>2012</asp:ListItem>
                    <asp:ListItem>2013</asp:ListItem>
                    <asp:ListItem>2014</asp:ListItem>
                    <asp:ListItem></asp:ListItem>
                </asp:DropDownList>
                </span></td>
            <td>
                &nbsp;&nbsp;</td>
        </tr>
        <tr>
            <td class="style11">
                &nbsp;</td>
            <td class="style20" 
                
                
                style="border-right-style: none; border-right-width: medium; border-left-style: groove; border-left-width: medium; border-bottom-style: groove; border-bottom-width: medium;">
                <span class="txt_orange" 
                    style="color: rgb(217, 118, 43); font-family: Arial, Helvetica, sans-serif; font-size: 12px; font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; line-height: normal; orphans: auto; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: auto; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255);">
                * </span>
                <span style="color: rgb(0, 0, 0); font-family: Arial, Helvetica, sans-serif; font-size: 12px; font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; line-height: normal; orphans: auto; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: auto; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); display: inline !important; float: none;">
                Institute :&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <br />
                <br />
                </span></td>
            <td class="style14" 
                
                style="border-right-style: groove; border-right-width: medium; border-left-style: none; border-left-width: medium; border-bottom-style: groove; border-bottom-width: medium;" 
                colspan="2">
                <span style="color: rgb(0, 0, 0); font-family: Arial, Helvetica, sans-serif; font-size: 12px; font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; line-height: normal; orphans: auto; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: auto; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); display: inline !important; float: none;">
                <asp:DropDownList ID="ddlInstitute" runat="server" Width="250px">
                </asp:DropDownList>
                <br />
                <br />
                <asp:TextBox ID="txtOtherInsti" runat="server" Width="250px" 
                    ></asp:TextBox>
                </span></td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style11">
                &nbsp;</td>
            <td class="style20" 
                
                
                style="border-right-style: none; border-right-width: medium; border-left-style: groove; border-left-width: medium">
                <br />
                <span style="color: rgb(0, 0, 0); font-family: Arial, Helvetica, sans-serif; font-size: 18px; font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; line-height: normal; orphans: auto; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: auto; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); display: inline !important; float: none;">
                Professional Details<br />
                <br />
                </span></td>
            <td class="style14" 
                
                style="border-right-style: groove; border-right-width: medium; border-left-style: none; border-left-width: medium" 
                colspan="2">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style11">
                &nbsp;</td>
            <td class="style20" 
                
                
                style="border-right-style: none; border-right-width: medium; border-left-style: groove; border-left-width: medium">
                <span class="txt_orange" 
                    style="color: rgb(217, 118, 43); font-family: Arial, Helvetica, sans-serif; font-size: 12px; font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; line-height: normal; orphans: auto; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: auto; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255);">
                *</span><span 
                    style="color: rgb(0, 0, 0); font-family: Arial, Helvetica, sans-serif; font-size: 12px; font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; line-height: normal; orphans: auto; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: auto; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); display: inline !important; float: none;"><span 
                    class="Apple-converted-space">&nbsp;</span>Job Type:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;
                <br />
                <br />
                </span></td>
            <td class="style14" 
                
                style="border-right-style: groove; border-right-width: medium; border-left-style: none; border-left-width: medium" 
                colspan="2">
                <span 
                    style="color: rgb(0, 0, 0); font-family: Arial, Helvetica, sans-serif; font-size: 12px; font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; line-height: normal; orphans: auto; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: auto; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); display: inline !important; float: none;">
                <asp:DropDownList ID="ddlJobType" runat="server" Width="250px" 
                    >
                </asp:DropDownList>
                </span></td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style11">
                &nbsp;</td>
            <td class="style20" 
                
                
                style="border-right-style: none; border-right-width: medium; border-left-style: groove; border-left-width: medium">
                <span class="txt_orange" 
                    style="color: rgb(217, 118, 43); font-family: Arial, Helvetica, sans-serif; font-size: 12px; font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; line-height: normal; orphans: auto; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: auto; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255);">
                *</span><span 
                    style="color: rgb(0, 0, 0); font-family: Arial, Helvetica, sans-serif; font-size: 12px; font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; line-height: normal; orphans: auto; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: auto; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); display: inline !important; float: none;"><span 
                    class="Apple-converted-space">&nbsp;</span>Total experience:&nbsp;
                <br />
                <br />
                </span></td>
            <td class="style14" 
                
                style="border-right-style: groove; border-right-width: medium; border-left-style: none; border-left-width: medium" 
                colspan="2">
                <span 
                    style="color: rgb(0, 0, 0); font-family: Arial, Helvetica, sans-serif; font-size: 12px; font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; line-height: normal; orphans: auto; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: auto; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); display: inline !important; float: none;">
                <asp:DropDownList ID="ddlYExp" runat="server">
                    <asp:ListItem>0</asp:ListItem>
                    <asp:ListItem>1</asp:ListItem>
                    <asp:ListItem>2</asp:ListItem>
                    <asp:ListItem>3</asp:ListItem>
                    <asp:ListItem>4</asp:ListItem>
                    <asp:ListItem>5</asp:ListItem>
                    <asp:ListItem>6</asp:ListItem>
                    <asp:ListItem>7</asp:ListItem>
                    <asp:ListItem>8</asp:ListItem>
                    <asp:ListItem>9</asp:ListItem>
                    <asp:ListItem>10</asp:ListItem>
                </asp:DropDownList>
                <asp:DropDownList ID="ddlMExp" runat="server">
                    <asp:ListItem>0</asp:ListItem>
                    <asp:ListItem>1</asp:ListItem>
                    <asp:ListItem>2</asp:ListItem>
                    <asp:ListItem>3</asp:ListItem>
                    <asp:ListItem>4</asp:ListItem>
                    <asp:ListItem>5</asp:ListItem>
                    <asp:ListItem>6</asp:ListItem>
                    <asp:ListItem>7</asp:ListItem>
                    <asp:ListItem>8</asp:ListItem>
                    <asp:ListItem>9</asp:ListItem>
                    <asp:ListItem>10</asp:ListItem>
                    <asp:ListItem>11</asp:ListItem>
                    <asp:ListItem>12</asp:ListItem>
                </asp:DropDownList>
                </span></td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style11">
                &nbsp;</td>
            <td class="style20" 
                
                
                style="border-right-style: none; border-right-width: medium; border-left-style: groove; border-left-width: medium">
                <span class="txt_orange" 
                    style="color: rgb(217, 118, 43); font-family: Arial, Helvetica, sans-serif; font-size: 12px; font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; line-height: normal; orphans: auto; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: auto; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255);">
                *<span class="Apple-converted-space">&nbsp;</span></span><span 
                    style="color: rgb(0, 0, 0); font-family: Arial, Helvetica, sans-serif; font-size: 12px; font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; line-height: normal; orphans: auto; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: auto; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); display: inline !important; float: none;">Current 
                industry:&nbsp;
                <br />
                <br />
                </span></td>
            <td class="style14" 
                
                style="border-right-style: groove; border-right-width: medium; border-left-style: none; border-left-width: medium" 
                colspan="2">
                <span 
                    style="color: rgb(0, 0, 0); font-family: Arial, Helvetica, sans-serif; font-size: 12px; font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; line-height: normal; orphans: auto; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: auto; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); display: inline !important; float: none;">
                <asp:DropDownList ID="ddlCIndustry" runat="server" Width="250px">
                </asp:DropDownList>
                </span></td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style11">
                &nbsp;</td>
            <td class="style20" 
                
                
                style="border-right-style: none; border-right-width: medium; border-left-style: groove; border-left-width: medium">
                <span class="txt_orange" 
                    style="color: rgb(217, 118, 43); font-family: Arial, Helvetica, sans-serif; font-size: 12px; font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; line-height: normal; orphans: auto; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: auto; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255);">
                *</span><span 
                    style="color: rgb(0, 0, 0); font-family: Arial, Helvetica, sans-serif; font-size: 12px; font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; line-height: normal; orphans: auto; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: auto; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); display: inline !important; float: none;"><span 
                    class="Apple-converted-space">&nbsp;</span>Function:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <br />
                <br />
                </span></td>
            <td class="style14" 
                
                style="border-right-style: groove; border-right-width: medium; border-left-style: none; border-left-width: medium" 
                colspan="2">
                <span 
                    style="color: rgb(0, 0, 0); font-family: Arial, Helvetica, sans-serif; font-size: 12px; font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; line-height: normal; orphans: auto; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: auto; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); display: inline !important; float: none;">
                <asp:DropDownList ID="ddlFunction" runat="server" Width="250px">
                </asp:DropDownList>
                </span></td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style11">
                &nbsp;</td>
            <td class="style20" 
                
                
                style="border-right-style: none; border-right-width: medium; border-left-style: groove; border-left-width: medium; border-bottom-style: groove; border-bottom-width: medium;">
                <span class="txt_orange" 
                    style="color: rgb(217, 118, 43); font-family: Arial, Helvetica, sans-serif; font-size: 12px; font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; line-height: normal; orphans: auto; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: auto; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255);">
                *</span><span 
                    style="color: rgb(0, 0, 0); font-family: Arial, Helvetica, sans-serif; font-size: 12px; font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; line-height: normal; orphans: auto; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: auto; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); display: inline !important; float: none;">Key 
                skills:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <br />
                <br />
                </span></td>
            <td class="style14" 
                
                style="border-right-style: groove; border-right-width: medium; border-left-style: none; border-left-width: medium; border-bottom-style: groove; border-bottom-width: medium;" 
                colspan="2">
                <span 
                    style="color: rgb(0, 0, 0); font-family: Arial, Helvetica, sans-serif; font-size: 12px; font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; line-height: normal; orphans: auto; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: auto; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); display: inline !important; float: none;">
                <asp:TextBox ID="txtSkills" runat="server" 
                    Width="250px"></asp:TextBox>
                </span></td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style11">
                &nbsp;</td>
            <td 
                
                
                style="border-right-style: none; border-right-width: medium; border-left-style: groove; border-left-width: medium" 
                class="style25">
                <br />
                <span style="color: rgb(114, 70, 155); font-family: Arial, Helvetica, sans-serif; font-size: 15px; font-style: normal; font-variant: normal; font-weight: bold; letter-spacing: normal; line-height: normal; orphans: auto; text-align: -webkit-left; text-indent: 0px; text-transform: none; white-space: normal; widows: auto; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(247, 249, 239); display: inline !important; float: none;">Have a resume ready? Upload it now</span></td>
            <td class="style16" 
                
                style="border-right-style: groove; border-right-width: medium; border-left-style: none; border-left-width: medium" 
                colspan="2">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style11">
                &nbsp;</td>
            <td class="style20" 
                
                
                style="border-right-style: none; border-right-width: medium; border-left-style: groove; border-left-width: medium">
                <span style="color: rgb(0, 0, 0); font-family: Arial, Helvetica, sans-serif; font-size: 12px; font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; line-height: normal; orphans: auto; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: auto; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); display: inline !important; float: none;">
                Resume title:&nbsp;
                <br />
                <br />
                </span></td>
            <td class="style14" 
                
                style="border-right-style: groove; border-right-width: medium; border-left-style: none; border-left-width: medium" 
                colspan="2">
                <span style="color: rgb(0, 0, 0); font-family: Arial, Helvetica, sans-serif; font-size: 12px; font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; line-height: normal; orphans: auto; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: auto; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); display: inline !important; float: none;">
                <asp:TextBox ID="txtResumeT" runat="server" Width="250px"></asp:TextBox>
                </span></td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style11">
                &nbsp;</td>
            <td class="style20" 
                
                
                style="border-right-style: none; border-right-width: medium; border-left-style: groove; border-left-width: medium; border-bottom-style: groove; border-bottom-width: medium;">
                <span style="color: rgb(0, 0, 0); font-family: Arial, Helvetica, sans-serif; font-size: 12px; font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; line-height: normal; orphans: auto; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: auto; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255);">
                &nbsp;</span><span 
                    style="color: rgb(0, 0, 0); font-family: Arial, Helvetica, sans-serif; font-size: 12px; font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; line-height: normal; orphans: auto; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: auto; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); display: inline !important; float: none;">Detailed 
                resume<span class="Apple-converted-space">&nbsp;</span></span><br \="" 
                    style="color: rgb(0, 0, 0); font-family: Arial, Helvetica, sans-serif; font-size: 12px; font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; line-height: normal; orphans: auto; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: auto; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255);" />
                <span style="color: rgb(0, 0, 0); font-family: Arial, Helvetica, sans-serif; font-size: 12px; font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; line-height: normal; orphans: auto; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: auto; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); display: inline !important; float: none;">
                (Text/ Word Doc):&nbsp;
                </span>
                <br />
                <span style="color: rgb(101, 101, 101); font-family: Arial, Helvetica, sans-serif; font-size: 12px; font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; line-height: normal; orphans: auto; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: auto; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(247, 249, 239); display: inline !important; float: none;">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br />
                <br />
                </span></td>
            <td class="style14" 
                
                style="border-right-style: groove; border-right-width: medium; border-left-style: none; border-left-width: medium; border-bottom-style: groove; border-bottom-width: medium;" 
                colspan="2">
                <asp:FileUpload ID="FileUpload1" runat="server" Width="250px" />
                <br />
                <span style="color: rgb(101, 101, 101); font-family: Arial, Helvetica, sans-serif; font-size: 12px; font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; line-height: normal; orphans: auto; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: auto; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(247, 249, 239); display: inline !important; float: none;">&nbsp;Maximum 
                200 kb file size can be uploaded.</span></td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style11">
                &nbsp;</td>
            <td class="style14" 
                
                style="border-right-style: groove; border-right-width: medium; border-left-style: groove; border-left-width: medium" 
                colspan="3">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style11">
                &nbsp;</td>
            <td class="style14" 
                
                style="border-right-style: groove; border-right-width: medium; border-left-style: groove; border-left-width: medium; border-bottom-style: groove; border-bottom-width: medium; text-align: center;" 
                colspan="3">
                <asp:ImageButton ID="ImageButton2" runat="server" 
                    ImageUrl="~/images/btn_submit1.jpg" style="text-align: center" 
                    onclick="ImageButton2_Click" />
                <br />
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style11">
                &nbsp;</td>
            <td class="style14" colspan="3">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        </table>
</asp:Content>

