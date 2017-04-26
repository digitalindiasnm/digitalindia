<%@ Page Title="" Language="C#" MasterPageFile="~/user/user.master" AutoEventWireup="true" CodeFile="eventshow.aspx.cs" Inherits="user_eventshow" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="left" Runat="Server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="body" Runat="Server">
    <div class="page-in">
        <div class="container">
          <div class="row">
            <div class="col-lg-6 pull-left">
              <div class="page-in-name"><h1>WelCome :&nbsp;&nbsp;<span><asp:Label ID="lbluname" runat="server" Text=""></asp:Label></span></h1></div>
            </div>
            <div class="col-lg-6 pull-right">
              <div class="page-in-bread"><span>View Event Details </span><a href="../Default.aspx" title="Logut">Logout</a> </div></div>                
            </div>
        </div>
      </div>
  
    <div>
        <h3 style="text-align:center">Event</h3>
    </div>
     <asp:DataList ID="DataList1" runat="server" >
        <ItemTemplate>
        <div class="container marg50">
        <div class="row">
          <div class="col-lg-9">
            <div class="row">
              <div class="medium-blog">
                <div class="col-lg-5">
                  <div class="cl-blog-img">
                      <asp:Label ID="lble_id" runat="server" Text='<%#Eval("e_id")%>' Visible="false"></asp:Label>                 
                      <asp:Label ID="lbluid" runat="server" Text='<%#Eval("u_id")%>' Visible="false"></asp:Label> 
                        <asp:Label ID="lblap_id" runat="server" Text='<%#Eval("ap_id")%>' Visible="false"></asp:Label> 
                      <img src='<%#Eval("pic") %>' alt=""></div>
                </div>
                <div class="col-lg-7">
                  <div class="med-blog-naz">
                    <div class="cl-blog-type"><i class="icon-pencil"></i></div>
                    <div class="cl-blog-name"><asp:Label ID="lblname" runat="server" Text='<%#Eval("title")%>'></asp:Label></div>
                   
                    <div class="cl-blog-text"><asp:Label ID="lbltitle" runat="server" Text='<%#Eval("e_desc")%>'></asp:Label></div>

                    <div class="cl-blog-text"><asp:Label ID="lbldate" runat="server" Text='<%#Eval("date")%>'></asp:Label></div>

                    <div class="cl-blog-text"><asp:Label ID="lbltime" runat="server" Text='<%#Eval("time")%>'></asp:Label></div>

                    <div class="cl-blog-text"><asp:Label ID="lbladdr" runat="server" Text='<%#Eval("address")%>'></asp:Label></div>
                                      
                  </div>
                 
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

