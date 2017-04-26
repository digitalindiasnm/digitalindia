<%@ Page Title="" Language="C#" MasterPageFile="~/user/user.master" AutoEventWireup="true" CodeFile="viewCompany.aspx.cs" Inherits="user_viewCompany" %>

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
              <div class="page-in-bread"><span>View Company Details </span><a href="../Default.aspx" title="Logut">Logout</a> </div></div>                
            </div>
        </div>
      </div>
  
    <div>
        <h3 style="text-align:center">Company Details</h3>
    </div>
     <asp:DataList ID="DataList1" runat="server" OnItemCommand="DataList1_ItemCommand1">
        <ItemTemplate>
        <div class="container marg50">
        <div class="row">
          <div class="col-lg-9">
            <div class="row">
              <div class="medium-blog">
                <div class="col-lg-5">
                  <div class="cl-blog-img">
                      <asp:Label ID="lblreqid" runat="server" Text='<%#Eval("req_id")%>' Visible="false"></asp:Label>                 
                      <asp:Label ID="lbluid" runat="server" Text='<%#Eval("u_id")%>' Visible="false"></asp:Label> 
                      <img src='<%#Eval("c_pic") %>' alt=""></div>
                </div>
                <div class="col-lg-7">
                  <div class="med-blog-naz">
                    <div class="cl-blog-type"><i class="icon-pencil"></i></div>
                    <div class="cl-blog-name"><asp:Label ID="lblcname" runat="server" Text='<%#Eval("c_name")%>'></asp:Label></div>
                   
                    <div class="cl-blog-text"><asp:Label ID="lbltitle" runat="server" Text='<%#Eval("job_title")%>'></asp:Label></div>
                  </div>
                  <div class="cl-blog-read"><asp:LinkButton ID="lnkread" runat="server" CommandName="More" >Read More...</asp:LinkButton></div>
                </div>
                <div class="cl-blog-line"></div>
              </div>
             
                           
            </div>
          
          </div> 
                   
        </div>
      </div>
            </ItemTemplate>
    
    </asp:DataList>
</asp:Content>

