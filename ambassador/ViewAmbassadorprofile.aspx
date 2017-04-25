<%@ Page Title="" Language="C#" MasterPageFile="~/ambassador/ambassador.master" AutoEventWireup="true" CodeFile="ViewAmbassadorprofile.aspx.cs" Inherits="ambassador_ViewAmbassadorprofile" %>

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
              <div class="page-in-bread"><span> Information of ambassador Profile </span><a href="../Default.aspx" title="Logut">Logout</a> </div></div>                
            </div>
        </div>
      </div>
  
      <div class="container marg30">
        <div class="col-lg-6">
            <asp:DetailsView ID="DetailsView1" runat="server" Height="250px" Width="330px" AutoGenerateRows="false" GridLines="None" BorderWidth="3px" OnModeChanging="DetailsView1_ModeChanging" AutoGenerateEditButton="True" OnItemUpdating="DetailsView1_ItemUpdating"  >
                <Fields>
                    <asp:TemplateField Visible="false">
                        <ItemTemplate>
                            <asp:Label  ID="lblcid" runat="server" Text='<%#Eval("ap_id") %>'></asp:Label>
                           <asp:Label  ID="lbluid" runat="server" Text='<%#Eval("u_id") %>'></asp:Label>
                     

                        </ItemTemplate>
                        <EditItemTemplate>
                           <asp:Label ID="lbluide" runat="server" Text='<%#Eval("u_id") %>'></asp:Label>
                        </EditItemTemplate>
                    </asp:TemplateField>

                    <asp:TemplateField>
                        <ItemTemplate>
                            <img src='<%#Eval("a_pic") %>' width="100" height="100" class="uppic"/>
                            <input type="button" class="btnedit" value="Edit"/>
                            <asp:FileUpload ID="FileUpload1" CssClass="fileUp" runat="server" />
                              <asp:LinkButton ID="lnkupdate" runat="server" CssClass="btnup" CommandName="modify">Update</asp:LinkButton>
                        </ItemTemplate>
                        <EditItemTemplate>
                            <img src='<%#Eval("a_pic") %>' width="100" height="100"/>
                        </EditItemTemplate>
                    </asp:TemplateField>
                    
                    <asp:TemplateField HeaderText="Ambassador Name">
                        <ItemTemplate>
                            <asp:Label  ID="lblname" runat="server" Text='<%#Eval("a_name") %>'></asp:Label>
                        </ItemTemplate>
                        <EditItemTemplate>
                            <asp:Label ID="lblnamee" runat="server" Text='<%#Eval("a_name") %>'></asp:Label>
                        </EditItemTemplate>
                    </asp:TemplateField>

                     <asp:TemplateField HeaderText="NGO Name">
                        <ItemTemplate>
                            <asp:Label ID="lblngo" runat="server" Text='<%#Eval("ngo_name") %>'></asp:Label>
                        </ItemTemplate>
                        <EditItemTemplate>
                            <asp:DropDownList ID="ddlloc" runat="server" DataSourceID="SqlDataSource1" DataTextField="ngo_name" DataValueField="np_id"></asp:DropDownList>
                            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:con %>" SelectCommand="SELECT * FROM [ngo_profile]"></asp:SqlDataSource>
                           
                        </EditItemTemplate>
                    </asp:TemplateField>



                    

                      
                 
                        
                </Fields>
            </asp:DetailsView>

            </div>
         </div>
</asp:Content>

