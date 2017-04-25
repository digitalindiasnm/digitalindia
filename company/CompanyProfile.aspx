<%@ Page Title="" Language="C#" MasterPageFile="~/company/company.master" AutoEventWireup="true" CodeFile="CompanyProfile.aspx.cs" Inherits="company_CompanyProfile" %>

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
                label.innerText = "Enter proper Company Name ";
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
                 label.innerText = "Enter proper Date of Starting";
             }
             else {
                 label.innerText = "";
             }
        }
        function pass3(c) {
            var label = document.getElementById('<%=Label4.ClientID%>');
             if (c.value == "") {
                 label.innerText = "Enter proper Licence No";
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
              <div class="page-in-bread"><span>Company Related Information: </span><a href="../Default.aspx" title="Logut">Logout</a> </div></div>                
            </div>
        </div>
      </div>
  
    <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
    <div class="container marg30">
        <div class="col-lg-6">
       
        <br /><br />
   <h3 style="text-align:center">Company Information </h3>
      <table>
          <tr>
               <td class="auto-style7">
                   <asp:Label ID="lblname" Width="110px" runat="server" Text="Company Name"></asp:Label>
               </td>
               <td>
                   <asp:TextBox ID="txtcname" Width="300px" CssClass="form-control" runat="server"  onblur="pass(this)"></asp:TextBox> 
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
                   <asp:Label ID="lbladdr" Width="30px" runat="server" Text="Address"></asp:Label>
               </td>
               <td>
                   <asp:TextBox ID="txtaddr" Width="300px" CssClass="form-control" runat="server" TextMode="MultiLine" onblur="pass1(this)"></asp:TextBox> 
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
                   <asp:Label ID="lblcity" Width="30px" runat="server" Text="City"></asp:Label>
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
                   <asp:Label ID="lbldos" Width="85px" runat="server" Text="Date of Start" ></asp:Label>
               </td>
               <td>
                   <ajaxToolkit:CalendarExtender ID="CalendarExtender1" runat="server" TargetControlID="txtdos"/>
                   <asp:TextBox ID="txtdos" Width="300px" CssClass="form-control" runat="server"></asp:TextBox>
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
                   <asp:Label ID="lblno" Width="85px" runat="server" Text="Licence No : "></asp:Label>
               </td>
               <td>
                   <asp:TextBox ID="txtlicenceno" Width="300px" CssClass="form-control" runat="server" onblur="pass3(this)"></asp:TextBox>
               </td>
               <td>
                   <asp:Label ID="Label4" runat="server" Text="" ForeColor="Red" Width="350px"></asp:Label>
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

