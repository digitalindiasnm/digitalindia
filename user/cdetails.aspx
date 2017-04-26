<%@ Page Title="" Language="C#" MasterPageFile="~/user/user.master" AutoEventWireup="true" CodeFile="cdetails.aspx.cs" Inherits="user_cdetails" %>

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
              <div class="page-in-bread"><span>Company Information </span><a href="../Default.aspx" title="Logut">Logout</a> </div></div>                
            </div>
        </div>
      </div>

  <div class="container marg50">
        <div class="row">
          <div class="col-lg-9">

        <div class="container marg30">
        <div class="col-lg-6">
            <asp:DetailsView ID="DetailsView1" runat="server" Height="250px" Width="330px" AutoGenerateRows="false" GridLines="None" OnItemCommand="DetailsView1_ItemCommand" >
                <Fields>
                    <asp:TemplateField Visible="false">
                        <ItemTemplate>
                            <asp:Label  ID="lblreqid" runat="server" Text='<%#Eval("req_id") %>'></asp:Label>
                            <asp:Label  ID="lblcpid" runat="server" Text='<%#Eval("cp_id") %>'></asp:Label>
                        </ItemTemplate>
                        
                    </asp:TemplateField>

                    <asp:TemplateField>
                        <ItemTemplate>
                            <img src='<%#Eval("c_pic") %>' width="100" height="100" class="uppic" width="250"/>
                          </ItemTemplate>
                   </asp:TemplateField>
                    
                    <asp:TemplateField HeaderText="Name:" ControlStyle-Width="250">
                        <ItemTemplate>
                            <asp:Label  ID="lblname" runat="server" Text='<%#Eval("c_name") %>' Width="250"></asp:Label>
                        </ItemTemplate>
                        <EditItemTemplate>
                            <asp:Label ID="lblnamee" runat="server" Text='<%#Eval("c_name") %>'></asp:Label>
                        </EditItemTemplate>
                    </asp:TemplateField>

                    <asp:TemplateField HeaderText="Job Title" ControlStyle-Width="250">
                        <ItemTemplate>
                            <asp:Label ID="lbljtitle" runat="server" Text='<%#Eval("job_title") %>' Width="250"></asp:Label>
                        </ItemTemplate>
                        <EditItemTemplate>
                            <asp:Label ID="lbljbtitle" runat="server" Text='<%#Eval("job_title") %>'></asp:Label>
                        </EditItemTemplate>
                        </asp:TemplateField>

                    <asp:TemplateField HeaderText="Qualification" ControlStyle-Width="250">
                        <ItemTemplate>
                            <asp:Label ID="lblquali" runat="server" Text='<%#Eval("quali") %>' Width="250"></asp:Label>
                        </ItemTemplate>
                        <EditItemTemplate>
                            <asp:Label ID="lblqualif" runat="server" Text='<%#Eval("quali") %>'></asp:Label>
                        </EditItemTemplate>
                        </asp:TemplateField>

                    <asp:TemplateField HeaderText="Experience" ControlStyle-Width="250">
                        <ItemTemplate>
                            <asp:Label ID="lblexp" runat="server" Text='<%#Eval("exper") %>' Width="250"></asp:Label>
                        </ItemTemplate>
                        <EditItemTemplate>
                            <asp:Label ID="lblexper" runat="server" Text='<%#Eval("exper") %>'></asp:Label>
                        </EditItemTemplate>
                    </asp:TemplateField>


                    <asp:TemplateField HeaderText="job Description" ControlStyle-Width="250">
                        <ItemTemplate>
                            <asp:Label ID="lbljdes" runat="server" Text='<%#Eval("j_desc") %>' Width="250"></asp:Label>
                        </ItemTemplate>
                        <EditItemTemplate>
                            <asp:Label ID="lbljdesc" runat="server" Text='<%#Eval("j_desc") %>'></asp:Label>
                        </EditItemTemplate>
                    </asp:TemplateField>

                    <asp:TemplateField HeaderText="Number of Vacancy" ControlStyle-Width="250">
                        <ItemTemplate>
                            <asp:Label ID="lblvan" runat="server" Text='<%#Eval("no_vacan") %>' Width="250"></asp:Label>
                        </ItemTemplate>
                        <EditItemTemplate>
                            <asp:Label ID="lblvacan" runat="server" Text='<%#Eval("no_vacan") %>'></asp:Label>
                        </EditItemTemplate>
                    </asp:TemplateField>

                    <asp:TemplateField HeaderText="Salary packages:" ControlStyle-Width="250">
                        <ItemTemplate>
                            <asp:Label ID="lblspack" runat="server" Text='<%#Eval("sal_package") %>' Width="250"></asp:Label>
                        </ItemTemplate>
                        <EditItemTemplate>
                            <asp:Label ID="lblspackg" runat="server" Text='<%#Eval("sal_package") %>'></asp:Label>
                        </EditItemTemplate>
                    </asp:TemplateField>

                    <asp:TemplateField>
                        <ItemTemplate>
                            <asp:LinkButton ID="lnkapply" runat="server"  CommandName="apply" >APPLY</asp:LinkButton>
                        </ItemTemplate>
                        <EditItemTemplate>
                           <!-- <asp:Label ID="lblspackg" runat="server" ></asp:Label>-->
                        </EditItemTemplate>
                    </asp:TemplateField>

                    
                    
                </Fields>
            </asp:DetailsView>

          
    <%--<div class="col-lg-3">
            <div class="promo-text-blog">Search</div>
              <asp:TextBox ID="txtdes" class="blog-search" runat="server" placeholder="Designation">
              </asp:TextBox><asp:TextBox ID="txtskill" class="blog-search" runat="server" placeholder="Skill"></asp:TextBox>
            
              <asp:Button ID="btnsearch" CssClass ="btn btn-violet" runat="server" Text="Button" OnClick="btnsearch_Click" />
            <div class="promo-text-blog">What is digital India</div>
            <p class="text-widget"><div style="background-color: #CCCCFF">
             <marquee direction="up">Digital India is a campaign launched by the Government of India to ensure that Government services are made available to citizens electronically by improving online infrastructure and by increasing Internet connectivity or by making the country digitally empowered in the field of technology.</marquee></div> </p>
            <div class="promo-text-blog">Category</div>
            <div class="classic-blog">
              <div class="cl-blog-video">
                   <video width="320" height="240" controls>
                     <source src="assets/images/Digital India Logo Unveiling Video.mp4" type="video/mp4"/>
                         Your browser does not support the video tag.
                    </video> 
 
              <div class="cl-blog-naz">
                <div class="cl-blog-type"><i class="icon-video"></i></div>
                <div class="cl-blog-name"><a href="#">Digital India Logo Unveiling Short Film </a></div>
            
              <div class="cl-blog-line"></div>
            </div>
            
                
            
        </div>
      </div>
 </div>--%>

    </div>
      </div>
</asp:Content>

