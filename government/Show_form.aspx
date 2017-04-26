<%@ Page Title="" Language="C#" MasterPageFile="~/government/gov.master" AutoEventWireup="true" CodeFile="Show_form.aspx.cs" Inherits="government_Show_form" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="body" Runat="Server">
    <div class="page-in">
        <div class="container">
          <div class="row">
            <div class="col-lg-6 pull-left">
              <div class="page-in-name"><h1>WelCome :&nbsp;&nbsp;<span><asp:Label ID="lbluname" runat="server" Text=""></asp:Label></span></h1></div>
            </div>
            <div class="col-lg-6 pull-right">
              <div class="page-in-bread"><span> Information of ambassador Profile </span><a href="../Default.aspx" title="Logut">Logout</a> </div></div>                
            </div>
        </div>
      </div>
  
    <div class="container marg30">
        <div class="col-lg-6">
             <div class="col-lg-6">
          
                  <div class="container">
                <div class="col-lg-10">
               
                <div class="col-lg-10">
                        <div class="panel panel-default">

                            <div class="panel-heading">
                            Show Upload Form by User
                                </div>
                         <div class="panel-body">
                             <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="false" OnPageIndexChanging="GridView1_PageIndexChanging" OnRowCommand="GridView1_RowCommand" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="3" AllowPaging="true" PageSize="10">
                                 <Columns>
                                     <asp:TemplateField Visible="false">
                                         <ItemTemplate>
                                             <asp:Label ID="lblsid" runat="server" Text='<%#Eval("scan_id") %>'></asp:Label>
                                             <asp:Label ID="lbluid" runat="server" Text='<%#Eval("u_id") %>'></asp:Label>
                                             <asp:Label ID="lblmail" runat="server" Text='<%#Eval("email_id") %>'></asp:Label>
                                         </ItemTemplate>
                                     </asp:TemplateField>
                                     <asp:TemplateField HeaderText="Name">
                                         <ItemTemplate>
                                             <asp:Label ID="lblname" runat="server" Text='<%#Eval("name") %>'></asp:Label>
                                         </ItemTemplate>
                                     </asp:TemplateField>
                                     <asp:TemplateField HeaderText="Form number">
                                         <ItemTemplate>
                                             <asp:Label ID="lblfno" runat="server" Text='<%#Eval("form_no") %>'></asp:Label>
                                         </ItemTemplate>
                                     </asp:TemplateField>
                                     <asp:TemplateField HeaderText="Document">
                                         <ItemTemplate>
                                             <asp:Label ID="lblpath" runat="server" Text='<%#Eval("path") %>' Visible="false"></asp:Label>
                                             <asp:LinkButton ID="lnkpath" runat="server" CommandName="pdf" CommandArgument='<%#((GridViewRow)Container).RowIndex %>' Text="show"></asp:LinkButton>
                                         </ItemTemplate>
                                     </asp:TemplateField>


                                     <asp:TemplateField>
                                         <ItemTemplate>
                                             <asp:LinkButton ID="lnkmail" runat="server" CommandName="mail" CommandArgument='<%#((GridViewRow)Container).RowIndex %>' Text="Send Mail"></asp:LinkButton>
                                         </ItemTemplate>
                                     </asp:TemplateField>
                                 </Columns>
                                 <FooterStyle BackColor="White" ForeColor="#000066"></FooterStyle>

                                 <HeaderStyle BackColor="#006699" Font-Bold="True" ForeColor="White"></HeaderStyle>

                                 <PagerStyle HorizontalAlign="Left" BackColor="White" ForeColor="#000066"></PagerStyle>

                                 <RowStyle ForeColor="#000066"></RowStyle>

                                 <SelectedRowStyle BackColor="#669999" Font-Bold="True" ForeColor="White"></SelectedRowStyle>

                                 <SortedAscendingCellStyle BackColor="#F1F1F1"></SortedAscendingCellStyle>

                                 <SortedAscendingHeaderStyle BackColor="#007DBB"></SortedAscendingHeaderStyle>

                                 <SortedDescendingCellStyle BackColor="#CAC9C9"></SortedDescendingCellStyle>

                                 <SortedDescendingHeaderStyle BackColor="#00547E"></SortedDescendingHeaderStyle>
                             </asp:GridView>
                             </div>
                            </div>
                    </div>
                    </div>  </div>
                 </div>
            </div>
        </div>
    
</asp:Content>

