<%@ Page Title="" Language="C#" MasterPageFile="~/company/company.master" AutoEventWireup="true" CodeFile="update.aspx.cs" Inherits="company_update" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

      <div class="page-in">
        <div class="container">
          <div class="row">
            <div class="col-lg-6 pull-left">
              <div class="page-in-name"><h1>WelCome :&nbsp;&nbsp;<span><asp:Label ID="lbluname" runat="server" Text=""></asp:Label></span></h1></div>
            </div>
            <div class="col-lg-6 pull-right">
              <div class="page-in-bread"><span>Income Tax Form Download from here: </span><a href="../Default.aspx" title="Logut">Logout</a> </div></div>                
            </div>
        </div>
      </div>

    <div class="container marg100">
        <div class="row">
             <div class="col-md-12 col-sm-15 col-xs-15">
               
                    <div class="panel panel-default">
                        <div class="panel-heading" >
                           <h4 style="color:maroon;text-align:center">Update Requirement </h4>
                            </div>
                     <div class="panel-body"> 
                          <%--    <div class="col-md-12">--%>
                                  <div class="table-responsive">
                                <table class="table table-striped table-bordered table-hovers" style="text-align:center">
  
   <%-- <table style="vertical-align:central">--%>
     
 <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" OnRowEditing="GridView1_RowEditing" OnRowUpdating="GridView1_RowUpdating"
     OnRowCancelingEdit="GridView1_RowCancelingEdit" OnRowDeleting="GridView1_RowDeleting" CellPadding="4" ForeColor="#333333" GridLines="None" >
        <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
        <Columns>
            <asp:TemplateField Visible="false">
                <ItemTemplate>
                    <asp:Label ID="lblreqid" runat="server" Text='<%#Eval("req_id") %>'></asp:Label>
                    <asp:Label ID="lbluid" runat="server" Text='<%#Eval("u_id") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
             <asp:TemplateField HeaderText="Designation">
                <ItemTemplate>
                    <asp:Label ID="lbldesi" runat="server" Text='<%#Eval("job_title")%>'></asp:Label>
                </ItemTemplate>
                 <EditItemTemplate>
                     <asp:TextBox ID="txtdesi" runat="server" Text='<%#Eval("job_title") %>'></asp:TextBox>
                 </EditItemTemplate>
            </asp:TemplateField>
             <asp:TemplateField HeaderText="Qualification">
                <ItemTemplate>
                    <asp:Label ID="lblquali" runat="server" Text='<%#Eval("quali") %>'></asp:Label>
                </ItemTemplate>
                 <EditItemTemplate>
                    <asp:CheckBoxList ID="chkqua" runat="server" Height="23px" Width="200px" RepeatColumns="2" RepeatLayout="Table">
                       <asp:ListItem Text="SSC" Value="SSC"></asp:ListItem>
                       <asp:ListItem Text="BCA" Value="BCA"></asp:ListItem>
                       <asp:ListItem Text="Msc IT" Value="Msc IT"></asp:ListItem>
                        <asp:ListItem Text="DIPLOMA" Value="DIPLOMA"></asp:ListItem>
                       <asp:ListItem Text="HSC" Value="HSC"></asp:ListItem>
                       <asp:ListItem Text="MCA" Value="MCA"></asp:ListItem>
                       <asp:ListItem Text="Msc CA" Value="Msc CA"></asp:ListItem>
                   </asp:CheckBoxList>
                      <asp:Label ID="lblqualie" runat="server" Text='<%#Eval("quali") %>'></asp:Label>
                 </EditItemTemplate>
            </asp:TemplateField>
             <asp:TemplateField HeaderText="Experience">
                <ItemTemplate>
                     <asp:Label ID="lblexpr" runat="server" Text='<%#Eval("exper") %>'></asp:Label>
                </ItemTemplate>
                 <EditItemTemplate>
                     <asp:TextBox ID="txtexpr" runat="server" Text='<%#Eval("exper") %>'></asp:TextBox>
                 </EditItemTemplate>
            </asp:TemplateField>
             <asp:TemplateField HeaderText="Description">
                <ItemTemplate>
                     <asp:Label ID="lbldesc" runat="server" Text='<%#Eval("j_desc") %>'></asp:Label>
                </ItemTemplate>
                   <EditItemTemplate>
                      <asp:TextBox ID="txtdesc" runat="server" Text='<%#Eval("j_desc") %>'></asp:TextBox>
                  </EditItemTemplate>
            </asp:TemplateField>
              <asp:TemplateField HeaderText="Vacancies">
                <ItemTemplate>
                     <asp:Label ID="lblvaca" runat="server" Text='<%#Eval("no_vacan") %>'></asp:Label>
                </ItemTemplate>
                  <EditItemTemplate>
                      <asp:TextBox ID="txtvaca" runat="server" Text='<%#Eval("no_vacan") %>'></asp:TextBox>
                  </EditItemTemplate>
            </asp:TemplateField>
              <asp:TemplateField HeaderText="Salary Package">
                <ItemTemplate>
                     <asp:Label ID="lblsal" runat="server" Text='<%#Eval("sal_package") %>'></asp:Label>
                </ItemTemplate>
                   <EditItemTemplate>
                      <asp:TextBox ID="txtsal" runat="server" Text='<%#Eval("sal_package") %>'></asp:TextBox>
                  </EditItemTemplate>
            </asp:TemplateField>
             
            <asp:CommandField ShowEditButton="true" ShowDeleteButton="true" />
        </Columns>
        <EditRowStyle BackColor="#999999" />
        <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
        <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
        <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
        <SortedAscendingCellStyle BackColor="#E9E7E2" />
        <SortedAscendingHeaderStyle BackColor="#506C8C" />
        <SortedDescendingCellStyle BackColor="#FFFDF8" />
        <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
    </asp:GridView>
          
 
                                    </table>
                                      </div>
                         </div>
                        </div>
                 </div>
            </div>
          </div>

</asp:Content>

