<%@ page title="" language="C#" masterpagefile="~/Admin/AdminMaster.master" autoeventwireup="true" inherits="AddFunction, App_Web_lqxqthlg" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
<style type="text/css">
        .style10
        {
            text-decoration: underline;
            font-size: xx-large;
        }
        .style11
        {
            width: 223px;
        }
    .style13
    {
        text-decoration: underline;
        font-size: x-large;
        width: 759px;
        height: 31px;
        color: #FF0000;
    }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<p class="style13">
        <strong>Add Function</strong></p>



    <br />
    <br />



<br />
    <asp:Panel ID="PanelShow" runat="server">
        <asp:GridView ID="GrdLoadFunction" runat="server" AllowPaging="true" 
            AutoGenerateColumns="False" BorderColor="#CCCCCC" BorderStyle="Solid" 
            BorderWidth="1px" DataKeyNames="FunctionId,FunctionName,IndustryId ,date " 
            EmptyDataText="No files found!" Font-Names="Verdana" PageSize="5" 
            Width="100%" onpageindexchanged="GrdLoadFunction_PageIndexChanged" 
            onrowcommand="GrdLoadFunction_RowCommand">
            <AlternatingRowStyle BackColor="#FFD4BA" />
            <HeaderStyle BackColor="#FF9E66" BorderColor="#CCCCCC" BorderStyle="Solid" 
                BorderWidth="1px" Font-Size="15px" Height="50px" HorizontalAlign="Center" />
            <RowStyle BorderColor="#CCCCCC" BorderStyle="Solid" BorderWidth="1px" 
                Font-Size="13px" Height="20px" HorizontalAlign="Center" />
            <Columns>
                <asp:BoundField DataField="rowid" HeaderStyle-Width="5%" 
                    HeaderText="Sr. No." />
                <asp:BoundField DataField="FunctionId" HeaderStyle-Width="5%" 
                    HeaderText="Function Id" />
                <asp:BoundField DataField="FunctionName" HeaderStyle-Width="30%" 
                    HeaderText="Function Name " />
                <asp:BoundField DataField="IndustryId" HeaderStyle-Width="30%" 
                    HeaderText="Industry Id" />
                
                <asp:BoundField DataField="date" HeaderStyle-Width="10%" 
                    HeaderText=" Date" Visible="true" />
                
               
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
            <td class="style23">
                &nbsp;</td>
            <td class="style11" 
                
                style="border-top-style: groove; border-top-width: medium; border-left-style: groove; border-left-width: medium;">
                &nbsp;</td>
            <td class="style25" 
                style="border-right-style: groove; border-right-width: medium; border-top-style: groove; border-top-width: medium;">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style23">
                &nbsp;</td>
            <td class="style11" 
                
                style="border-left-style: groove; border-left-width: medium; text-align: right;">
                Function&nbsp; Name&nbsp; : :</td>
            <td class="style25" 
                style="border-right-style: groove; border-right-width: medium">
                <asp:TextBox ID="txtFunction" runat="server" Font-Bold="True" 
                    TextMode="MultiLine" Width="300px" 
                    ></asp:TextBox>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style23">
                &nbsp;</td>
            <td class="style11" 
                
                style="border-left-style: groove; border-left-width: medium; text-align: right;">
                Imdustry Name&nbsp; :</td>
            <td class="style25" 
                style="border-right-style: groove; border-right-width: medium">
                <asp:DropDownList ID="ddlIndustry" runat="server" Width="250px">
                </asp:DropDownList>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style23">
                &nbsp;</td>
            <td class="style11" 
                style="border-left-style: groove; border-left-width: medium">
                &nbsp;</td>
            <td class="style25" 
                style="border-right-style: groove; border-right-width: medium">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style24">
            </td>
            <td class="style11" 
                style="border-left-style: groove; border-left-width: medium">
                &nbsp;</td>
            <td class="style26" 
                style="border-right-style: groove; border-right-width: medium">
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="btnSave" runat="server" Font-Bold="True" 
                     Text="Save" Width="80px" onclick="btnSave_Click" ValidationGroup="News" />
&nbsp;&nbsp;
                <asp:Button ID="btnCancel" runat="server" Font-Bold="True" Text="Cancel" 
                    Width="80px" onclick="btnCancel_Click" CausesValidation="False" />
            </td>
            <td class="style12">
            </td>
        </tr>
        <tr>
            <td class="style24">
                &nbsp;</td>
            <td class="style11" 
                
                style="border-bottom-style: groove; border-bottom-width: medium; border-left-style: groove; border-left-width: medium;">
                &nbsp;</td>
            <td class="style26" 
                style="border-bottom-style: groove; border-bottom-width: medium; border-right-style: groove; border-right-width: medium;">
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

