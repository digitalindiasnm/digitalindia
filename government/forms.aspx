<%@ Page Title="" Language="C#" MasterPageFile="~/government/gov.master" AutoEventWireup="true" CodeFile="forms.aspx.cs" Inherits="government_forms" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="body" Runat="Server">

    <div class="page-in">
        <div class="container">
          <div class="row">
            <div class="col-lg-6 pull-left">
              <div class="page-in-name"><h1>WelCome :&nbsp;&nbsp;<span><asp:Label ID="lbluname" runat="server" Text=""></asp:Label></span></h1></div>
            </div>
            <div class="col-lg-6 pull-right">
              <div class="page-in-bread"><span> Upload Income Tax Form Here: </span><a href="../Default.aspx" title="Logut">Logout</a> </div></div>                
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
                             Upload Income Tax Form
                                </div>
                         <div class="panel-body">
               <table>
           <tr>
               <td class="auto-style10">
                   <asp:Label ID="lblformno" Width="116px" runat="server" Text="Form No"></asp:Label>
               </td>
               <td>
                   <asp:TextBox ID="txtformno" Width="200px" runat="server"></asp:TextBox>
               </td>
           </tr>
          <tr>
              <td>
                  &nbsp;
              </td>
          </tr>
                    <tr>
               <td class="auto-style10">
                   <asp:Label ID="Label1" Width="116px" runat="server" Text="Select Catagory"></asp:Label>
               </td>
               <td>
                   <asp:DropDownList ID="DropDownList1" runat="server">
                       <asp:ListItem Value="Income Tax Returns">Income Tax Returns</asp:ListItem>
                       <asp:ListItem Value="Wealth Tax Returns">Wealth Tax Returns</asp:ListItem>
                       <asp:ListItem Value="Income Tax Forms">Income Tax Forms</asp:ListItem>
                       <asp:ListItem Value="Challans">Challans</asp:ListItem>
                       <asp:ListItem Value="Other Forms">Other Forms</asp:ListItem>
                   </asp:DropDownList>
               </td>
           </tr>
          <tr>
              <td>
                  &nbsp;
              </td>
          </tr>
           <tr>
               <td class="auto-style10">
                   <asp:Label ID="lblform" Width="116px" runat="server" Text="Upload Form"></asp:Label>
               </td>
               <td>
                   <asp:FileUpload ID="fupform" runat="server" />
                     
               </td>
               <td>
                   <span> <asp:Label ID="lblerr" runat="server" Text="" ForeColor="Red" Width="350px"></asp:Label></span>    
                     <asp:RegularExpressionValidator ID="RegularExpressionValidator1"
                        runat="server" 
                       ForeColor="Red"
                       ErrorMessage="pdf file only(.pdf) " 
                       ControlToValidate="fupform"
                       ValidationExpression="^(([a-zA-Z:)|(\\{2}\w+)\$?(\\{\w[\w].*))(.pdf)$"></asp:RegularExpressionValidator>
               </td>
               
           </tr>
                      <tr>
                          <td>
                              &nbsp;
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

