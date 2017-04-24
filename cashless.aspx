<%@ Page Title="" Language="C#" MasterPageFile="~/index.master" AutoEventWireup="true" CodeFile="cashless.aspx.cs" Inherits="cashless" %>

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
              <div class="page-in-bread"><span>E-Wallet Applications Downlord </span><a href="Default.aspx" title="Logut">Logout</a> </div></div>                
            </div>
        </div>
      </div>
    <div class="container marg30">
        <div class="col-lg-6">
            <h3 style="text-align:center"> E-Wallet Applications</h3>
           
                      
                      
             <asp:DataList ID="DataList1" runat="server" OnItemCommand="DataList1_ItemCommand1">
        <ItemTemplate>
        <div class="container marg50">
        <div class="row">
          <div class="col-lg-9">
            <div class="row">
              <div class="medium-blog">
                <div class="col-lg-5">
                  <div class="cl-blog-img">
                      <asp:Label ID="lblappid" runat="server" Text='<%#Eval("app_id")%>' Visible="false"></asp:Label>                 
                     
                      <img src='<%#Eval("app_icon") %>' class="img-circle" style="height:250px ; width:250px" alt=""></div>
                </div
                <div class="col-lg-7">
                  <div class="med-blog-naz">
                    <div class="cl-blog-type"><i class="icon-pencil"></i></div>
                    <div class="cl-blog-name"><asp:Label ID="lblcname" runat="server" Text='<%#Eval("app_name")%>'></asp:Label></div>
                   
                    <div class="cl-blog-text"><asp:Label ID="lblapk" Visible="false" runat="server" Text='<%#Eval("app_apk")%>'></asp:Label></div>
                    
                       <div class="cl-blog-text"><asp:Label ID="Label1" runat="server" Text='<%#Eval(" app_desc")%>'></asp:Label></div>
                     
                  </div>
                  <div class="cl-blog-read"><asp:LinkButton ID="lnkread" runat="server"  CommandName="apk" CommandArgument='<%#((DataListItem)Container).ItemIndex %>'>Download..</asp:LinkButton></div>
                </div>
                <div class="cl-blog-line"></div>
              </div>
             
                           
            </div>
          
          </div> 
                   
        </div>
      </div>
            </ItemTemplate>
    
    </asp:DataList>

            </div>
         </div>
  
</asp:Content>

