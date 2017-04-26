<%@ Page Title="" Language="C#" MasterPageFile="~/user/user.master" AutoEventWireup="true" CodeFile="women.aspx.cs" Inherits="user_women" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
     <script src="../assets/js/jquery-1.20.2.min.js"></script>
    <script >

        $(document).ready(function () {
            $(".btnsubmit").click(function () {

                alert("enrolled successfully ")
            })
        })
        function pass1(c) {
            var label = document.getElementById('<%=Label2.ClientID%>');
            if (c.value == "") {
                label.innerText = "Enter proper Complain";
            }
            else {
                label.innerText = "";
            }
        }

    </script>
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
              <div class="page-in-bread"><span>Any Complain related to Womens: </span><a href="../Default.aspx" title="Logut">Logout</a> </div></div>                
            </div>
        </div>
      </div>
   <div class="container marg50">
        <div class="row">
          <div class="col-lg-9">
            <div class="classic-blog">
              <div class="cl-blog-img">
                    <div class="promo-block">
              <div class="promo-text">Digital India</div>
              <div class="center-line"></div>
            </div>
            <div class="marg50">
              
                <div class="container marg30"> 
        <div class="col-lg-6">
      
                  <div class="container">
                <div class="col-lg-10">
               
                <div class="col-lg-10">
                        <div class="panel panel-default">

                            <div class="panel-heading">
                                Queries related to womens
                                </div>
                  
                           
                         <div class="panel-body">
                               
                                       <br />
                           
            <table>
                <tr>
                    <td>
                        <asp:Label ID="lblcmp" runat="server" Text="Complain"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="txtcmp" TextMode="MultiLine" runat="server" onblur="pass1(this)"></asp:TextBox>
                    </td>
                    <td>
                        <asp:Label ID="Label2" runat="server" Text="" ForeColor="Red"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td>
                        &nbsp;
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="lblngo" runat="server" Text="NGO Name"></asp:Label>
                    </td>
                    <td>
                        <asp:DropDownList ID="ddlngo" runat="server" Width="180px"></asp:DropDownList>
                    <%-- <asp:SqlDataSource runat="server" ID="SqlDataSource1" ConnectionString='<%$ ConnectionStrings:con %>' SelectCommand="SELECT * FROM [ngo_profile]"></asp:SqlDataSource>--%>
                    </td>
                </tr>
                <tr>
                    <td> &nbsp;</td>
                </tr>
                <tr>
                    <td>
                        <asp:Button ID="btnsubmit" runat="server" Text="Submit" OnClick="btnsubmit_Click" CssClass="btnsubmit"  />
                    </td>
                </tr>
            </table>
  </div>
                  
                                </div>
                               
                           
                            </div>
                </div>

            </div>
          </div>
     </div>



            </div>
              </div>
              
              
            </div>
            
            
            
            
          </div> 
           <div class="col-lg-3">
            <%--<div class="promo-text-blog">Search Company</div>--%>
               <%--<asp:TextBox ID="txtdes" class="blog-search" runat="server" placeholder="Designation"></asp:TextBox><br />
              <asp:TextBox ID="txtskill" class="blog-search" runat="server" placeholder="Skill"></asp:TextBox><br />
            
              <asp:Button ID="btnsearch" CssClass ="btn btn-violet" runat="server" Text="Search" OnClick="btnsearch_Click" />--%>
            <div class="promo-text-blog">Events</div>
            <div class="text-widget"><div style="background-color: #ffffff">
           
              <marquee behavior="scroll" direction="up" width="500" align="left" onmouseover="this.stop();" onmouseout="this.start();">
                <ul>
                <asp:DataList ID="DataList2" runat="server" RepeatDirection="Vertical" OnItemCommand="DataList2_ItemCommand" >
                <ItemTemplate>
                    <table>
                        <tr>
                            <td><asp:Label ID="Label1" text='<%#Eval("e_id") %>' clss="page-in-name" runat="server" Visible="false"></asp:Label></td>
                        </tr>
                        <tr>
                            <td>*</td>
                            <td><asp:LinkButton ID="LinkButton1"  runat="server" text='<%#Eval("title") %>' CommandName="view">  </asp:LinkButton></td>
                        </tr>

                     </table>
                </ItemTemplate>
               </asp:DataList> 
                </ul>
              </marquee></div> </div>

            
        
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
 </div>
      </div>
      </div>
    

     
    
          
    
</asp:Content>

