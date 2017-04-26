<%@ Page Title="" Language="C#" MasterPageFile="~/user/user.master" AutoEventWireup="true" CodeFile="forms.aspx.cs" Inherits="user_forms" %>

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
              <div class="page-in-bread"><span>Income Tax Form Download from here: </span><a href="../Default.aspx" title="Logut">Logout</a> </div></div>                
            </div>
        </div>
      </div>
  <div class="container marg50">
        <div class="row">
          <div class="col-lg-9">
            <div class="classic-blog">
              <div class="cl-blog-img">
                
            <div class="marg50">
              <div class="row">
             <div class="col-md-6 col-sm-9 col-xs-9">
               <div>
                   <asp:DropDownList ID="ddlform" runat="server" AutoPostBack="true" OnSelectedIndexChanged="ddlform_SelectedIndexChanged">
                       <asp:ListItem Value="Income Tax Returns">Income Tax Returns</asp:ListItem>
                       <asp:ListItem Value="Wealth Tax Returns">Wealth Tax Returns</asp:ListItem>
                       <asp:ListItem Value="Income Tax Forms">Income Tax Forms</asp:ListItem>
                       <asp:ListItem Value="Challans">Challans</asp:ListItem>
                       <asp:ListItem Value="Other Forms">Other Forms</asp:ListItem>
                   </asp:DropDownList>
                 <%--  <asp:TextBox ID="txtsearch" runat="server" OnTextChanged="txtsearch_TextChanged" AutoPostBack="true"></asp:TextBox>--%>
               </div>
                    <div class="panel panel-default">
                        <div class="panel-heading" >
                           <h4 style="color:maroon;text-align:center">Income Tax Form </h4>
                            </div>
                     <div class="panel-body"> 
                          <%--    <div class="col-md-12">--%>
                                  <div class="table-responsive">
                                <table class="table table-striped table-bordered table-hovers" style="text-align:center">
  
   <%-- <table style="vertical-align:central">--%>
     
 <asp:GridView ID="GridView1" runat="server" AllowPaging="true" PageSize="10" OnPageIndexChanging="GridView1_PageIndexChanging" OnRowCommand="GridView1_RowCommand1" AutoGenerateColumns="False" CellPadding="4" ForeColor="#333333" GridLines="None" >
        <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
        <Columns>
            <asp:TemplateField Visible="false">
                <ItemTemplate>
                    <asp:Label ID="lblgid" runat="server" Text='<%#Eval("gov_id") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
             <asp:TemplateField HeaderText="Form No.">
                <ItemTemplate>
                    <asp:Label ID="lblfno" runat="server" Text='<%#Eval("form_no")%>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
             <asp:TemplateField Visible="false">
                <ItemTemplate>
                    <asp:Label ID="lblpath" runat="server" Text='<%#Eval("path") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
             <asp:TemplateField>
                <ItemTemplate>
                    <asp:Label ID="lblcat" runat="server" Text='<%#Eval("catagory") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>

             <asp:TemplateField HeaderText="Downloading">
                <ItemTemplate>
                   <asp:LinkButton ID="lnkpath" runat="server" CommandName="pdf" CommandArgument='<%#((GridViewRow)Container).RowIndex %>' Text="Download" ></asp:LinkButton>
                </ItemTemplate>
            </asp:TemplateField>
        </Columns>
        <EditRowStyle BackColor="#999999" />
        <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
        <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
        <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
        <SortedAscendingCellStyle BackColor="#E9E7E2" />
        <SortedAscendingHeaderStyle BackColor="#506C8C" />
        <SortedDescendingCellStyle BackColor="#FFFDF8" />
        <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
    </asp:GridView>
          
 
                                    </table>
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

