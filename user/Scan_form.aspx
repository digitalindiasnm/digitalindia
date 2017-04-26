
<%@ Page Title="" Language="C#" MasterPageFile="~/user/user.master" AutoEventWireup="true" CodeFile="Scan_form.aspx.cs" Inherits="user_Scan_form" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <script type="text/javascript">
        function pass(c) {
            var label = document.getElementById('<%=Label2.ClientID%>');
            if (c.value == "") {
                label.innerText = "Enter proper form No.";
            }
            else {
                label.innerText = "";
            }
        }
    </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="body" Runat="Server">
      <div class="page-in">
        <div class="container">
          <div class="row">
            <div class="col-lg-6 pull-left">
              <div class="page-in-name"><h1>WelCome :&nbsp;&nbsp;<span><asp:Label ID="lbluname" runat="server" Text=""></asp:Label></span></h1></div>
            </div>
            <div class="col-lg-6 pull-right">
              <div class="page-in-bread"><span>After Filled Income Tax Form upload here: </span><a href="../Default.aspx" title="Logut">Logout</a> </div></div>                
            </div>
        </div>
      </div>
  
        <div class="container marg50">
        <div class="row">
          <div class="col-lg-9">
            <div class="classic-blog">
              <div class="cl-blog-img">
                    
            <div class="marg50">
              

                <div class="container marg30">
        <div class="col-lg-6">
              <div class="container marg30">
        <div class="col-lg-6">
             <div class="col-lg-6">
          
                  <div class="container">
                <div class="col-lg-10">
               
                <div class="col-lg-10">
                        <div class="panel panel-default">
                            <div class="panel-heading">
                              Upload your filled form
                                </div>
                  
                           
                         <div class="panel-body">
               <table>
           <tr>
               <td class="auto-style10">
                   <asp:Label ID="lblform" Width="116px" runat="server" Text="Form No."></asp:Label>
               </td>
               <td>
                    <asp:TextBox ID="txtform" Width="200px" CssClass="form-control" runat="server" onblur="pass(this)"></asp:TextBox> 
               </td>
               <td>
                    <asp:Label ID="Label2" runat="server" Text="" ForeColor="Red" Width="350px"></asp:Label>
               </td>
           </tr>
          <tr>
              <td>
                  &nbsp;
              </td>
          </tr>
           <tr>
               <td class="auto-style10">
                   <asp:Label ID="lblfile" Width="116px" runat="server" Text="Upload Form"></asp:Label>
               </td>
               <td>
                   <asp:FileUpload ID="file" runat="server" />
                   </td>
                <td>
              <span> <asp:Label ID="lblerr" runat="server" Text="" ForeColor="Red" Width="350px"></asp:Label></span>    
                   <asp:RegularExpressionValidator ID="RegularExpressionValidator1"
                        runat="server" 
                       ForeColor="Red"
                       ErrorMessage="pdf file only(.pdf) " 
                       ControlToValidate="file"
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
           </div>
     </div>


            </div>
              </div>
              
              
            </div>
            
            
            
            
          </div> 
           <div class="col-lg-3">
            <%--<div class="promo-text-blog">Search Company</div>--%>
               <%--<asp:TextBox ID="txtdes" class="blog-search" runat="server" placeholder="Designation"></asp:TextBox><br />
              <asp:TextBox ID="txtskill" class="blog-search" runat="server" placeholder="Skill"></asp:TextBox><br />
            
              <asp:Button ID="btnsearch" CssClass ="btn btn-violet" runat="server" Text="Search" OnClick="btnsearch_Click" />--%>
            <div class="promo-text-blog">Events</div>
            <div class="text-widget"><div style="background-color: #ffffff">
           
              <marquee behavior="scroll" direction="up" width="500" align="left" onmouseover="this.stop();" onmouseout="this.start();">
                <ul>
                <asp:DataList ID="DataList2" runat="server" RepeatDirection="Vertical" OnItemCommand="DataList2_ItemCommand" >
                <ItemTemplate>
                    <table>
                        <tr>
                            <td><asp:Label ID="Label1" text='<%#Eval("e_id") %>' clss="page-in-name" runat="server" Visible="false"></asp:Label></td>
                        </tr>
                        <tr>
                            <td>*</td>
                            <td><asp:LinkButton ID="LinkButton1"  runat="server" text='<%#Eval("title") %>' CommandName="view">  </asp:LinkButton></td>
                        </tr>

                     </table>
                </ItemTemplate>
               </asp:DataList> 
                </ul>
              </marquee></div> </div>

            
        
            <div class="promo-text-blog">Category</div>
            <div class="classic-blog">
              <div class="cl-blog-video">
                   <video width="320" height="240" controls>
                     <source src="assets/images/Digital India Logo Unveiling Video.mp4" type="video/mp4"/>
                         Your browser does not support the video tag.
                    </video> 
 
              <div class="cl-blog-naz">
                <div class="cl-blog-type"><i class="icon-video"></i></div>
                <div class="cl-blog-name"><a href="#">Digital India Logo Unveiling Short Film </a></div>
            
              <div class="cl-blog-line"></div>
            </div>
            
                
            
        </div>
      </div>
 </div>
      </div>
      </div>

       

</asp:Content>

