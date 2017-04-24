<%@ Page Title="" Language="C#" MasterPageFile="~/admin/admin.master" AutoEventWireup="true" CodeFile="upload.aspx.cs" Inherits="admin_upload" %>

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
                                Images & video related to Clean India
                                </div>
                  
                           
                         <div class="panel-body">
                               
                           <form id="form">
                    <div class="col-md-12">
                         <b> <asp:Label ID="lbltitle" runat="server" Text="Enter Video Title"></asp:Label></b>
                        <div class="input-group">
                           <asp:TextBox id="txttitle" runat="server" type="text" class="form-control" style="width:200px" placeholder="Enter Video Title" />
                    </div><br />
                        </div>
                    <div class="col-md-12">
                         <b> <asp:Label ID="lblupload" runat="server" Text="Upload Video" ></asp:Label></b>
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
            </div>
        </div>
                </div>
        
        </div>

</asp:Content>

