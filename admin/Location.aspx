<%@ Page Title="" Language="C#" MasterPageFile="~/admin/admin.master" AutoEventWireup="true" CodeFile="Location.aspx.cs" Inherits="admin_Location" %>

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
                               Location Details
                                </div>
                  
                           
                         <div class="panel-body">
                               
                           <form role="form">
                    <div class="col-md-12">
                         <b> <asp:Label ID="lblloca" runat="server" Text="Enter Location Name"></asp:Label></b>
                        <div class="input-group">
                        <%--   <input id="txtloca" type="text" class="form-control" style="width:200px" placeholder="Location Name" />--%>
                            <asp:TextBox ID="txtloca" class="form-control" style="width:250px" placeholder="Location Name" runat="server"></asp:TextBox>
                    </div>
                        <br />
                        <div class="form-group">
                            <b><asp:Label ID="lblcity" runat="server" Text="Select City"></asp:Label></b>
                                               <%-- <select id="SelectCities" class="form-control" style="width:250px">
                                                    <option>Select City</option>
                                                </select>--%>
                            <asp:DropDownList ID="ddlcity" class="form-control" style="width:250px" runat="server">
                                <asp:ListItem>Select-City</asp:ListItem>
                            </asp:DropDownList>
                            
                              <br />
                         <asp:Button ID="btnloca" CssClass="btn btn-danger" runat="server" Text="SUBMIT" OnClick="btnloca_Click" />
                    
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



