<%@ Page Title="" Language="C#" MasterPageFile="~/user/user.master" AutoEventWireup="true" CodeFile="CleanIndiaImages.aspx.cs" Inherits="user_CleanIndiaImages" %>

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
              <div class="page-in-bread"><span> Upload Images And Video For Clean India here: </span><a href="../Default.aspx" title="Logut">Logout</a> </div></div>                
            </div>
        </div>
      </div>
    
   <asp:DataList ID="DataList1" runat="server" RepeatDirection="Horizontal" RepeatColumns="4">
                <ItemTemplate>
                    <table>       
                     <tr>
                        <td>
                                 <asp:Label ID="lbluidd" runat="server" Text='<%#Eval("u_id") %>' Visible="false"></asp:Label>
                                   <asp:Label ID="lblupidd" runat="server" Text='<%#Eval("uplo_id") %>' Visible="false"></asp:Label>
                            
                                <asp:Image ID="imgclean" runat="server" ImageUrl='<%#Eval("uplo_pic") %>'  Width="250" Height="200"/>
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
</asp:Content>

