<%@ Page Title="" Language="C#" MasterPageFile="~/company/company.master" AutoEventWireup="true" CodeFile="Requirements.aspx.cs" Inherits="company_Requirements" %>

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
                 label.innerText = "Enter proper job title ";
             }
             else {
                 label.innerText = "";
             }
         }
         function pass1(c) {
             var label = document.getElementById('<%=Label2.ClientID%>');
            if (c.value == "") {
                label.innerText = "Enter proper Experience";
            }
            else {
                label.innerText = "";
            }
        }
        function pass2(c) {
            var label = document.getElementById('<%=Label3.ClientID%>');
            if (c.value == "") {
                label.innerText = "Enter proper job Description";
            }
            else {
                label.innerText = "";
            }
        }
        function pass3(c) {
            var label = document.getElementById('<%=Label4.ClientID%>');
            if (c.value == "") {
                label.innerText = "Enter proper vacanies";
            }
            else {
                label.innerText = "";
            }
        }
        function pass4(c) {
            var label = document.getElementById('<%=Label5.ClientID%>');
             if (c.value == "") {
                 label.innerText = "Enter proper packages";
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
              <div class="page-in-bread"><span> Company Requirement: </span><a href="../Default.aspx" title="Logut">Logout</a> </div></div>                
            </div>
        </div>
      </div>
  
    <div class="container marg30">
        <div class="col-lg-6">
            <div class="panel-heading">
               <h3> Company Requirement </h3>
            </div>
                  
       
        <br /><br />

      <table>
          <tr>
               <td class="auto-style7">
                   <asp:Label ID="lbljob" Width="110px" runat="server" Text="Job Title"></asp:Label>
               </td>
               <td>
                   <asp:TextBox ID="txtjob" Width="300px" CssClass="form-control" runat="server" onblur="pass(this)"></asp:TextBox> 
               </td>
              <<td>
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
                   <asp:Label ID="lblquali" Width="150px" runat="server" Text="Required Qualification"></asp:Label>
               </td>
               <td>
                   <%--<asp:TextBox ID="txtquali" Width="300px" CssClass="form-control" runat="server"></asp:TextBox> --%>
                   <asp:CheckBoxList ID="chkquali" runat="server" Height="23px" Width="300px" RepeatColumns="4" RepeatLayout="Table">
                       <asp:ListItem Text="SSC" Value="SSC"></asp:ListItem>
                       <asp:ListItem Text="BCA" Value="BCA"></asp:ListItem>
                       <asp:ListItem Text="MCA" Value="MCA"></asp:ListItem>
                       <asp:ListItem Text="BSC IT" Value="BSC IT"></asp:ListItem>
                       <asp:ListItem Text="Msc IT" Value="Msc IT"></asp:ListItem>
                        <asp:ListItem Text="DIPLOMA" Value="DIPLOMA"></asp:ListItem>
                       <asp:ListItem Text="CCNA" Value="CCNA"></asp:ListItem>
                       <asp:ListItem Text="Msc CA" Value="Msc CA"></asp:ListItem>
                       <asp:ListItem Text="HSC" Value="HSC"></asp:ListItem>
                       <asp:ListItem Text="MCA" Value="MCA"></asp:ListItem>
                       <asp:ListItem Text="Msc CA" Value="Msc CA"></asp:ListItem>
                       <asp:ListItem Text="BBA IT" Value="BBA IT"></asp:ListItem>
                       <asp:ListItem Text="MBA IT" Value="MBA IT"></asp:ListItem>
                   </asp:CheckBoxList>
               </td>
           </tr>
           <tr>
               <td class="auto-style7">
                   &nbsp;
               </td>
           </tr>
           <tr>
               <td class="auto-style7">
                   <asp:Label ID="lblexper" Width="30px" runat="server" Text="Experience"></asp:Label>
               </td>
               <td>
                   <asp:TextBox ID="txtexper" Width="300px" CssClass="form-control" runat="server" onblur="pass1(this)"></asp:TextBox>
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
                   <asp:Label ID="lbldesc" Width="30px" runat="server" Text="Job_Description"></asp:Label>
               </td>
               <td>
                   <asp:TextBox ID="txtdesc" CssClass="form-control" Width="300px" runat="server" TextMode="MultiLine" onblur="pass2(this)"></asp:TextBox>
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
                   <asp:Label ID="lblvacancy" Width="150px" runat="server" Text="Total Vacancies"></asp:Label>
               </td>
               <td>
                   <asp:TextBox ID="txtvacancy" CssClass="form-control" Width="300px" runat="server" onblur="pass3(this)"></asp:TextBox>
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
                   <asp:Label ID="lblsala" Width="150px" runat="server" Text="Salary Package" ></asp:Label>
               </td>
               <td>
                   <asp:TextBox ID="txtsala" Width="300px" CssClass="form-control" runat="server" onblur="pass4(this)"></asp:TextBox>
               </td>
               <td>
                   <asp:Label ID="Label5" runat="server" Text="" ForeColor="Red" Width="350px"></asp:Label>
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


 
 <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False"  GridLines="None" >
       
        <Columns>
            <asp:TemplateField Visible="false">
                <ItemTemplate>
                   <%-- <asp:Label ID="lblupid" runat="server" Text='<%#Eval("up_id") %>'></asp:Label>--%>
                    <asp:Label ID="lbluid" runat="server" Text='<%#Eval("u_id") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
          
             <asp:TemplateField HeaderText="Email ID" Visible="false">
                <ItemTemplate>
                    <asp:Label ID="lblemail" runat="server" Text='<%#Eval("email_id") %>'></asp:Label>
                </ItemTemplate>
                 
            </asp:TemplateField>
          
              
              
             
          
        </Columns>
    
    </asp:GridView>
         <br />
                                     
    
                                 
</asp:Content>

