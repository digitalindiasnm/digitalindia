<%@ Page Title="" Language="C#" MasterPageFile="~/admin/admin.master" AutoEventWireup="true" CodeFile="catagory.aspx.cs" Inherits="admin_catagory" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="body" Runat="Server">
    <div id="page-wrapper" >
            <div id="page-inner">
                <div class="row">
                     <div class="container marg30">
        <div class="col-lg-6">
             <div class="col-lg-6">
          
                  <div class="container">
                <div class="col-lg-8">
               
                <div class="col-lg-8">
                        <div class="panel panel-default">

                            <div class="panel-heading">
                               Catagories Details
                                </div>
                  
                           
                         <div class="panel-body">
                               
                           <form role="form">
                    <div class="col-md-12">
                         <b> <asp:Label ID="lblcata" runat="server" Text="Enter Catagory"></asp:Label></b>
                        <div class="input-group">
                           <asp:TextBox id="txtcat" runat="server" type="text" class="form-control" style="width:200px" placeholder="Catagory" />
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
       
        </div>
</asp:Content>

