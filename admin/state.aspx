<%@ Page Title="" Language="C#" MasterPageFile="~/admin/admin.master" AutoEventWireup="true" CodeFile="state.aspx.cs" Inherits="admin_state" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <script src="../assets/js/jquery-1.20.2.min.js"></script>
    <script >

        $(document).ready(function () {
            $(".btnstate").click(function () {

                alert("successfully insert ")
            })
        })
    </script>
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
                               State Details
                                </div>
                  
                           
                         <div class="panel-body">
                               
                         <form role="form">
                              <div class="col-md-12">
                         
                                 <b> <asp:Label ID="lblstate" runat="server" Text="Enter State Name"></asp:Label> </b>
                        <div class="input-group">
                           
                              <asp:TextBox ID="txtstate" runat="server" class="form-control" style="width:200px" placeholder="State Name" />
                          
                     
                       </div>
                       
                        <div class="form-group">
                                              
                       
                            <br />
                            
                            <asp:Button ID="btnstate" CssClass="btn btn-danger" runat="server" Text="SUBMIT"  OnClick="btnstate_Click" />
                    
                                            </div>
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




