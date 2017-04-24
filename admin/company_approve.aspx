<%@ Page Title="" Language="C#" MasterPageFile="~/admin/admin.master" AutoEventWireup="true" CodeFile="company_approve.aspx.cs" Inherits="admin_company_approve" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="body" Runat="Server">
<div id="page-wrapper" >
            <div id="page-inner">
                 <div class="row">
                    <div class="col-md-6 col-sm-10 col-xs-2">
               
                    <div class="panel panel-default">
                        <div class="panel-heading" >
                           <h3 style="color:maroon;text-align:center"  > Company Approval Details </h3>
                            </div>
                          <%--    <div class="col-md-12">--%>
                                  <div class="table-responsive">
                                <table class="table table-striped table-bordered table-hovers" style="text-align:center">
                        
                                    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="false" OnRowCommand="GridView1_RowCommand1" BackColor="#DEBA84" BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" CellPadding="3" CellSpacing="2">
                                        <Columns>
                                            <asp:TemplateField HeaderText="Women" Visible="false">
                                                <ItemTemplate>
                                                    <asp:Label ID="lbluid" runat="server" Text='<%#Eval("u_id") %>'></asp:Label>
                                                </ItemTemplate>
                                            </asp:TemplateField>
                                            <asp:TemplateField HeaderText="Name">
                                                <ItemTemplate>
                                                    <asp:Label ID="lblname" runat="server" Text='<%#Eval("name") %>'></asp:Label>
                                                </ItemTemplate>
                                            </asp:TemplateField>
                                            <asp:TemplateField HeaderText="Email">
                                                <ItemTemplate>
                                                    <asp:Label ID="lblemail" runat="server" Text='<%#Eval("email_id") %>'></asp:Label>
                                                </ItemTemplate>
                                            </asp:TemplateField>
                                            <asp:TemplateField HeaderText="Contact">
                                                <ItemTemplate>
                                                    <asp:Label ID="lblcon" runat="server" Text='<%#Eval("contact_no") %>'></asp:Label>
                                                </ItemTemplate>
                                            </asp:TemplateField>
                                            <asp:TemplateField>
                                                <ItemTemplate>
                                                    <asp:LinkButton ID="btnsubmit" runat="server" Text="Approve" CommandName="Approve" CommandArgument='<%#((GridViewRow)Container).RowIndex %>' />
                                                </ItemTemplate>
                                            </asp:TemplateField>

                                        </Columns>
                                        <FooterStyle BackColor="#F7DFB5" ForeColor="#8C4510"></FooterStyle>

                                        <HeaderStyle BackColor="#A55129" Font-Bold="True" ForeColor="White"></HeaderStyle>

                                        <PagerStyle HorizontalAlign="Center" ForeColor="#8C4510"></PagerStyle>

                                        <RowStyle BackColor="#FFF7E7" ForeColor="#8C4510"></RowStyle>

                                        <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="White"></SelectedRowStyle>

                                        <SortedAscendingCellStyle BackColor="#FFF1D4"></SortedAscendingCellStyle>

                                        <SortedAscendingHeaderStyle BackColor="#B95C30"></SortedAscendingHeaderStyle>

                                        <SortedDescendingCellStyle BackColor="#F1E5CE"></SortedDescendingCellStyle>

                                        <SortedDescendingHeaderStyle BackColor="#93451F"></SortedDescendingHeaderStyle>
                                    </asp:GridView>
                                    </table>
                                      </div>
                        </div>
                        
</div>
 </div>
  </div> 
   </div>  
</asp:Content>

