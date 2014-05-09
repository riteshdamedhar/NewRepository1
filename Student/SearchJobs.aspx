<%@ page title="" language="C#" masterpagefile="~/Student/StudentMaster.master" autoeventwireup="true" inherits="Student_SearchJobs, App_Web_2sqaqgoh" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style10
        {
            text-decoration: underline;
            color: #FF0000;
            font-size: x-large;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<table class="style1">
        <tr>
            <td class="style10">
                <strong>Jobs Available for your Profile</strong></td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                <asp:GridView ID="GrdLoadJobCompany" runat="server" 
            AutoGenerateColumns="False" OnRowUpdating="GrdLoadJobCompany_RowUpdating"
                OnRowDeleting="GrdLoadJobCompany_RowDeleting" BorderColor="#CCCCCC" BorderStyle="Solid" 
            BorderWidth="1px" DataKeyNames="PostJobId,JobTitle,JobDesc,QulificationId,SpecificationId,ExpInYear,ExpInMonth,JobTypeId,CompanyId,Active,Location,CompanyName,QualificationName" 
            EmptyDataText="No files found!" Font-Names="Verdana" 
            OnRowDataBound="GrdLoadJobCompany_RowDataBound" 
            Width="100%" onpageindexchanged="GrdLoadJobCompany_PageIndexChanged" 
                    onselectedindexchanged="GrdLoadJobCompany_SelectedIndexChanged" >
            <AlternatingRowStyle BackColor="#FFD4BA" />
            <HeaderStyle BackColor="#FF9E66" BorderColor="#CCCCCC" BorderStyle="Solid" 
                BorderWidth="1px" Font-Size="15px" Height="50px" HorizontalAlign="Center" />
            <RowStyle BorderColor="#CCCCCC" BorderStyle="Solid" BorderWidth="1px" 
                Font-Size="13px" Height="20px" HorizontalAlign="Center" />
            <Columns>
                <asp:BoundField DataField="rowid" HeaderStyle-Width="5%" 
                    HeaderText="Sr. No." />
                

                 <asp:TemplateField HeaderText=" Posted Job Id" Visible="false">
                    <ItemTemplate>
                    <asp:Label id="PostJobId" runat="server" Text='<%# Bind("PostJobId")%> '></asp:Label>
              
                    </ItemTemplate>
                    </asp:TemplateField>

                     <asp:TemplateField HeaderText=" Company Id" Visible="false">
                    <ItemTemplate>
                    <asp:Label id="CompanyId" runat="server" Text='<%# Bind("CompanyId")%> '></asp:Label>
              
                    </ItemTemplate>
                    </asp:TemplateField>

                <asp:TemplateField HeaderText="Job Title">
                    <ItemTemplate>
                    <asp:Label id="JobTitle" runat="server" Text='<%# Bind("JobTitle")%> '></asp:Label>
              
                    </ItemTemplate>
                    </asp:TemplateField>

                    
                <asp:TemplateField HeaderText="Qualification">
                    <ItemTemplate>
                    <asp:Label id="QualificationName" runat="server" Text='<%# Bind("QualificationName")%> '></asp:Label>
              
                    </ItemTemplate>
                    </asp:TemplateField>

                <asp:TemplateField HeaderText="Company Name">
                    <ItemTemplate>
                    <asp:Label id="CompanyName" runat="server" Text='<%# Bind("CompanyName")%> '></asp:Label>
              
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
                            CommandName="Update" Text="Jobs Details"></asp:LinkButton>
                        &nbsp;<asp:LinkButton ID="LnkBtnDelete" runat="server" CausesValidation="False"
                            CommandName="Delete" Text="Apply"></asp:LinkButton>
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
        </asp:GridView></td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
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

