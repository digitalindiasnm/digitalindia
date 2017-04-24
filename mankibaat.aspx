<%@ Page Title="" Language="C#" MasterPageFile="~/index.master" AutoEventWireup="true" CodeFile="mankiBaat.aspx.cs" Inherits="mankiBaat" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="body" Runat="Server">
        <div class="container marg100">
        <div>
            <asp:DataList ID="DataList1" runat="server" RepeatDirection="Horizontal" RepeatColumns="3" >
                <ItemTemplate>
                    <table border="0">
                <tr> 
                    <td>
                         <asp:Label ID="lblvid" runat="server" Text='<%#Eval("vi_id")%>' Visible="false"></asp:Label>    
                       <asp:Label ID="lbltitle" runat="server" Text='<%#Eval("vi_title") %>'></asp:Label>
                    </td>
                </tr>
                <tr> 
                    <td>
                        <video id="video" height="250" width="360" controls="controls">
                            <source src="<%#Eval("video") %>"/>
                        </video>
                 </td>
                </tr>
                   <tr>
                       <td>
                           <asp:Label ID="lbldesc" runat="server" Text='<%#Eval("vi_desc") %>'></asp:Label>
                       </td>
                   </tr>
                        
                                       
            </table>
                </ItemTemplate>
            </asp:DataList>
            </div>
           </div>

</asp:Content>

