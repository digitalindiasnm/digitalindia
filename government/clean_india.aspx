<%@ Page Title="" Language="C#" MasterPageFile="~/government/gov.master" AutoEventWireup="true" CodeFile="clean_india.aspx.cs" Inherits="government_clean_india" %>

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

        })

        $(document).ready(function () {
            $(".btncmt").click(function () {

                alert("successfully Comment inserted ")
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
              <div class="page-in-bread"><span> Upload Images And Video For Clean India here: </span><a href="../Default.aspx" title="Logut">Logout</a> </div></div>                
            </div>
        </div>
      </div>
    
            <asp:DataList ID="DataList1" runat="server" RepeatDirection="Horizontal"  OnItemCommand="DataList1_ItemCommand" RepeatColumns="3">
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
                           <%-- <td>
                                <asp:Label ID="lblcmmt" runat="server" Text='<%#Eval("comment") %>'></asp:Label>
                            </td>--%>
                        </tr>
                        <tr>
                              <td>
                                              &nbsp;
                              </td>
  
                        </tr>
                        <br />
                       <%-- <tr>
                            <td>
                                <asp:textbox TextMode="MultiLine" ID="txtcmt" runat="server" CssClass="cmt" Width="200"></asp:textbox>
                            </td>
                        </tr>--%>
                        <%--<tr>
                            <td>
                                              &nbsp;
                                          </td>
                        </tr>--%>
                       <%-- <tr>
                            <td>
                                <asp:Button ID="btnsubmit" runat="server" Text="Sumbit" CssClass="btncmt" CommandName="cmtvideo" OnClick="btnsubmit_Click" Width="200"/>
                            </td>
                            <br />
                        </tr>--%>
                        <br />
                    </table>
                    <br />
                    <br />

                    <hr />
                    <br />
                    <table>
                          <tr>
                            <td>
                                <asp:Image ID="imgclean" runat="server" ImageUrl='<%#Eval("uplo_pic") %>'  Width="300" Height="250"/>
                        </video> 
                            </td>
                        </tr>
                        <tr>
                            <td>
                                  &nbsp;
                            </td>
                        </tr>
                        <tr>
                            <td>
                              <%--  <asp:Label ID="lblCmt" runat="server" Text='<%#Eval("comment") %>'></asp:Label>--%>
                            </td>
                        </tr>
                        <%--<tr>
                           <td>
                                  &nbsp;
                            </td>
                        </tr>--%>
                        <%--<tr>
                            <td>
                                <asp:TextBox ID="TextBox2" runat="server" Width="200"  TextMode="MultiLine"></asp:TextBox>
                            </td>
                        </tr>--%>
                        <%--<tr>
                            <td>

                              &nbsp;
                                </td>
                        </tr>--%>
                        <%--<tr>
                            <td>
                                <asp:Button ID="Button4" runat="server" Text="Button"  Width="200"/>
                            </td>
                        </tr>--%>
                        
                    </table>
                </ItemTemplate>
            </asp:DataList>
            
     <%--<asp:DataList ID="dtvideo" runat="server">
                    <ItemTemplate>
                        <table>
                            <tr>
                                <td>
                                  
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <asp:Button ID="btnvcomment" runat="server" class="btn btn-success btn-lg" Text="Button" />
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <asp:TextBox ID="txtvcomment" runat="server" class="blog-search" placeholder="Enter Your Comment..." ></asp:TextBox>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <asp:Button ID="btnvsubmit" runat="server" class="btn btn-primary btn-lg" Text="Button" />
                                </td>
                            </tr>
                        </table>
                    </ItemTemplate>
                </asp:DataList>
         <%--   <div class="promo-block">
              <div class="promo-text">Clean India Video</div><br />
                  <video width="320" height="240" controls="controls">
                                   <source src="../videos/Wildlife.wmv"/>
                                  </video>
                   <img src="../images/005.jpg" /> 
              <div class="center-line"></div>
                           
            </div>
            <div class="marg50">
                <asp:DataList ID="dtimage" runat="server">
                <ItemTemplate>
                     <table>
                        
                            <tr>
                                <td>
                                 
                                    <asp:Image ID="Image1"  src="../images/"  runat="server" class="cl-blog-img"/>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <asp:Button ID="btnicomment" runat="server" class="btn btn-success btn-lg" Text="Button" />
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <asp:TextBox ID="txticomment" runat="server" class="blog-search" placeholder="Enter Your Comment..."></asp:TextBox>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <asp:Button ID="btnisubmit" runat="server" class="btn btn-primary btn-lg" Text="Button" />
                                </td>
                            </tr>
                        </table>
                </ItemTemplate>
                </asp:DataList>
            </div>--%>
          
    
</asp:Content>

