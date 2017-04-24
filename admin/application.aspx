<%@ Page Title="" Language="C#" MasterPageFile="~/admin/admin.master" AutoEventWireup="true" CodeFile="application.aspx.cs" Inherits="admin_application" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="body" Runat="Server">
    <div id="page-wrapper" >
            <div id="page-inner">
             
    <div class="container marg30">
        <div class="col-lg-6">
             <div class="col-lg-6">
          
                  <div class="container">
                <div class="col-lg-8">
               
                <div class="col-lg-8">
                        <div class="panel panel-default">

                            <div class="panel-heading">
                               Upload Application 
                                </div>
                  
                           
                         <div class="panel-body">
                               
                           <form id="form">
                      <div class="col-md-12">
                         <b> <asp:Label ID="lblname" runat="server" Text="Enter Application Name"></asp:Label></b>
                        <div class="input-group">
                           <asp:TextBox id="txtName" runat="server" type="text" class="form-control" style="width:200px" placeholder="Enter Application Name" />
                    </div><br />
                         <div class="col-md-12">
                         <b> <asp:Label ID="lblicon" runat="server" Text=" Application Icon"></asp:Label></b>
                        <div class="input-group">
                                  <asp:FileUpload ID="fupicon" runat="server" style="width:200px"/>
                           
                    </div><br />
                        </div>
                    <div class="col-md-12">
                         <b> <asp:Label ID="lblupload" runat="server" Text="Upload Application" ></asp:Label></b>
                        <div class="input-group">
                          <asp:FileUpload ID="fupapp" runat="server" style="width:200px"/>
                    </div><br />
                        </div>
                      <div class="col-md-12">
                         <b> <asp:Label ID="lbldesc" runat="server" Text="Enter Description" ></asp:Label></b>
                        <div class="input-group">
                         <asp:TextBox ID="txtdesc" textmode="MultiLine" runat="server" CssClass="form-control" style="width:200px" placeholder="Enter Description"></asp:TextBox>
                    </div>
                     <br />
                         <asp:Button ID="btncat" CssClass="btn btn-danger" runat="server" Text="SUBMIT" OnClick="btncat_Click" />
                    
                                            </div>
                        
                               </form>
                      </div>
                </div>
            </div>
                    </div>
                      </div>
                 </div> 
            </div></div>
            </div>
       
        </div>
</asp:Content>

