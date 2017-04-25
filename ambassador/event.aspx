<%@ Page Title="" Language="C#" MasterPageFile="~/ambassador/ambassador.master" AutoEventWireup="true" CodeFile="event.aspx.cs" Inherits="ambassador_event" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
     <script src="../assets/js/jquery-1.20.2.min.js"></script>
    <script type="text/javascript">

        $(document).ready(function () {
            $(".btnsubmit").click(function () {

                alert("enrolled successfully ")
            })
        })
        function pass(c) {
            var label = document.getElementById('<%=Label1.ClientID%>');
            if (c.value == "") {
                label.innerText = "Enter proper Address";
            }
            else {
                label.innerText = "";
            }
        }
       
         function pass2(c) {
             var label = document.getElementById('<%=Label2.ClientID%>');
            if (c.value == "") {
                label.innerText = "Enter proper Title";
            }
            else {
                label.innerText = "";
            }
        }
        function pass3(c) {
            var label = document.getElementById('<%=Label3.ClientID%>');
            if (c.value == "") {
                label.innerText = "Enter proper Description";
            }
            else {
                label.innerText = "";
            }
        }
        function pass4(c) {
            var label = document.getElementById('<%=Label4.ClientID%>');
             if (c.value == "") {
                 label.innerText = "Enter proper Date";
             }
             else {
                 label.innerText = "";
             }
        }
        function pass5(c) {
            var label = document.getElementById('<%=Label5.ClientID%>');
             if (c.value == "") {
                 label.innerText = "Enter proper Time";
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
              <div class="page-in-bread"><span> Information of Events </span><a href="../Default.aspx" title="Logut">Logout</a> </div></div>                
            </div>
        </div>
      </div>
      <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
  
    <div class="container marg30">
        <div class="col-lg-6">
             <div class="col-lg-6">
          
                  <div class="container">
                <div class="col-lg-10">
               
                <div class="col-lg-10">
                        <div class="panel panel-default">

                            <div class="panel-heading">
                                About Event 
                                </div>
                         <div class="panel-body">
               

                             <table>
           <tr>
               <td class="auto-style7">
                   <asp:Label ID="lbltitle" Width="85px" runat="server" Text="Event Title"></asp:Label>
               </td>
               <td>
                   <asp:TextBox ID="txttitle" Width="200px" runat="server" CssClass="form-control" onblur="pass2(this)"></asp:TextBox>
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
               <td class="auto-style7">
                   <asp:Label ID="lbldesc" Width="85px" runat="server" Text="Event Description"></asp:Label>
               </td>
               <td>
                   <asp:TextBox ID="txtdesc" Width="200px" TextMode="MultiLine" runat="server" CssClass="form-control" onblur="pass3(this)"></asp:TextBox>
               </td>
                <td>
                    <asp:Label ID="Label3" runat="server" Text="" ForeColor="Red"></asp:Label>
               </td>
           </tr>
           <tr>
                  <td>
                      &nbsp;
                  </td>
           </tr>
           <tr>
                          <td class="auto-style7">
                              <asp:Label ID="lbldate" Width="85px" runat="server" Text="Date"></asp:Label>
                          </td>
                          <td>
                            
                               <asp:TextBox ID="txtdate" Width="200px" TextMode="Date" runat="server" CssClass="form-control"></asp:TextBox>

                          </td>
               <td>
                    <asp:Label ID="Label4" runat="server" Text="" ForeColor="Red"></asp:Label> 
               </td>
                          
                      </tr>
            <tr>
                  <td>
                      &nbsp;
                  </td>
           </tr>
           <tr>
                          <td class="auto-style7">
                              <asp:Label ID="lbltime" Width="85px" runat="server" Text="Timing"></asp:Label>
                          </td>
                          <td>
                              <asp:TextBox ID="txttime" Width="200px" TextMode="Time" runat="server" CssClass="form-control"></asp:TextBox>
                          </td>
                          <td>
                               <asp:Label ID="Label5" runat="server" Text="" ForeColor="Red"></asp:Label> 
                          </td>
            </tr>
            <tr>
                  <td>
                      &nbsp;
                  </td>
           </tr>
           <tr>
                          <td class="auto-style7">
                              <asp:Label ID="lbladdr" Width="85px" runat="server" Text="Address"></asp:Label>
                          </td>
                          <td>
                              <asp:TextBox ID="txtaddr" Width="200px" runat="server" TextMode="MultiLine" CssClass="form-control" onblur="pass(this)"></asp:TextBox>
                          </td>
                          <td>
                              <asp:Label ID="Label1" runat="server" Text="" ForeColor="Red"></asp:Label> 
                          </td>
            </tr>
                                 <tr>
                  <td>
                      &nbsp;
                  </td>
           </tr>
           <tr>
                          <td class="auto-style7">
                              <asp:Label ID="lblpic" Width="85px" runat="server" Text="Poster"></asp:Label>
                          </td>
                          <td>
                              <asp:FileUpload ID="fpos" runat="server" />
                          </td>
                          <td>
                              <span> <asp:Label ID="lblerr" runat="server" Text="" ForeColor="Red" Width="350px"></asp:Label></span>    
                   <asp:RegularExpressionValidator ID="RegularExpressionValidator1"
                        runat="server" 
                       ForeColor="Red"
                       ErrorMessage="Images file only(.jpg,.bmp, .png, .gif , .jpeg) " 
                       ControlToValidate="fpos"
                       ValidationExpression="^(([a-zA-Z:)|(\\{2}\w+)\$?(\\{\w[\w].*))(.jpg|.JPG|.bmp|.BMP|.PNG|.png|.GIF|.gif|.JPEG|.jpeg)$"></asp:RegularExpressionValidator>
              
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

