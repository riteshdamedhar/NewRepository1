<%@ page title="" language="C#" masterpagefile="~/Admin/AdminMaster.master" autoeventwireup="true" inherits="Company, App_Web_lqxqthlg" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style13
        {
           
           
            font-size: x-large;
        }
        .style14
        {
            font-size: x-large;
            color: #FF0066;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
   
    <br />
&nbsp;<table class="style1">
        <tr>
            <td class="style13">
    <strong style="text-decoration: underline"><span class="style14">Approve Company<br />
                </span>
    </strong></td>
        </tr>
        <tr>
            <td class="style15">
   
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
   
    <asp:Button ID="btnPending" runat="server" Text="Pending Request" 
                    onclick="btnPending_Click" />
    &nbsp;
    <asp:Button ID="btnAccept" runat="server" Text="Accepted" onclick="btnAccept_Click" />
    &nbsp;
   
    <asp:Button ID="btnReject" runat="server" Text="Rejected" onclick="btnReject_Click" />
   
               </td>
        </tr>
        <tr>
            <td class="style13">
                <asp:Panel ID="panelAccept" runat="server">
                
            <asp:GridView ID="GrdCompany" runat="server" AllowPaging="true" 
            AutoGenerateColumns="False" OnRowUpdating="GrdCompany_RowUpdating"
                OnRowDeleting="GrdCompany_RowDeleting" BorderColor="#CCCCCC" BorderStyle="Solid" 
            BorderWidth="1px" DataKeyNames="CompanyId,CompanyName,CompanyLogo,CompanyAdd,CompanyRegNo,CompanyMobNo,CompanyEmail,Active" 
            EmptyDataText="No files found!" Font-Names="Verdana" PageSize="5" 
            OnRowDataBound="GrdCompany_RowDataBound" 
            Width="100%" onpageindexchanged="GrdCompany_PageIndexChanged" >
            <AlternatingRowStyle BackColor="#FFD4BA" />
            <HeaderStyle BackColor="#FF9E66" BorderColor="#CCCCCC" BorderStyle="Solid" 
                BorderWidth="1px" Font-Size="15px" Height="50px" HorizontalAlign="Center" />
            <RowStyle BorderColor="#CCCCCC" BorderStyle="Solid" BorderWidth="1px" 
                Font-Size="13px" Height="20px" HorizontalAlign="Center" />
            <Columns>
                <asp:BoundField DataField="rowid" HeaderStyle-Width="5%" 
                    HeaderText="Sr. No." />
                
                <asp:TemplateField HeaderText="CompanyId">
                    <ItemTemplate>
                    <asp:Label id="CompanyId" runat="server" Text='<%# Bind("CompanyId")%> '></asp:Label>
              
                    </ItemTemplate>
                    </asp:TemplateField>
               
                <asp:TemplateField HeaderText="Company Name">
                    <ItemTemplate>
                    <asp:Label id="CompanyName" runat="server" Text='<%# Bind("CompanyName")%> '></asp:Label>
              
                    </ItemTemplate>
                    </asp:TemplateField>
               
                <asp:TemplateField HeaderText="Company Address">
                    <ItemTemplate>
                    <asp:Label id="CompanyAdd" runat="server" Text='<%# Bind("CompanyAdd")%> '></asp:Label>
              
                    </ItemTemplate>
                    </asp:TemplateField>

                     <asp:TemplateField HeaderText="Company Mobile No.">
                    <ItemTemplate>
                    <asp:Label id="CompanyMobNo" runat="server" Text='<%# Bind("CompanyMobNo")%> '></asp:Label>
              
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
                            CommandName="Update" Text="Accept"></asp:LinkButton>
                        &nbsp;<asp:LinkButton ID="LnkBtnDelete" runat="server" CausesValidation="False"
                            CommandName="Delete" Text="Reject"></asp:LinkButton>
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
                </asp:Panel>
               </td>
        </tr>
        <tr>
            <td>
                <asp:Panel ID="PanelRejected" runat="server">
                <asp:GridView ID="grdRejected" runat="server" AllowPaging="true" 
            AutoGenerateColumns="False" OnRowUpdating="grdRejected_RowUpdating"
                OnRowDeleting="grdRejected_RowDeleting" BorderColor="#CCCCCC" BorderStyle="Solid" 
            BorderWidth="1px" DataKeyNames="CompanyId,CompanyName,CompanyLogo,CompanyAdd,CompanyRegNo,CompanyMobNo,CompanyEmail,Active" 
            EmptyDataText="No files found!" Font-Names="Verdana" PageSize="5" 
            OnRowDataBound="grdRejected_RowDataBound" 
            Width="100%" onpageindexchanged="grdRejected_PageIndexChanged" >
            <AlternatingRowStyle BackColor="#FFD4BA" />
            <HeaderStyle BackColor="#FF9E66" BorderColor="#CCCCCC" BorderStyle="Solid" 
                BorderWidth="1px" Font-Size="15px" Height="50px" HorizontalAlign="Center" />
            <RowStyle BorderColor="#CCCCCC" BorderStyle="Solid" BorderWidth="1px" 
                Font-Size="13px" Height="20px" HorizontalAlign="Center" />
            <Columns>
                <asp:BoundField DataField="rowid" HeaderStyle-Width="5%" 
                    HeaderText="Sr. No." />
                
                <asp:TemplateField HeaderText="CompanyId">
                    <ItemTemplate>
                    <asp:Label id="CompanyId" runat="server" Text='<%# Bind("CompanyId")%> '></asp:Label>
              
                    </ItemTemplate>
                    </asp:TemplateField>
               
                <asp:TemplateField HeaderText="Company Name">
                    <ItemTemplate>
                    <asp:Label id="CompanyName" runat="server" Text='<%# Bind("CompanyName")%> '></asp:Label>
              
                    </ItemTemplate>
                    </asp:TemplateField>
               
                <asp:TemplateField HeaderText="Company Address">
                    <ItemTemplate>
                    <asp:Label id="CompanyAdd" runat="server" Text='<%# Bind("CompanyAdd")%> '></asp:Label>
              
                    </ItemTemplate>
                    </asp:TemplateField>

                     <asp:TemplateField HeaderText="Company Mobile No.">
                    <ItemTemplate>
                    <asp:Label id="CompanyMobNo" runat="server" Text='<%# Bind("CompanyMobNo")%> '></asp:Label>
              
                    </ItemTemplate>
                    </asp:TemplateField>
               
                <asp:TemplateField HeaderText="Commands" ShowHeader="False">
                    <EditItemTemplate>
                        <asp:LinkButton ID="LnkBtnUpdate" runat="server" CausesValidation="True"
                            CommandName="Update" Text="Update"></asp:LinkButton>
                       <%-- &nbsp;<asp:LinkButton ID="LnkBtnCancel" runat="server" CausesValidation="False"
                            CommandName="Cancel" Text="Cancel"></asp:LinkButton>--%>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:LinkButton ID="LnkBtnEdit" runat="server" CausesValidation="False"
                            CommandName="Update" Text="Accept"></asp:LinkButton>
                    <%--    &nbsp;<asp:LinkButton ID="LnkBtnDelete" runat="server" CausesValidation="False"
                            CommandName="Delete" Text="Reject"></asp:LinkButton>--%>
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
                </asp:Panel>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Panel ID="PanelAccepted" runat="server">
                <asp:GridView ID="GrdAccepted" runat="server" AllowPaging="true" 
            AutoGenerateColumns="False" OnRowUpdating="GrdAccepted_RowUpdating"
                OnRowDeleting="GrdAccepted_RowDeleting" BorderColor="#CCCCCC" BorderStyle="Solid" 
            BorderWidth="1px" DataKeyNames="CompanyId,CompanyName,CompanyLogo,CompanyAdd,CompanyRegNo,CompanyMobNo,CompanyEmail,Active" 
            EmptyDataText="No files found!" Font-Names="Verdana" PageSize="5" 
            OnRowDataBound="GrdAccepted_RowDataBound" 
            Width="100%" onpageindexchanged="GrdAccepted_PageIndexChanged" >
            <AlternatingRowStyle BackColor="#FFD4BA" />
            <HeaderStyle BackColor="#FF9E66" BorderColor="#CCCCCC" BorderStyle="Solid" 
                BorderWidth="1px" Font-Size="15px" Height="50px" HorizontalAlign="Center" />
            <RowStyle BorderColor="#CCCCCC" BorderStyle="Solid" BorderWidth="1px" 
                Font-Size="13px" Height="20px" HorizontalAlign="Center" />
            <Columns>
                <asp:BoundField DataField="rowid" HeaderStyle-Width="5%" 
                    HeaderText="Sr. No." />
                
                <asp:TemplateField HeaderText="CompanyId">
                    <ItemTemplate>
                    <asp:Label id="CompanyId" runat="server" Text='<%# Bind("CompanyId")%> '></asp:Label>
              
                    </ItemTemplate>
                    </asp:TemplateField>
               
                <asp:TemplateField HeaderText="Company Name">
                    <ItemTemplate>
                    <asp:Label id="CompanyName" runat="server" Text='<%# Bind("CompanyName")%> '></asp:Label>
              
                    </ItemTemplate>
                    </asp:TemplateField>
               
                <asp:TemplateField HeaderText="Company Address">
                    <ItemTemplate>
                    <asp:Label id="CompanyAdd" runat="server" Text='<%# Bind("CompanyAdd")%> '></asp:Label>
              
                    </ItemTemplate>
                    </asp:TemplateField>

                     <asp:TemplateField HeaderText="Company Mobile No.">
                    <ItemTemplate>
                    <asp:Label id="CompanyMobNo" runat="server" Text='<%# Bind("CompanyMobNo")%> '></asp:Label>
              
                    </ItemTemplate>
                    </asp:TemplateField>
               
                <asp:TemplateField HeaderText="Commands" ShowHeader="False">
                    <EditItemTemplate>
                        <%--<asp:LinkButton ID="LnkBtnUpdate" runat="server" CausesValidation="True"
                            CommandName="Update" Text="Update"></asp:LinkButton>--%>
                        &nbsp;<asp:LinkButton ID="LnkBtnCancel" runat="server" CausesValidation="False"
                            CommandName="Cancel" Text="Cancel"></asp:LinkButton>
                    </EditItemTemplate>
                    <ItemTemplate>
                       <%-- <asp:LinkButton ID="LnkBtnEdit" runat="server" CausesValidation="False"
                            CommandName="Update" Text="Accept"></asp:LinkButton>--%>
                        &nbsp;<asp:LinkButton ID="LnkBtnDelete" runat="server" CausesValidation="False"
                            CommandName="Delete" Text="Reject"></asp:LinkButton>
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
                </asp:Panel>
            </td>
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
</asp:Content>

