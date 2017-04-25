<%@ Page Title="" Language="C#" MasterPageFile="~/company/company.master" AutoEventWireup="true" CodeFile="sendmail.aspx.cs" Inherits="company_sendmail" %>

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
              <div class="page-in-bread"><span>Company Send Mail to User Requirement from here: </span><a href="../Default.aspx" title="Logut">Logout</a> </div></div>                
            </div>
        </div>
      </div>
    <div class="container marg100">
        <div class="row">
             <div class="col-md-5 col-sm-8 col-xs-8">
               
                    <div class="panel panel-default">
                        <div class="panel-heading" >
                           <h4 style="color:maroon;text-align:center">Send Mail </h4>
                            </div>
                     <div class="panel-body"> 
                          <%--    <div class="col-md-12">--%>
                                  <div class="table-responsive">
                                <table class="table table-striped table-bordered table-hovers" style="text-align:center">
  
   <%-- <table style="vertical-align:central">--%>
     
 <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False"  CellPadding="4" ForeColor="#333333" GridLines="None" >
        <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
        <Columns>
            <asp:TemplateField Visible="false">
                <ItemTemplate>
                   <%-- <asp:Label ID="lblupid" runat="server" Text='<%#Eval("up_id") %>'></asp:Label>--%>
                    <asp:Label ID="lbluid" runat="server" Text='<%#Eval("u_id") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
           
            <asp:TemplateField HeaderText="">
                <ItemTemplate>
                    <asp:CheckBox ID="Chkselect" runat="server" />
                      </ItemTemplate>
            </asp:TemplateField>
             <asp:TemplateField>
               <ItemTemplate>
                   <div>&nbsp;&nbsp;&nbsp;</div>
               </ItemTemplate>
            </asp:TemplateField>
             <asp:TemplateField HeaderText="User Name">
                <ItemTemplate>
                    <asp:Label ID="lblname" runat="server" Text='<%#Eval("name")%>'></asp:Label>
                </ItemTemplate>
                 
            </asp:TemplateField>
              <asp:TemplateField>
               <ItemTemplate>
                   <div>&nbsp;&nbsp;&nbsp;</div>
               </ItemTemplate>
            </asp:TemplateField>
             <asp:TemplateField HeaderText="Email ID">
                <ItemTemplate>
                    <asp:Label ID="lblemail" runat="server" Text='<%#Eval("email_id") %>'></asp:Label>
                </ItemTemplate>
                 
            </asp:TemplateField>
           <%--  <asp:TemplateField HeaderText="Skill">
                <ItemTemplate>
                     <asp:Label ID="lblexpr" runat="server" Text='<%#Eval("exper") %>'></asp:Label>
                </ItemTemplate>
                
            </asp:TemplateField>--%>
             
              
              
             
          
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
         <br />
                                     
     <asp:Button ID="btn1" runat="server" Text="Send Mail" CssClass="btn btn-violet" OnClick="btn1_Click"/>
                                    </table>
                                      </div>
                         </div>
                        </div>
                 </div>
            </div>
          </div>
</asp:Content>

