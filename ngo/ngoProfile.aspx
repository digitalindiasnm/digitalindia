<%@ Page Title="" Language="C#" MasterPageFile="~/ngo/ngo.master" AutoEventWireup="true" CodeFile="ngoProfile.aspx.cs" Inherits="ngo_ngoProfile" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
     <style type="text/css">
      .TabContainer
      {
         font: bold 0.75em Verdana;
         width: 60em;
         margin-top: 1.5em;
         padding-top: 2em;
      }
      .TabItemInactive
      {
         border-top: 1px solid white;
         border-left: 1px solid white;
         border-right: 1px solid #aaaaaa;
         border-bottom: none;      
         background-color:A;  
         text-align: center; 
         text-decoration: none;
         text-decoration-color:darkred;
         padding: 0.75em 0.25em 0 0.25em;
      }

      .TabItemInactive:hover
      {
         background: #808080;
      }   
      .TabItemActive
      {     
         border-top: 1px solid white;
         border-left: none;
         border-right: 1px solid #aaaaaa;
         border-bottom: none;
         text-decoration: none;
         background-color: #bbbbbb;  
         text-align: center;   
         padding: 0.75em 0.25em 0 0.25em;
      }

      .ContentPanel
      {
         background-color: #bbbbbb; 
         padding: 10px 10px 10px 10px;
         width: 60em;
         font: 0.8em Verdana;
      }


          .auto-style7 {
              width: 140px;
          }


          .auto-style10 {
              width: 90px;
          }


          .auto-style16 {
              width: 88px;
          }
          .auto-style17 {
              width: 120px;
          }
          .auto-style18 {
              width: 80px;
          }


  </style>
    <script type="text/javascript">
        function pass(c) {
            var label = document.getElementById('<%=Label1.ClientID%>');
            if (c.value == "") {
                label.innerText = "Enter proper NGO Name ";
            }
            else {
                label.innerText = "";
            }
        }
        function pass1(c) {
            var label = document.getElementById('<%=Label2.ClientID%>');
            if (c.value == "") {
                label.innerText = "Enter proper Address";
            }
            else {
                label.innerText = "";
            }
        }
        function pass2(c) {
            var label = document.getElementById('<%=Label3.ClientID%>');
            if (c.value == "") {
                label.innerText = "Enter proper Description";
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
              <div class="page-in-bread"><span> Personal Information of NGO: </span><a href="../Default.aspx" title="Logut">Logout</a> </div></div>                
            </div>
        </div>
      </div>
  
       <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
    <div class="container marg30">
        <div class="col-lg-6">
 
                      
       
        <br /><br />
          <h3>Personal Information of NGO</h3>
            <br />
      <table>
          <tr>
               <td class="auto-style7">
                   <asp:Label ID="lblngoname" Width="110px" runat="server" Text="NGO Name"></asp:Label>
               </td>
               <td>
                   <asp:TextBox ID="txtngoname" Width="300px" CssClass="form-control" runat="server" onblur="pass(this)"></asp:TextBox> 
               </td>
              <td>
                  <asp:Label ID="Label1" runat="server" Text="" ForeColor="Red" Width="350px"></asp:Label>
              </td>
           </tr>
           <tr>
               <td class="auto-style7">
                   &nbsp;
               </td>
           </tr>
           <tr>
               <td class="auto-style7">
                   <asp:Label ID="lblngoaddr" Width="30px" runat="server" Text="Address"></asp:Label>
               </td>
               <td>
                   <asp:TextBox ID="txtngoaddr" Width="300px" CssClass="form-control" runat="server" TextMode="MultiLine" onblur="pass1(this)"></asp:TextBox> 
               </td>
               <td>
                   <asp:Label ID="Label2" runat="server" Text="" ForeColor="Red" Width="350px"></asp:Label>
               </td>
           </tr>
           <tr>
               <td class="auto-style7">
                   &nbsp;
               </td>
           </tr>
           <tr>
               <td class="auto-style7">
                   <asp:Label ID="lblstate" Width="30px" runat="server" Text="State"></asp:Label>
               </td>
               <td>
                   <asp:DropDownList ID="ddlstate" Width="300px" runat="server" AutoPostBack="True" OnSelectedIndexChanged="ddlstate_SelectedIndexChanged"></asp:DropDownList>
               </td>
           </tr>
             <tr>
               <td class="auto-style7">
                   &nbsp;
               </td>
           </tr>
           <tr>
               <td class="auto-style7">
                   <asp:Label ID="lblcity" Width="30px" runat="server" Text="City" ></asp:Label>
               </td>
               <td>
                   <asp:UpdatePanel ID="UpdatePanel1" runat="server" ChildrenAsTriggers="true">
                       <ContentTemplate>
                           <asp:DropDownList ID="ddlcity" Width="300px" AutoPostBack="true" runat="server" OnSelectedIndexChanged="ddlcity_SelectedIndexChanged"></asp:DropDownList>
                       </ContentTemplate>
                      <Triggers>
                          <asp:AsyncPostBackTrigger ControlID="ddlstate" EventName="SelectedIndexChanged" />
                      </Triggers>
                   </asp:UpdatePanel>
                   
               </td>
           </tr>
             <tr>
               <td class="auto-style7">
                   &nbsp;
               </td>
           </tr>
           <tr>
               <td class="auto-style7">
                   <asp:Label ID="lbllocation" Width="30px" runat="server" Text="Location"></asp:Label>
               </td>
               <td>
                   <asp:UpdatePanel ID="UpdatePanel2" runat="server">
                       <ContentTemplate>
                             <asp:DropDownList ID="ddllocation" Width="300px" runat="server"></asp:DropDownList>
                       </ContentTemplate>
                       <Triggers>
                           <asp:AsyncPostBackTrigger ControlID="ddlcity" EventName="SelectedIndexChanged" />
                       </Triggers>
                   </asp:UpdatePanel>
                 
               </td>
           </tr>
             <tr>
               <td class="auto-style7">
                   &nbsp;
               </td>
           </tr>     
           <tr>
               <td class="auto-style7">
                   <asp:Label ID="lbldesc" Width="30px" runat="server" Text="Description"></asp:Label>
               </td>
               <td>
                   <asp:TextBox ID="txtdesc" Width="300px" CssClass="form-control" runat="server" TextMode="MultiLine" onblur="pass2(this)"></asp:TextBox> 
               </td>
               <td>
                   <asp:Label ID="Label3" runat="server" Text="" ForeColor="Red" Width="350px"></asp:Label>
               </td>
           </tr>
           <tr>
               <td class="auto-style7">
                   &nbsp;
               </td>
           </tr>
           <tr>
               <td class="auto-style7">
                   <asp:Label ID="lblpic" Width="85px" runat="server" Text="Profile Image"></asp:Label>
               </td>
               <td>
                   <asp:FileUpload ID="fup" runat="server" />
               </td>
               <td>
                <asp:Label ID="lblerr" runat="server" Text="" ForeColor="Red" Width="350px"></asp:Label>   
                   <asp:RegularExpressionValidator ID="RegularExpressionValidator1"
                        runat="server" 
                       ForeColor="Red"
                       ErrorMessage="Images file only(.jpg, .bmp, .png, .gif, .jpeg) " 
                       ControlToValidate="fup"
                       ValidationExpression="^(([a-zA-Z:)|(\\{2}\w+)\$?(\\{\w[\w].*))(.jpg|.JPG|.gif|.GIF|.jpeg|.JPEG|.bmp|.BMP|.png|.PNG)$"></asp:RegularExpressionValidator>
               </td>
           </tr>
             <tr>
               <td class="auto-style7">
                   &nbsp;
               </td>
           </tr>
          <tr>
              <td>
                  <asp:Button ID="btnsubmit" text="Submit" runat="server" class="btn btn-primary" OnClick="btnsubmit_Click"></asp:Button>
              </td>
          </tr>
       </table>
              </div></div>
</asp:Content>

