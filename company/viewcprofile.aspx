<%@ Page Title="" Language="C#" MasterPageFile="~/company/company.master" AutoEventWireup="true" CodeFile="viewcprofile.aspx.cs" Inherits="company_viewcprofile" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
     <script src="../assets/js/jquery-1.20.2.min.js"></script>
    <script>
        $(document).ready(function () {
            $(".fileUp").hide();
            $(".btnup").hide();
            $(".btnedit").click(function () {
                $(".fileUp").show();
                $(".btnup").show();
                $(".btnedit").hide();
                $(".uppic").hide();
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
              <div class="page-in-bread"><span> Company Details: </span><a href="../Default.aspx" title="Logut">Logout</a> </div></div>                
            </div>
        </div>
      </div>
  
       <div class="container">
      <div class="row">
      <div class="col-md-5  toppad  pull-right col-md-offset-3 ">
        
<p class=" text-info"> </p>
      </div>
        <div class="col-xs-12 col-sm-12 col-md-6 col-lg-6 col-xs-offset-0 col-sm-offset-0 col-md-offset-3 col-lg-offset-3 toppad" >
   
   
          <div class="panel panel-info">
            <div class="panel-heading">
              <h3 class="panel-title">View Profile</h3>
            </div>
            <div class="panel-body">
              <div class="row">
                <div class="col-md-3 col-lg-3 " align="center">
            <asp:DetailsView ID="DetailsView1" runat="server" Height="250px" Width="330px" AutoGenerateRows="false"  GridLines="None" OnItemCommand="DetailsView1_ItemCommand" OnItemUpdating="DetailsView1_ItemUpdating" OnModeChanging="DetailsView1_ModeChanging" >
                <Fields>
                    <asp:TemplateField Visible="false">
                        <ItemTemplate>
                            <asp:Label  ID="lblcid" runat="server" Text='<%#Eval("cp_id") %>'></asp:Label>
                            <asp:Label  ID="lbluid" runat="server" Text='<%#Eval("u_id") %>'></asp:Label>
                            
                        </ItemTemplate>
                        <EditItemTemplate>
                            <asp:Label ID="lbluide" runat="server" Text='<%#Eval("u_id") %>'></asp:Label>
                        </EditItemTemplate>
                    </asp:TemplateField>

                    <asp:TemplateField>
                        <ItemTemplate>
                            <img src='<%#Eval("c_pic") %>' width="100" height="100" class="uppic"/>
                            <br />

                            <i class="fa fa-camera">
                            <input type="button" class="btnedit" value="Edit" /></i>
                            <asp:FileUpload ID="FileUpload1" CssClass="fileUp" runat="server" />
                              <asp:LinkButton ID="lnkupdate" runat="server" CssClass="btnup" CommandName="modify">Update</asp:LinkButton>
                        </ItemTemplate>
                        <EditItemTemplate>
                            <img src='<%#Eval("c_pic") %>' width="100" height="100"/>
                        </EditItemTemplate>
                    </asp:TemplateField>
                    
                         </Fields>
            </asp:DetailsView>
            </div>
           <div class=" col-md-9 col-lg-9 "> 
           <asp:DetailsView ID="DetailsView2" runat="server" Height="250px" Width="330px" AutoGenerateRows="false" GridLines="None" AutoGenerateEditButton="true" OnItemUpdating="DetailsView2_ItemUpdating" OnModeChanging="DetailsView2_ModeChanging" >
                <Fields>
                    <asp:TemplateField Visible="false">
                        <ItemTemplate>
                            <asp:Label  ID="lblcid" runat="server" Text='<%#Eval("cp_id") %>'></asp:Label>
                            <asp:Label  ID="lbluid" runat="server" Text='<%#Eval("u_id") %>'></asp:Label>
                            
                        </ItemTemplate>
                        <EditItemTemplate>
                            <asp:Label ID="lbluide" runat="server" Text='<%#Eval("u_id") %>'></asp:Label>
                        </EditItemTemplate>
                    </asp:TemplateField>
                      <asp:TemplateField HeaderText="Company Name">
                        <ItemTemplate>
                            <asp:Label  ID="lblname" runat="server" Text='<%#Eval("c_name") %>'></asp:Label>
                        </ItemTemplate>
                        <EditItemTemplate>
                            <asp:Label ID="lblnamee" runat="server" Text='<%#Eval("c_name") %>'></asp:Label>
                        </EditItemTemplate>
                    </asp:TemplateField>

                     <asp:TemplateField HeaderText="Address">
                        <ItemTemplate>
                            <asp:Label  ID="lbladd" runat="server" Text='<%#Eval("address") %>'></asp:Label>
                        </ItemTemplate>
                        <EditItemTemplate>
                            <asp:Textbox  ID="txtaddr" runat="server" Text='<%#Eval("address") %>'></asp:Textbox>
                        </EditItemTemplate>
                    </asp:TemplateField>


                    <asp:TemplateField HeaderText="State">
                        <ItemTemplate>
                            <asp:Label ID="lblsname" runat="server" Text='<%#Eval("s_name") %>'></asp:Label>
                        </ItemTemplate>
                        <EditItemTemplate>
                            <asp:DropDownList ID="ddlstate" runat="server" Width="250" DataSourceID="SqlDataSource1" DataTextField="s_name" DataValueField="s_id"></asp:DropDownList>
                            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:con %>" SelectCommand="SELECT * FROM [tbl_State]"></asp:SqlDataSource>
                        </EditItemTemplate>
                    </asp:TemplateField>
                    
                    <asp:TemplateField HeaderText="city">
                        <ItemTemplate>
                            <asp:Label ID="lblcity" runat="server" Text='<%#Eval("ct_name") %>'></asp:Label>
                        </ItemTemplate>
                        <EditItemTemplate>
                            <asp:DropDownList ID="ddlcity" runat="server" Width="250" DataSourceID="SqlDataSource2" DataTextField="c_name" DataValueField="c_id" ></asp:DropDownList>
                            <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:con %>" SelectCommand="SELECT * FROM [tbl_City]"></asp:SqlDataSource>
                        </EditItemTemplate>
                    </asp:TemplateField>
                    
                    <asp:TemplateField HeaderText="Location">
                        <ItemTemplate>
                            <asp:Label ID="lblloc" runat="server" Text='<%#Eval("l_name") %>'></asp:Label>
                        </ItemTemplate>
                        <EditItemTemplate>
                            <asp:DropDownList ID="ddlloc" runat="server" Width="250" DataSourceID="SqlDataSource3" DataTextField="l_name" DataValueField="l_id"></asp:DropDownList>
                            <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:con %>" SelectCommand="SELECT * FROM [tbl_Location]"></asp:SqlDataSource>
                        </EditItemTemplate>
                    </asp:TemplateField>
                
                        <asp:TemplateField HeaderText="Date of Start">
                        <ItemTemplate>
                            <asp:Label ID="llbgen" runat="server" Text='<%#Eval("dos") %>'></asp:Label>
                        </ItemTemplate>
                        <EditItemTemplate>
                            <asp:Label ID="lblgenn" runat="server" Text='<%#Eval("dos") %>'></asp:Label>
                        </EditItemTemplate>
                    </asp:TemplateField>
                        
                </Fields>
              </asp:DetailsView>
           </div>
              </div>
            </div>
                 <div class="panel-footer">
                       
                        <span class="pull-right">
                             </span>
                    </div>
              </div>
            </div>
          </div>
           </div>
</asp:Content>

