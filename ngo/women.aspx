<%@ Page Title="" Language="C#" MasterPageFile="~/ngo/ngo.master" AutoEventWireup="true" CodeFile="women.aspx.cs" Inherits="ngo_women" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <script src="assets/js/jquery-1.20.2.min.js"></script>
    <script>
        $(document).ready(function () {
            //$("[id*=GridView1] [id*=lbladvice]").show();
            //$("[id*=GridView1] [id*=txtadvice]").hide();

            $("[id*=GridView1] [id*=btnadvice]").click(
               function () {
                   var row = $(this).closest("tr");

                  row.find("[id*=lbladvice]").hide();
                  row.find("[id*=txtadvice]").show();
                  row.find("[id*=btnsubmit]").show();
                  row.find("[id*=btnadvice]").hide();
               })

        })
    </script>
    
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
   <div class="page-in">
        <div class="container">
          <div class="row">
            <div class="col-lg-6 pull-left">
              <div class="page-in-name"><h1>WelCome :&nbsp;&nbsp;<span><asp:Label ID="lbluname" runat="server" Text=""></asp:Label></span></h1></div>
            </div>
            <div class="col-lg-6 pull-right">
              <div class="page-in-bread"><span> Personal Information of NGO: </span><a href="../Default.aspx" title="Logut">Logout</a> </div></div>                
            </div>
        </div>
      </div>
              <div class="container marg100">
        <div class="row">
             <div class="col-md-6 col-sm-9 col-xs-9">
               
                    <div class="panel panel-default">
                        <div class="panel-heading" >
                           <h4 style="color:maroon;text-align:center">Women's Complain </h4>
                            </div>
                    
                                                               <asp:GridView ID="GridView1" runat="server" OnRowCommand="GridView1_RowCommand" AutoGenerateColumns="false" CellPadding="4" ForeColor="#333333" GridLines="None">

                                 <AlternatingRowStyle BackColor="White" ForeColor="#284775"></AlternatingRowStyle>
                                 <Columns>
                                     <asp:TemplateField HeaderText="Women" Visible="false">

                                         <ItemTemplate>
                                             <asp:Label ID="lblwid" runat="server" Text='<%#Eval("w_id") %>'></asp:Label>
                                             <asp:Label ID="lbluid" runat="server" Text='<%#Eval("u_id") %>'></asp:Label>
                                             <asp:Label ID="lblnid" runat="server" Text='<%#Eval("ngo_id") %>'></asp:Label>
                                              <asp:Label ID="lblnpid" runat="server" Text='<%#Eval("np_id") %>'></asp:Label>
                                        </ItemTemplate>
                                     </asp:TemplateField>
                                     <asp:TemplateField HeaderText="Complain">
                                         <ItemTemplate>
                                             <asp:Label ID="lblcmt" runat="server" Text='<%#Eval("complain") %>'></asp:Label>
                                         </ItemTemplate>
                                     </asp:TemplateField>
                                      <asp:TemplateField HeaderText="Complain" Visible="false">
                                         <ItemTemplate>
                                            
                                         </ItemTemplate>
                                     </asp:TemplateField>
                                     <asp:TemplateField HeaderText="Advice">
                                         <ItemTemplate>
                                              <asp:Label ID="lbladvice" runat="server" Text='<%#Eval("advice") %>'></asp:Label>
                                              <asp:TextBox ID="txtadvice" TextMode="MultiLine" runat="server" Width="200px" Style="display:none;"></asp:TextBox>
                                         </ItemTemplate>
                                         
                                     </asp:TemplateField>

                                     <asp:TemplateField>
                                         <ItemTemplate>
                                             <input type="button" class="btn-brown" value="Advice" id="btnadvice" />
                                             <asp:LinkButton ID="btnsubmit" runat="server" Text="Submit" Style="display:none;" CommandName="add" CommandArgument='<%#((GridViewRow)Container).RowIndex %>' />
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
                            
                                      </div>
                         </div>
                        </div>
                 </div>
            </div>
                  </div>
    
                           
                         
   
</asp:Content>

