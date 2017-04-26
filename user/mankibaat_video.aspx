<%@ Page Title="" Language="C#" MasterPageFile="~/user/user.master" AutoEventWireup="true" CodeFile="mankibaat_video.aspx.cs" Inherits="user_mankibaat_video" %>

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
              <div class="page-in-bread"><span> Man Ki Baat: </span><a href="../Default.aspx" title="Logut">Logout</a> </div></div>                
            </div>
        </div>
      </div>
      <asp:DataList ID="DataList1" runat="server" RepeatDirection="Horizontal" RepeatColumns="3" >
                <ItemTemplate>
    
    
       <table>       
                     <tr>
                         <td>
                              <%--  <asp:Label ID="lblupid" runat="server" Text='<%#Eval("u_id") %>' Visible="false"></asp:Label>--%>
                                   <asp:Label ID="lbluplid" runat="server" Text='<%#Eval("vi_id") %>' Visible="false"></asp:Label>
                               <%--  <asp:Label ID="lbluid" runat="server" Text='<%#Eval("u_id") %>' Visible="false"></asp:Label>--%>
                                <video src='<%#Eval("video")%>'  height="250" width="360" controls="controls" />
                            
                            
                            </td>
                        </tr>
                        <br />
                        <tr>
                            <td>
                              <%--  <video src="../videos/Amitabh%20Bachchan%20as%20'Jadugar'-%20Swachh%20Bharat%20Mission.mp4" controls="controls" />--%>
                            </td>
                           
                        </tr>
                        <%--<tr>
                              <td>
                                              &nbsp;
                              </td>
  
                        </tr>--%>
                        <br />
                       <%-- <tr>
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
                        </tr>--%>
                        <br />
                    </table>
    </ItemTemplate>
            </asp:DataList>
            
</asp:Content>

