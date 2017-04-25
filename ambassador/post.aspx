<%@ Page Title="" Language="C#" MasterPageFile="~/ambassador/ambassador.master" AutoEventWireup="true" CodeFile="post.aspx.cs" Inherits="ambassador_post" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style1 {
            width: 725px;
        }
    </style>
    <script type="text/javascript">
        function pass(c) {
            var label = document.getElementById('<%=lblecmt.ClientID%>');
            if (c.value == "") {
                label.innerText = "Enter proper Comment";
            }
            else {
                label.innerText = "";
            }
        }
    </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
     <div class="page-in">
        <div class="container">
          <div class="row">
            <div class="col-lg-6 pull-left">
              <div class="page-in-name"><h1>WelCome :&nbsp;&nbsp;<span><asp:Label ID="lbluname" runat="server" Text=""></asp:Label></span></h1></div>
            </div>
            <div class="col-lg-6 pull-right">
              <div class="page-in-bread"><span> Information of ambassador Profile </span><a href="../Default.aspx" title="Logut">Logout</a> </div></div>                
            </div>
        </div>
      </div>
  


    <div class="container marg30">
        <div class="col-lg-6">
             <div class="col-lg-6">
          
                  <div class="container">
                <div class="col-lg-10">
               
                <div class="col-lg-10">
                        <div class="panel panel-default">

                            <div class="panel-heading">
                                Ambassador Profile 
                                </div>
                         <div class="panel-body">
               

                             <table>
           <tr>
               <td class="auto-style7">
                   <asp:Label ID="lblp" Width="116px" runat="server" Text="Upload Picture"></asp:Label>
               </td>
               <td>
                   <asp:FileUpload ID="fpic" runat="server" Width="200px" /> 
               </td>
               <td>
              <span> <asp:Label ID="lblerr" runat="server" Text="" ForeColor="Red" Width="350px"></asp:Label></span>    
                   <asp:RegularExpressionValidator ID="RegularExpressionValidator1"
                        runat="server" 
                       ForeColor="Red"
                       ErrorMessage="Images file only(.jpg, .bmp, .png, .gif, .jpeg) " 
                       ControlToValidate="fpic"
                       ValidationExpression="^(([a-zA-Z:)|(\\{2}\w+)\$?(\\{\w[\w].*))(.jpg|.JPG|.gif|.GIF|.jpeg|.JPEG|.bmp|.BMP|.png|.PNG)$"></asp:RegularExpressionValidator>
               </td>
           </tr>
          <tr>
              <td>
                  &nbsp;
              </td>
          </tr>
           <tr>
               <td class="auto-style10">
                   <asp:Label ID="lblv" Width="116px" runat="server" Text="Upload Video"></asp:Label>
               </td>
               <td>
                   <asp:FileUpload ID="fvid" runat="server" />
               </td>
                <td>
              <span> <asp:Label ID="Label1" runat="server" Text="" ForeColor="Red" Width="350px"></asp:Label></span>    
                   <asp:RegularExpressionValidator ID="RegularExpressionValidator2"
                        runat="server" 
                       ForeColor="Red"
                       ErrorMessage="Images file only(.wmv,.mp4) " 
                       ControlToValidate="fvid"
                       ValidationExpression="^(([a-zA-Z:)|(\\{2}\w+)\$?(\\{\w[\w].*))(.wmv|.mp4)$"></asp:RegularExpressionValidator>
               </td>
               
                          </tr>
                      <tr>
                          <td>
                              &nbsp;
                          </td>
                      </tr>
                      <tr>
                          <td class="auto-style10">
                              <asp:Label ID="lblcmt" Width="116px" runat="server" Text="Comments"></asp:Label>
                          </td>
                          <td>
                              <asp:TextBox ID="txtcmt" Width="200px" TextMode="MultiLine" runat="server" onblur="pass(this)"></asp:TextBox>
                          </td>
                          <td>
                               <asp:Label ID="lblecmt" runat="server" Text="" ForeColor="Red" Width="350px"></asp:Label>

                          </td>
                      </tr>
           <tr>
               <td>
                     <asp:Button ID="btnsubmit" text="submit" runat="server" class="btn btn-primary" OnClick="btnsubmit_Click"></asp:Button>
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

   
</asp:Content>

