<%@ Page Title="" Language="C#" MasterPageFile="~/user/user.master" AutoEventWireup="true" CodeFile="viewuprofile.aspx.cs" Inherits="user_viewuprofile" %>

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
<asp:Content ID="Content2" ContentPlaceHolderID="body" Runat="Server">
      <div class="page-in">
        <div class="container">
          <div class="row">
            <div class="col-lg-6 pull-left">
              <div class="page-in-name"><h1>WelCome :&nbsp;&nbsp;<span><asp:Label ID="lbluname" runat="server" Text=""></asp:Label></span></h1></div>
            </div>
            <div class="col-lg-6 pull-right">
              <div class="page-in-bread"><span>You are Upload Images And Video For Clean India here: </span><a href="../Default.aspx" title="Logut">Logout</a> </div></div>                
            </div>
        </div>
      </div>
  

    
               <div class="container">
      <div class="row">
      <div class="col-md-5  toppad  pull-right col-md-offset-3 ">
           <A href="#" >Edit Profile</A>

        <A href="#" >Logout</A>
       <br>
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
            <asp:DetailsView ID="DetailsView1" runat="server" Height="250px" Width="330px" AutoGenerateRows="false" AutoGenerateEditButton="True" GridLines="None" OnItemCommand="DetailsView1_ItemCommand" OnItemUpdating="DetailsView1_ItemUpdating" OnModeChanging="DetailsView1_ModeChanging" >
                <Fields>
                    <asp:TemplateField Visible="false">
                        <ItemTemplate>
                            <asp:Label  ID="lbluid" runat="server" Text='<%#Eval("u_id") %>'></asp:Label>
                        </ItemTemplate>
                        <EditItemTemplate>
                            <asp:Label ID="lbluide" runat="server" Text='<%#Eval("u_id") %>'></asp:Label>
                        </EditItemTemplate>
                    </asp:TemplateField>
                              <asp:TemplateField>
                        
                        <ItemTemplate>
                           
                            <img src='<%#Eval("u_pic") %>' width="100" height="250" class="uppic"  />
                            <br />
                            <input type="button" class="btnedit" value="Edit"/>
                            <asp:FileUpload ID="fpic" CssClass="fileUp" runat="server" />
                         
                      <asp:LinkButton ID="lnkupdate" runat="server" CssClass="btnup" CommandName="modify">Update</asp:LinkButton>
                        </ItemTemplate>
                        <EditItemTemplate>
                            <img src='<%#Eval("u_pic") %>' width="100" height="100" />    
                              
                        </EditItemTemplate>
                    </asp:TemplateField>
                    
                    <asp:TemplateField HeaderText="Name">
                        <ItemTemplate>
                            <asp:Label  ID="lblname" runat="server" Text='<%#Eval("name") %>'></asp:Label>
                        </ItemTemplate>
                        <EditItemTemplate>
                            <asp:Label ID="lblnamee" runat="server" Text='<%#Eval("name") %>'></asp:Label>
                        </EditItemTemplate>
                    </asp:TemplateField>

                        <asp:TemplateField HeaderText="Email ID">
                         <ItemTemplate>
                            <asp:Label ID="lblemail" runat="server" Text='<%#Eval("email_id") %>'></asp:Label>
                        </ItemTemplate>
                        <EditItemTemplate>
                            <asp:Label ID="lblemaile" runat="server" Text='<%#Eval("email_id") %>'></asp:Label>
                        </EditItemTemplate>
                            </asp:TemplateField>

                    <asp:TemplateField HeaderText="Contact No.">
                        <ItemTemplate>
                            <asp:Label ID="lblcon" runat="server" Text='<%#Eval("contact_no") %>'></asp:Label>
                        </ItemTemplate>
                        <EditItemTemplate>
                            <asp:TextBox ID="txtcon" runat="server" Text='<%#Eval("contact_no") %>'></asp:TextBox>
                        </EditItemTemplate>
                        </asp:TemplateField>

                    <asp:TemplateField HeaderText="Address">
                        <ItemTemplate>
                            <asp:Label ID="lbladd" runat="server" Text='<%#Eval("address") %>'></asp:Label>
                        </ItemTemplate>
                        <EditItemTemplate>
                            <asp:TextBox ID="txtadd" runat="server" Text='<%#Eval("address") %>'></asp:TextBox>
                        </EditItemTemplate>
                        </asp:TemplateField>

                    <asp:TemplateField HeaderText="Gender">
                        <ItemTemplate>
                            <asp:Label ID="llbgen" runat="server" Text='<%#Eval("gender") %>'></asp:Label>
                        </ItemTemplate>
                        <EditItemTemplate>
                            <asp:Label ID="lblgenn" runat="server" Text='<%#Eval("gender") %>'></asp:Label>
                        </EditItemTemplate>
                    </asp:TemplateField>

                    <asp:TemplateField HeaderText="State">
                        <ItemTemplate>
                            <asp:Label ID="lblsname" runat="server" Text='<%#Eval("s_name") %>'></asp:Label>
                        </ItemTemplate>
                        <EditItemTemplate>
                            <asp:DropDownList ID="ddlstate" runat="server" DataSourceID="SqlDataSource1" DataTextField="s_name" DataValueField="s_id"></asp:DropDownList>
                            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:con %>" SelectCommand="SELECT * FROM [tbl_State]"></asp:SqlDataSource>
                        </EditItemTemplate>
                    </asp:TemplateField>
                    
                    <asp:TemplateField HeaderText="city">
                        <ItemTemplate>
                            <asp:Label ID="lblcity" runat="server" Text='<%#Eval("c_name") %>'></asp:Label>
                        </ItemTemplate>
                        <EditItemTemplate>
                            <asp:DropDownList ID="ddlcity" runat="server" DataSourceID="SqlDataSource2" DataTextField="c_name" DataValueField="c_id" ></asp:DropDownList>
                            <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:con %>" SelectCommand="SELECT * FROM [tbl_City]"></asp:SqlDataSource>
                        </EditItemTemplate>
                    </asp:TemplateField>
                    
                    <asp:TemplateField HeaderText="Location">
                        <ItemTemplate>
                            <asp:Label ID="lblloc" runat="server" Text='<%#Eval("l_name") %>'></asp:Label>
                        </ItemTemplate>
                        <EditItemTemplate>
                            <asp:DropDownList ID="ddlloc" runat="server" DataSourceID="SqlDataSource3" DataTextField="l_name" DataValueField="l_id"></asp:DropDownList>
                            <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:con %>" SelectCommand="SELECT * FROM [tbl_Location]"></asp:SqlDataSource>
                        </EditItemTemplate>
                    </asp:TemplateField>
                    
                </Fields>
            </asp:DetailsView>
             <%--  <a href="#" class="btn btn-primary">My Sales Performance</a>--%>
                 <%-- <a href="#" class="btn btn-primary">Team Sales Performance</a>--%>
                </div>
              </div>
            </div>
                 <div class="panel-footer">
                        <a data-original-title="Broadcast Message" data-toggle="tooltip" type="button" class="btn btn-sm btn-primary"><i class="glyphicon glyphicon-envelope"></i></a>
                        <span class="pull-right">
                            <a href="edit.html" data-original-title="Edit this user" data-toggle="tooltip" type="button" class="btn btn-sm btn-warning"><i class="glyphicon glyphicon-edit"></i></a>
                            <a data-original-title="Remove this user" data-toggle="tooltip" type="button" class="btn btn-sm btn-danger"><i class="glyphicon glyphicon-remove"></i></a>
                        </span>
                    </div>
            

                    </div>
                  </div>
                </div>
              </div>
       
            
          
</asp:Content>
