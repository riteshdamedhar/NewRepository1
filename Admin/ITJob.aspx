<%@ page title="" language="C#" masterpagefile="~/Admin/AdminMaster.master" autoeventwireup="true" inherits="Admin_AddEvent, App_Web_lqxqthlg" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style12
        {
            height: 30px;
        }
        .style14
        {
            text-decoration: underline;
            font-size: xx-large;
        }
        .style21
        {
            text-align: right;
            width: 150px;
        }
        .style22
        {
            width: 150px;
            text-align: right;
            height: 30px;
        }
        .style27
        {
            text-align: left;
            font-size: large;
        }
        .style35
        {
            width: 55px;
        }
        .style36
        {
            height: 30px;
            width: 55px;
        }
        .style37
        {
            width: 480px;
        }
        .style38
        {
            height: 30px;
            width: 480px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <p class="style27">
        <span class="style14"><strong>Add IT Jobs</strong></span></p>



    <br />
    <br />



<br />
    <asp:Panel ID="PanelShow" runat="server">
        <asp:GridView ID="GrdLoadITJob" runat="server" AllowPaging="true" 
            AutoGenerateColumns="False" BorderColor="#CCCCCC" BorderStyle="Solid" 
            BorderWidth="1px" DataKeyNames="ITJobId, ITJobHeading,ITJobDesc,ITJobDate" 
            EmptyDataText="No files found!" Font-Names="Verdana" 
            OnRowDataBound="GrdLoadITJob_RowDataBound" PageSize="5" 
            Width="100%" onpageindexchanged="GrdLoadITJob_PageIndexChanged">
            <AlternatingRowStyle BackColor="#FFD4BA" />
            <HeaderStyle BackColor="#FF9E66" BorderColor="#CCCCCC" BorderStyle="Solid" 
                BorderWidth="1px" Font-Size="15px" Height="50px" HorizontalAlign="Center" />
            <RowStyle BorderColor="#CCCCCC" BorderStyle="Solid" BorderWidth="1px" 
                Font-Size="13px" Height="20px" HorizontalAlign="Center" />
            <Columns>
                <asp:BoundField DataField="rowid" HeaderStyle-Width="5%" 
                    HeaderText="Sr. No." />
                <asp:BoundField DataField="ITJobId" HeaderStyle-Width="5%" 
                    HeaderText="IT Job Id" />
                <asp:BoundField DataField="ITJobHeading" HeaderStyle-Width="30%" 
                    HeaderText="IT Heading" />
                <asp:BoundField DataField="ITJobDesc" HeaderStyle-Width="50%" 
                    HeaderText="Description" Visible="true" />
                    <asp:BoundField DataField="ITJobDate" HeaderStyle-Width="50%" 
                    HeaderText="Date" Visible="true" />
               
            </Columns>
            <FooterStyle BackColor="#C6C3C6" ForeColor="Black" />
            <HeaderStyle BackColor="#4A3C8C" Font-Bold="True" ForeColor="#E7E7FF" />
            <PagerStyle BackColor="#C6C3C6" ForeColor="Black" HorizontalAlign="Right" />
            <RowStyle BackColor="#DEDFDE" ForeColor="Black" />
            <SelectedRowStyle BackColor="#9471DE" Font-Bold="True" ForeColor="White" />
            <SortedAscendingCellStyle BackColor="#F1F1F1" />
            <SortedAscendingHeaderStyle BackColor="#594B9C" />
            <SortedDescendingCellStyle BackColor="#CAC9C9" />
            <SortedDescendingHeaderStyle BackColor="#33276A" />
        </asp:GridView>
        <br />
        <asp:Button ID="btnAdd" runat="server" Text="Add" Width="80px" 
            onclick="btnAdd_Click" CausesValidation="False" />
        &nbsp;&nbsp;
        <asp:Button ID="btnExit" runat="server" onclick="btnExit_Click" Text="Exit" 
            Width="80px" CausesValidation="False" />
    </asp:Panel>
    <asp:Panel ID="PanelAdd" runat="server">
    <table class="style1">
        <tr>
            <td class="style35">
                &nbsp;</td>
            <td class="style21" 
                
                style="border-top-style: groove; border-top-width: thin; border-left-style: groove; border-left-width: thin;">
                &nbsp;</td>
            <td class="style37" 
                
                style="border-right-style: groove; border-right-width: thin; border-top-style: groove; border-top-width: thin;">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style35">
                &nbsp;</td>
            <td class="style21" 
                style="border-left-style: groove; border-left-width: thin">
                IT Job Heading :</td>
            <td class="style37" 
                style="border-right-style: groove; border-right-width: thin">
                <asp:TextBox ID="txtITJob" runat="server" Font-Bold="True" 
                    TextMode="MultiLine" Width="300px" 
                    ontextchanged="txtEventHead_TextChanged"></asp:TextBox>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style35">
                &nbsp;</td>
            <td class="style21" 
                style="border-left-style: groove; border-left-width: thin">
                IT Job Description :</td>
            <td class="style37" 
                style="border-right-style: groove; border-right-width: thin">
                <asp:TextBox ID="txtITDesc" runat="server" Font-Bold="True" 
                     TextMode="MultiLine" Width="300px"></asp:TextBox>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style35">
                &nbsp;</td>
            <td class="style21" 
                style="border-left-style: groove; border-left-width: thin">
                &nbsp;</td>
            <td class="style37" 
                style="border-right-style: groove; border-right-width: thin">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style36">
            </td>
            <td class="style22" 
                style="border-left-style: groove; border-left-width: thin">
                &nbsp;</td>
            <td class="style38" 
                style="border-right-style: groove; border-right-width: thin">
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="btnSave" runat="server" Font-Bold="True" 
                     Text="Save" Width="80px" onclick="btnSave_Click" 
                    ValidationGroup="Event" />
&nbsp;&nbsp;
                <asp:Button ID="btnCancel" runat="server" Font-Bold="True" Text="Cancel" 
                    Width="80px" onclick="btnCancel_Click" CausesValidation="False" />
            </td>
            <td class="style12">
            </td>
        </tr>
        <tr>
            <td class="style36">
                &nbsp;</td>
            <td class="style22" 
                
                style="border-bottom-style: groove; border-bottom-width: thin; border-left-style: groove; border-left-width: thin;">
                &nbsp;</td>
            <td class="style38" 
                
                style="border-bottom-style: groove; border-bottom-width: thin; border-right-style: groove; border-right-width: thin;">
                &nbsp;</td>
            <td class="style12">
                &nbsp;</td>
        </tr>
    </table>
    
    </asp:Panel>
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
    
</asp:Content>

