<%@ Page Title="" Language="C#" MasterPageFile="~/user/user.master" AutoEventWireup="true" CodeFile="apply.aspx.cs" Inherits="user_apply" %>

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
              <div class="page-in-bread"><span>You are Upload Images And Video For Clean India here: </span><a href="../Default.aspx" title="Logut">Logout</a> </div></div>                
            </div>
        </div>
      </div>
  

                <div class="marg50">
              <div class="container marg30">
        <div class="col-lg-6">
             <div class="col-lg-6">
          
                  <div class="container">
                <div class="col-lg-10">
               
                <div class="col-lg-10">
                        <div class="panel panel-default">

                            <div class="panel-heading">
                                Images & video related to Clean India
                                </div>
                  
                           
                         <div class="panel-body">
                               
           

               <table>
                  
           <tr>
               <td class="auto-style10">
                   <asp:Label ID="lblp" Width="116px" runat="server" Text="Upload Resume"></asp:Label>
               </td>
               <td>
                   <asp:FileUpload ID="fresume" runat="server" /> 
               </td>
                <td>
              <span> <asp:Label ID="lblerr" runat="server" Text="" ForeColor="Red" Width="350px"></asp:Label></span>    
                   <asp:RegularExpressionValidator ID="RegularExpressionValidator1"
                        runat="server" 
                       ForeColor="Red"
                       ErrorMessage="pdf file only(.pdf) " 
                       ControlToValidate="fresume"
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
                            <asp:Label  ID="Label2" runat="server" Text="Job Description:"></asp:Label> 
                       </td>  
                       <td>
                                 <asp:DataList ID="DataList1" runat="server">
                       <ItemTemplate>
                   
                                  <asp:Label  ID="lblreqid" runat="server" Text='<%#Eval("req_id") %>' Visible="false"></asp:Label>
                                  <asp:Label ID="Label1" runat="server" Text='<%#Eval("job_title") %>'></asp:Label>
                       </ItemTemplate>
                   </asp:DataList>
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
                    </div>  
    
       
  
</asp:Content>

