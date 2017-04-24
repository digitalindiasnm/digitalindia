<%@ Page Title="" Language="C#" MasterPageFile="~/admin/admin.master" AutoEventWireup="true" CodeFile="main.aspx.cs" Inherits="admin_main" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
     <script src="../assets/js/jquery-1.20.2.min.js"></script>
    <script>
        $(document).ready(function () {
            $("#grid1").hide();
            
           
            $("#btnmsg").click(function () {
                $("#grid1").toggle();
                
            })

        })
</script>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="body" Runat="Server">
    <div id="page-wrapper" >
            <div id="page-inner">
                <div class="row">
                    <div class="col-md-12">
                     <h2>Admin Dashboard</h2>   
                       
                    </div>
                </div>              
                 <!-- /. ROW  -->
                  <hr />
                     <div class="row">
                <div class="col-md-4 col-sm-9 col-xs-9">           
			    <div class="panel panel-back noti-box">
                <span class="icon-box bg-color-blue set-icon">
                    <i class="fa fa-bell-o"></i>
                </span>
                <div class="text-box">
                    <asp:Label ID="lblmsg" runat="server" Text="" CssClass="main-text"></asp:Label>
                    <%--<label class="main-text">120 New</label>--%>
                    <p class="text-muted">Notifications&nbsp;&nbsp;&nbsp;&nbsp;
                     <span>
                    <input id="btnmsg" class="btn btn-warning btn-sm" type="button" value="Show" /></span></p>
                     &nbsp;</div>
             </div>
		     </div>
                  
			</div>
                  
                 <div id="grid1">
                    <div class="col-md-7 col-sm-10 col-xs-1">
               
                    <div class="panel panel-default">
                        <div class="panel-heading" >
                           <h4 style="color:maroon;text-align:center"  > Notification </h4>
                            </div>
                     <div class="panel-body"> 
                          <%--    <div class="col-md-12">--%>
                                  <div class="table-responsive">
                                <table class="table table-striped table-bordered table-hovers" style="text-align:center;text-space-collapse:collapse">
               
                    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="false" CellPadding="4" CellSpacing="4" ForeColor="#333333" GridLines="None">
                        <AlternatingRowStyle BackColor="White"></AlternatingRowStyle>
                        <Columns>
                            <asp:TemplateField Visible="false">
                                <ItemTemplate>
                                    <asp:Label ID="lblfid" runat="server" Text='<%#Eval("f_id") %>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="Name">
                                <ItemTemplate>
                                    <asp:Label ID="lblname" runat="server" Text='<%#Eval("name") %>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="Subject">
                                <ItemTemplate>
                                    <asp:Label ID="lblsubj" runat="server" Text='<%#Eval("subject") %>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="Message">
                                <ItemTemplate>
                                    <asp:Label ID="lblcmt" runat="server" Text='<%#Eval("msg") %>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                        </Columns>
                        <FooterStyle BackColor="#990000" Font-Bold="True" ForeColor="White"></FooterStyle>

                        <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="White"></HeaderStyle>

                        <PagerStyle HorizontalAlign="Center" BackColor="#FFCC66" ForeColor="#333333"></PagerStyle>

                        <RowStyle BackColor="#FFFBD6" ForeColor="#333333"></RowStyle>

                        <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="Navy"></SelectedRowStyle>

                        <SortedAscendingCellStyle BackColor="#FDF5AC"></SortedAscendingCellStyle>

                        <SortedAscendingHeaderStyle BackColor="#4D0000"></SortedAscendingHeaderStyle>

                        <SortedDescendingCellStyle BackColor="#FCF6C0"></SortedDescendingCellStyle>

                        <SortedDescendingHeaderStyle BackColor="#820000"></SortedDescendingHeaderStyle>
                    </asp:GridView>
              
                                    </table>
                                      </div>
                         </div>
                        </div>
                        </div>
                  
                 <!-- /. ROW  -->
                
                 <!-- /. ROW  -->
                     
                 <!-- /. ROW  -->           
  
             <!-- /. PAGE INNER  -->
            </div>
        </div>
    </div>
</asp:Content>


