<%@ Page Title="" Language="C#" MasterPageFile="~/ambassador/ambassador.master" AutoEventWireup="true" CodeFile="ambassadorProfile.aspx.cs" Inherits="ambassador_ambassadorProfile" %>

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
                label.innerText = "Enter proper Comment";
            }
            else {
                label.innerText = "";
            }
        }
    </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

         <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
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
                               
         
 
                
        <br /><br />

      <table>
          <tr>
               <td class="auto-style7">
                   <asp:Label ID="lblaname" Width="130px" runat="server" Text="Ambassador Name"></asp:Label>
               </td>
               <td>
                   <asp:TextBox ID="txtaname" Width="250px" CssClass="form-control" runat="server" onblur="pass(this)"></asp:TextBox> 
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
                  <asp:Label ID="lblngoname" Width="150px" runat="server" Text="NGO Name"></asp:Label>
              </td>
              <td>
                  <asp:DropDownList ID="ddlngoname" Width="250px" runat="server"></asp:DropDownList>
              </td>
          </tr>
          <tr>
              <td>
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
               
            </div>

                        </div>
                    </div>
                    </div>
                      </div>
                 </div>
            </div>
        </div>
    
</asp:Content>

