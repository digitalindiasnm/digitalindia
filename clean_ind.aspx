<%@ Page Title="" Language="C#" MasterPageFile="~/user/user.master" AutoEventWireup="true" CodeFile="clean_ind.aspx.cs" Inherits="user_clean_ind" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <script src="../assets/js/jquery-1.20.2.min.js"></script>
    <script>
        $(document).ready(function () {
            $(".cmt").hide();
            $(".btncmt").hide();
           
            $(".tbncomment").click(function () {
                $(".cmt").show();
                $(".btncmt").show();
               
                $(".tbncomment").hide();
            })
            $(".btncmt").click(function () {
                $(".cmt").hide();
                $(".btncmt").hide();
                $(".tbncomment").show();
            })


            $(document).ready(function () {
                $(".btncmt").click(function () {

                    alert("enrolled successfully ")
                })
            })
        })

        $(document).ready(function () {
            $(".cmtt").hide();
            $(".btncmtt").hide();

            $(".tbncommentt").click(function () {
                $(".cmtt").show();
                $(".btncmtt").show();

                $(".tbncommentt").hide();
            })
            $(".btncmtt").click(function () {
                $(".cmtt").hide();
                $(".btncmtt").hide();
                $(".tbncommentt").show();
            })


            $(document).ready(function () {
                $(".btncmtt").click(function () {

                    alert("enrolled successfully ")
                })
            })
        })
    </script>
    <script type="text/javascript" language="javascript">
        function disableBackButton() {
            window.history.forward();
        }
        setTimeout("disableBackButton()", 10);
        //disableBackButton();
        //window.onload = disableBackButton();
        //window.onpageshow = function (evt) { if (evt.persisted) disableBackButton() }
        window.onunload = function () { null }

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
              <div class="page-in-bread"><span> Upload Images And Video For Clean India here: </span><a href="../Default.aspx" title="Logut">Logout</a> </div></div>                
            </div>
        </div>
      </div>
     <%--<div class="container marg100">
        <div class="row">--%>
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
              

                <asp:DataList ID="DataList1" runat="server" RepeatDirection="Horizontal" OnItemCommand="DataList1_ItemCommand" RepeatColumns="3">
                <ItemTemplate>
                    <table>       
                     <tr>
                         <td>
                                    <asp:Label ID="lblupid" runat="server" Text='<%#Eval("u_id") %>' Visible="false"></asp:Label>
                                   <asp:Label ID="lbluplid" runat="server" Text='<%#Eval("uplo_id") %>' Visible="false"></asp:Label>
                               <%--  <asp:Label ID="lbluid" runat="server" Text='<%#Eval("u_id") %>' Visible="false"></asp:Label>--%>
                                <video id="video" height="250" width="360" controls="controls">
                                <source src='<%#Eval("uplo_video") %>'/>
                                </video> 
                           
                            </td>
                        </tr>
                        <br />
                        <tr>
                            <td>
                                <input type="button" id="btncmt" value="Comment" class="tbncomment" width="150"/>
                            </td>
                           
                        </tr>
                        <tr>
                              <td>
                                              &nbsp;
                              </td>
  
                        </tr>
                        <br />
                        <tr>
                            <td>
                                <asp:textbox TextMode="MultiLine" ID="txtcmt" runat="server" CssClass="cmt" Width="200"></asp:textbox>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                              &nbsp;
                                          </td>
                        </tr>
                        <tr>
                            <td>
                                <asp:Button ID="btnsubmit" runat="server" Text="Sumbit" CssClass="btncmt" CommandName="cmtvideo" Width="200"/>
                            </td>
                            <br />
                        </tr>
                        <br />
                    </table>
                    
                </ItemTemplate>
            </asp:DataList>
            
     






            </div>
              </div>
              
              
            </div>
            
            
            
            
          </div> 
          <div class="col-lg-3">
            <div class="promo-text-blog">Search Company</div>
               <asp:TextBox ID="txtdes" class="blog-search" runat="server" placeholder="Designation"></asp:TextBox><br />
              <asp:TextBox ID="txtskill" class="blog-search" runat="server" placeholder="Skill"></asp:TextBox><br />
            
              <asp:Button ID="btnsearch" CssClass ="btn btn-violet" runat="server" Text="Search" OnClick="btnsearch_Click" />
            <div class="promo-text-blog">Events</div>
            <div class="text-widget"><div style="background-color: #CCCCFF">
           
              <marquee behavior="scroll" direction="up" align="left" onmouseover="this.stop();" onmouseout="this.start();">
                <ul>
                <asp:DataList ID="DataList2" runat="server" RepeatDirection="Vertical" OnItemCommand="DataList2_ItemCommand" >
                <ItemTemplate>
                    <table>
                        <tr>
                            <td><asp:Label ID="Label1" text='<%#Eval("e_id") %>' runat="server" Visible="false"></asp:Label></td>
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
            
            

   
       
</asp:Content>

