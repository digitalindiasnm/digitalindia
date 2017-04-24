<%@ Page Title="" Language="C#" MasterPageFile="~/admin/admin.master" AutoEventWireup="true" CodeFile="Cities.aspx.cs" Inherits="Cities" %>

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
                               Cities Details
                                </div>
                  
                           
                         <div class="panel-body">
                               
                         <form role="form">
                              <div class="col-md-12">
                                  <b><asp:Label ID="lblcity" runat="server" Text="Enter City Name"></asp:Label></b>
                        <div class="input-group">
                           
                              <%--<input type="text" id="txtcity" class="form-control" style="width:200px" placeholder="City Name" />--%>
                            <asp:TextBox ID="txtcity" class="form-control" style="width:250px" placeholder="City Name" runat="server"></asp:TextBox>
                          </div>
                        <br />
                        <div class="form-group">
                            <b><asp:Label ID="lblstate" runat="server" Text="Select State"></asp:Label></b>
                                                <%--<select id="SelectState" class="form-control" style="width:250px">
                                                    <option>Select-State</option>
                                                </select>--%>
                            <asp:DropDownList ID="ddlstate" CssClass="form-control" style="width:250px" runat="server">
                                <asp:ListItem>Select-state</asp:ListItem>
                            </asp:DropDownList>
                              <br />
                         
                            <asp:Button ID="btncity" runat="server" Text="SUBMIT" CssClass="btn btn-danger" OnClick="btncity_Click"  />
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


