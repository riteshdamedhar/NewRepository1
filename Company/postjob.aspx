<%@ page title="" language="C#" masterpagefile="~/Company/CompanyMaster.master" autoeventwireup="true" inherits="Company_postjob, App_Web_yjeehmc1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style13
        {
            font-size: x-large;
            text-decoration: underline;
            color: #FF0000;
        }
        .style15
        {
            width: 305px;
            text-align: right;
        }
        .style16
        {
            text-align: right;
            width: 305px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    
        <strong><span class="style13">Post a Job</span></strong> 

        <br/>
          <asp:Panel ID="PanelShow" runat="server">
              <table class="style1">
                  <tr>
                      <td>
                          <asp:GridView ID="GrdLoadPostJob" runat="server" AllowPaging="true" 
            AutoGenerateColumns="False" OnRowUpdating="GrdLoadPostJob_RowUpdating"
                OnRowDeleting="GrdLoadPostJob_RowDeleting" BorderColor="#CCCCCC" BorderStyle="Solid" 
            BorderWidth="1px" DataKeyNames="PostJobId,JobTitle,JobDesc,QulificationId,SpecificationId,ExpInYear,ExpInMonth,JobTypeId,CompanyId,Active,Location" 
            EmptyDataText="No files found!" Font-Names="Verdana" 
            OnRowDataBound="GrdLoadPostJob_RowDataBound" PageSize="5" 
            Width="100%" onpageindexchanged="GrdLoadPostJob_PageIndexChanged" >
            <AlternatingRowStyle BackColor="#FFD4BA" />
            <HeaderStyle BackColor="#FF9E66" BorderColor="#CCCCCC" BorderStyle="Solid" 
                BorderWidth="1px" Font-Size="15px" Height="50px" HorizontalAlign="Center" />
            <RowStyle BorderColor="#CCCCCC" BorderStyle="Solid" BorderWidth="1px" 
                Font-Size="13px" Height="20px" HorizontalAlign="Center" />
            <Columns>
                <asp:BoundField DataField="rowid" HeaderStyle-Width="5%" 
                    HeaderText="Sr. No." />
                
                <asp:TemplateField HeaderText="Posted Job Id">
                    <ItemTemplate>
                    <asp:Label id="PostJobId" runat="server" Text='<%# Bind("PostJobId")%> '></asp:Label>
              
                    </ItemTemplate>
                    </asp:TemplateField>
                <asp:TemplateField HeaderText="Job Title">
                    <ItemTemplate>
                    <asp:Label id="JobTitle" runat="server" Text='<%# Bind("JobTitle")%> '></asp:Label>
              
                    </ItemTemplate>
                    </asp:TemplateField>
                <asp:TemplateField HeaderText="Job Description">
                    <ItemTemplate>
                    <asp:Label id="JobDesc" runat="server" Text='<%# Bind("JobDesc")%> '></asp:Label>
              
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
                            CommandName="Update" Text="Update"></asp:LinkButton>
                        &nbsp;<asp:LinkButton ID="LnkBtnDelete" runat="server" CausesValidation="False"
                            CommandName="Delete" Text="Delete"></asp:LinkButton>
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
                          <asp:Button ID="btnAdd" runat="server" CausesValidation="False" 
                              onclick="btnAdd_Click" Text="Add" Width="80px" />
                          &nbsp;
                          <asp:Button ID="btnExit" runat="server" CausesValidation="False" 
                              onclick="btnExit_Click" Text="Exit" Width="80px" />
                      </td>
                  </tr>
              </table>


                    </asp:Panel>
    <asp:Panel ID="PanelAdd" runat="server">
   
        <table class="style1">
            <tr>
                <td>
                  
                </td>
                <td class="style15">
                </td>
                <td>
                </td>
                <td>
                </td>
            </tr>
            <tr>
                <td>
            


                    &nbsp;</td>
                <td class="style16">
                    Job Title :</td>
                <td>
                    &nbsp;&nbsp;&nbsp;
                    <asp:TextBox ID="txtJobTitle" runat="server" Width="250px"></asp:TextBox>
                </td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td>
                    &nbsp;</td>
                <td class="style16">
                    Job Description :
                </td>
                <td>
                    &nbsp;&nbsp;&nbsp;
                    <asp:TextBox ID="txtJobDesc" runat="server" Width="250px"></asp:TextBox>
                </td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td>
                    &nbsp;</td>
                <td class="style16">
                    Qualification :</td>
                <td>
                    &nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:DropDownList ID="ddlQul" runat="server" Width="250px">
                    </asp:DropDownList>
                </td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td>
                    &nbsp;</td>
                <td class="style16">
                    Specification :
                </td>
                <td>
                    &nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:DropDownList ID="ddlSpeci" runat="server" Width="250px">
                    </asp:DropDownList>
                </td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td>
                    &nbsp;</td>
                <td class="style16">
                    Experience :</td>
                <td>
                    &nbsp;&nbsp;&nbsp;&nbsp; In Year
                    <asp:DropDownList ID="ddlYear" runat="server">
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
                        <asp:ListItem>13</asp:ListItem>
                        <asp:ListItem>14</asp:ListItem>
                        <asp:ListItem>15</asp:ListItem>
                    </asp:DropDownList>
                    &nbsp;In months<asp:DropDownList ID="ddlMonth" runat="server">
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
                </td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td>
                    &nbsp;</td>
                <td class="style16">
                    Job Type :</td>
                <td>
                    &nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:DropDownList ID="ddlJobType" runat="server" Width="250px">
                    </asp:DropDownList>
                </td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td>
                    &nbsp;</td>
                <td class="style15">
                    Location : </td>
                <td>
                    &nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:TextBox ID="txtLocation" runat="server" Width="250px"></asp:TextBox>
                </td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td>
                    &nbsp;</td>
                <td class="style15">
                    &nbsp;</td>
                <td>
                    &nbsp;&nbsp;
                    </td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td>
                    &nbsp;</td>
                <td class="style15">
                    &nbsp;</td>
                <td>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Button ID="btnSubmit" runat="server" onclick="btnSubmit_Click" 
                        Text="Submit" />
                    &nbsp;&nbsp;&nbsp;
                    <asp:Button ID="btnCancel" runat="server" onclick="btnCancel_Click" 
                        Text="Cancel" />
                </td>
                <td>
                    &nbsp;</td>
            </tr>
        </table>
         </asp:Panel>
</asp:Content>

