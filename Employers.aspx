<%@ page title="" language="C#" masterpagefile="~/MasterPage2.master" autoeventwireup="true" inherits="Employers, App_Web_3kyftmgl" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style10
        {
            text-decoration: underline;
            font-size: x-large;
        }
        .style11
        {
            height: 19px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="style1">
        <tr>
            <td class="style10">
                <strong>Our Employers </strong>
            </td>
        </tr>
        <tr>
            <td class="style11">
            </td>
        </tr>
        <tr>
            <td>
                <asp:GridView ID="GrdLoadCompany" runat="server" 
            AutoGenerateColumns="False" OnRowUpdating="GrdLoadCompany_RowUpdating"
                OnRowDeleting="GrdLoadCompany_RowDeleting" BorderColor="#CCCCCC" BorderStyle="Solid" 
            BorderWidth="1px" DataKeyNames="CompanyId,CompanyName,CompanyAdd,CompanyLogo,CompanyRegNo,CompanyEmail,CompanyMobNo,Active" 
            EmptyDataText="No files found!" Font-Names="Verdana" 
            OnRowDataBound="GrdLoadCompany_RowDataBound" 
            Width="100%" onpageindexchanged="GrdLoadCompany_PageIndexChanged" >
            <AlternatingRowStyle BackColor="#FFD4BA" />
            <HeaderStyle BackColor="#FF9E66" BorderColor="#CCCCCC" BorderStyle="Solid" 
                BorderWidth="1px" Font-Size="15px" Height="50px" HorizontalAlign="Center" />
            <RowStyle BorderColor="#CCCCCC" BorderStyle="Solid" BorderWidth="1px" 
                Font-Size="13px" Height="20px" HorizontalAlign="Center" />
            <Columns>
                <asp:BoundField DataField="rowid" HeaderStyle-Width="5%" 
                    HeaderText="Sr. No." />
                

                 <asp:TemplateField HeaderText="Company Id" Visible="false">
                    <ItemTemplate>
                    <asp:Label id="CompanyId" runat="server" Text='<%# Bind("CompanyId")%> '></asp:Label>
              
                    </ItemTemplate>
                    </asp:TemplateField>


                <asp:TemplateField HeaderText="Company Name">
                    <ItemTemplate>
                    <asp:Label id="CompanyName" runat="server" Text='<%# Bind("CompanyName")%> '></asp:Label>
              
                    </ItemTemplate>
                    </asp:TemplateField>
                <asp:TemplateField HeaderText="Company Email">
                    <ItemTemplate>
                    <asp:Label id="CompanyEmail" runat="server" Text='<%# Bind("CompanyEmail")%> '></asp:Label>
              
                    </ItemTemplate>
                    </asp:TemplateField>
               

               
                <asp:TemplateField HeaderText="Commands" ShowHeader="False">
                    <EditItemTemplate>
                        <asp:LinkButton ID="LnkBtnUpdate" runat="server" CausesValidation="True"
                            CommandName="Update" Text="Update"></asp:LinkButton>
                        &nbsp;<asp:LinkButton ID="LnkBtnCancel" runat="server" CausesValidation="False"
                            CommandName="Cancel" Text="Cancel"></asp:LinkButton>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:LinkButton ID="LnkBtnEdit" runat="server" CausesValidation="False"
                            CommandName="Update" Text="Jobs by Company"></asp:LinkButton>
                        &nbsp;<asp:LinkButton ID="LnkBtnDelete" runat="server" CausesValidation="False"
                            CommandName="Delete" Text="Company Details"></asp:LinkButton>
                    </ItemTemplate>
                </asp:TemplateField>



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
                </td>
        </tr>
        <tr>
            <td>
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
                <br />
                <br />
            </td>
        </tr>
    </table>
</asp:Content>

