<%@ Page Title="" Language="C#" MasterPageFile="~/company/company.master" AutoEventWireup="true" CodeFile="jobapplyDetail.aspx.cs" Inherits="company_jobapplyDetail" %>

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
              <div class="page-in-bread"><span> User Who are Apply for Job: </span><a href="../Default.aspx" title="Logut">Logout</a> </div></div>                
            </div>
        </div>
      </div>
   <div class="container marg30">
        <div class="col-lg-6">
      
       <div id="page-wrapper" >
            <div id="page-inner">
                <div class="row">
                    <div class="col-md-12 col-sm-13 col-xs-13">
               
                  <div class="container">
                <div class="col-lg-10">
               
                <div class="col-lg-10">
                        <div class="panel panel-default">

                    <div class="panel panel-default">
                        <div class="panel-heading" >
                           <h3 style="color:maroon;text-align:center"  > User are Apply for Job </h3>
                            </div>
                     <div class="panel-body"> 
                          <%--    <div class="col-md-12">--%>
                                  <div class="table-responsive">
                                <table class="table table-striped table-bordered table-hovers" style="text-align:center">
  
                                    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="false" OnRowCommand="GridView1_RowCommand" CellPadding="4" ForeColor="#333333" GridLines="None">
                                        <AlternatingRowStyle BackColor="White" ForeColor="#284775"></AlternatingRowStyle>
                                        <Columns>
                                            <%-- <asp:TemplateField>
                        <ItemTemplate>
                            <asp:CheckBox ID="chkmail" runat="server" />
                        </ItemTemplate>
                    </asp:TemplateField>--%>
                                            <asp:TemplateField Visible="false">
                                                <ItemTemplate>
                                                    <asp:Label ID="lbluid" runat="server" Text='<%#Eval("u_id") %>'></asp:Label>
                                                    <asp:Label ID="lblcid" runat="server" Text='<%#Eval("c_id") %>'></asp:Label>
                                                    <asp:Label ID="lblmail" runat="server" Text='<%#Eval("email_id") %>'></asp:Label>

                                                </ItemTemplate>
                                            </asp:TemplateField>
                                            <asp:TemplateField HeaderText="Name">
                                                <ItemTemplate>
                                                    <asp:Label ID="lblname" runat="server" Text='<%#Eval("name") %>'></asp:Label>
                                                </ItemTemplate>
                                            </asp:TemplateField>
                                            
                                            <asp:TemplateField HeaderText="Contact Number">
                                                <ItemTemplate>
                                                    <asp:Label ID="lblcon" runat="server" Text='<%#Eval("contact_no") %>'></asp:Label>
                                                </ItemTemplate>
                                            </asp:TemplateField>
                                            <asp:TemplateField HeaderText="Post">
                                                <ItemTemplate>
                                                    <asp:Label ID="lblpost" runat="server" Text='<%#Eval("job_title") %>'></asp:Label>
                                                </ItemTemplate>
                                            </asp:TemplateField>
                                            <asp:TemplateField HeaderText="Resume">
                                                <ItemTemplate>
                                                    <asp:Label ID="lblcv" runat="server" Text='<%#Eval("cv") %>' Visible="false"></asp:Label>
                                                    <asp:LinkButton ID="lnkpath" runat="server" CommandName="pdf" CommandArgument='<%#((GridViewRow)Container).RowIndex %>' Text="show"></asp:LinkButton>
                                                </ItemTemplate>
                                            </asp:TemplateField>
                                            <asp:TemplateField HeaderText="Description">
                                                <ItemTemplate>
                                                    <asp:Label ID="lbldesc" runat="server" Text='<%#Eval("descp") %>'></asp:Label>
                                                </ItemTemplate>
                                            </asp:TemplateField>
                                            <asp:TemplateField>
                                                <ItemTemplate>
                                                    <asp:LinkButton ID="lnkmail" runat="server" CommandName="mail" CommandArgument='<%#((GridViewRow)Container).RowIndex %>' Text="Send Mail"></asp:LinkButton>
                                                </ItemTemplate>
                                            </asp:TemplateField>
                                        </Columns>
                                        <EditRowStyle BackColor="#999999"></EditRowStyle>

                                        <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White"></FooterStyle>

                                        <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White"></HeaderStyle>

                                        <PagerStyle HorizontalAlign="Center" BackColor="#284775" ForeColor="White"></PagerStyle>

                                        <RowStyle BackColor="#F7F6F3" ForeColor="#333333"></RowStyle>

                                        <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333"></SelectedRowStyle>

                                        <SortedAscendingCellStyle BackColor="#E9E7E2"></SortedAscendingCellStyle>

                                        <SortedAscendingHeaderStyle BackColor="#506C8C"></SortedAscendingHeaderStyle>

                                        <SortedDescendingCellStyle BackColor="#FFFDF8"></SortedDescendingCellStyle>

                                        <SortedDescendingHeaderStyle BackColor="#6F8DAE"></SortedDescendingHeaderStyle>
                                    </asp:GridView>
                                    </table>
                                      </div>
                         </div>
                        </div>
                        </div>
                    </div>
                </div>
           </div>
                        </div>
                    </div>
                </div>

           </div>
    
          </div>
         </div>
    
</asp:Content>

