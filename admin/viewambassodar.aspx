<%@ Page Title="" Language="C#" MasterPageFile="~/admin/admin.master" AutoEventWireup="true" CodeFile="viewambassodar.aspx.cs" Inherits="admin_viewambassodar" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="body" Runat="Server">
                                    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="false">
                                        <Columns>
                                            <asp:TemplateField Visible="false">
                                                <ItemTemplate>
                                                    <asp:Label ID="lblupid" runat="server" Text='<%#Eval("ap_id") %>'></asp:Label>
                                                    <asp:Label ID="lbluid" runat="server" Text='<%#Eval("u_id") %>'></asp:Label>
                                                </ItemTemplate>
                                            </asp:TemplateField>
                                            <asp:TemplateField HeaderText="Ambassodar Logo">
                                                <ItemTemplate>
                                                    <img src='<%#Eval("a_pic") %>' width="120" height="120"/>
                                                </ItemTemplate>
                                            </asp:TemplateField>
                                           <asp:TemplateField HeaderText="Ambassodar Name">
                                                <ItemTemplate>
                                                    <asp:Label ID="lblname" runat="server" Text='<%#Eval("a_name") %>'></asp:Label>
                                                </ItemTemplate>
                                            </asp:TemplateField>
                                          <asp:TemplateField HeaderText="Contact Number">
                                                <ItemTemplate>
                                                    <asp:Label ID="lblcon" runat="server" Text='<%#Eval("contact_no") %>'></asp:Label>
                                                </ItemTemplate>
                                            </asp:TemplateField>
                                             <asp:TemplateField HeaderText="NGO Name">
                                                <ItemTemplate>
                                                    <asp:Label ID="lblcon" runat="server" Text='<%#Eval("ngo_name") %>'></asp:Label>
                                                </ItemTemplate>
                                            </asp:TemplateField>


                                            <asp:TemplateField HeaderText="Email ID">
                                                <ItemTemplate>
                                                    <asp:Label ID="lblemail" runat="server" Text='<%#Eval("email_id") %>'></asp:Label>
                                                </ItemTemplate>
                                            </asp:TemplateField>
                                             <%--<asp:TemplateField HeaderText="Address">
                                                <ItemTemplate>
                                                    <asp:Label ID="lbladd" runat="server" Text='<%#Eval("address") %>'></asp:Label>
                                                </ItemTemplate>
                                            </asp:TemplateField>
                                            <asp:TemplateField HeaderText="State">
                                                <ItemTemplate>
                                                    <asp:Label ID="lblstate" runat="server" Text='<%#Eval("s_name") %>'></asp:Label>
                                                </ItemTemplate>
                                            </asp:TemplateField>

                                            <asp:TemplateField HeaderText="City">
                                                <ItemTemplate>
                                                    <asp:Label ID="lblcity" runat="server" Text='<%#Eval("c_name") %>'></asp:Label>
                                                </ItemTemplate>
                                            </asp:TemplateField>--%>
                                             <asp:TemplateField HeaderText="Status">
                                                <ItemTemplate>
                                                    <asp:Label ID="lblstatus" runat="server" Text='<%#Eval("status") %>'></asp:Label>
                                                </ItemTemplate>
                                            </asp:TemplateField>

                                        </Columns>
                                    </asp:GridView>
                                 
</asp:Content>

