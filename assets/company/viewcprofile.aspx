<%@ Page Title="" Language="C#" MasterPageFile="~/company/company.master" AutoEventWireup="true" CodeFile="viewcprofile.aspx.cs" Inherits="company_viewcprofile" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
     <script src="../assets/js/jquery-1.20.2.min.js"></script>
    <script>
        $(document).ready(function () {
            $(".fileUp").hide();
            $(".btnup").hide();
            $(".btnedit").click(function () {
                $(".fileUp").show();
                $(".btnup").show();
                $(".btnedit").hide();
                $(".uppic").hide();
            })
        })
    </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
       <div class="container marg30">
        <div class="col-lg-6">
            <asp:DetailsView ID="DetailsView1" runat="server" Height="250px" Width="330px" AutoGenerateRows="false" AutoGenerateEditButton="True" GridLines="None" OnItemCommand="DetailsView1_ItemCommand" BorderWidth="3px" OnItemUpdating="DetailsView1_ItemUpdating" OnModeChanging="DetailsView1_ModeChanging" >
                <Fields>
                    <asp:TemplateField Visible="false">
                        <ItemTemplate>
                            <asp:Label  ID="lblcid" runat="server" Text='<%#Eval("cp_id") %>'></asp:Label>
                            <asp:Label  ID="lbluid" runat="server" Text='<%#Eval("u_id") %>'></asp:Label>
                            <asp:Label  ID="lblreqid" runat="server" Text='<%#Eval("req_id") %>'></asp:Label>

                        </ItemTemplate>
                        <EditItemTemplate>
                            <asp:Label ID="lbluide" runat="server" Text='<%#Eval("u_id") %>'></asp:Label>
                        </EditItemTemplate>
                    </asp:TemplateField>

                    <asp:TemplateField>
                        <ItemTemplate>
                            <img src='<%#Eval("c_pic") %>' width="100" height="100" class="uppic"/>
                            <input type="button" class="btnedit" value="Edit"/>
                            <asp:FileUpload ID="FileUpload1" CssClass="fileUp" runat="server" />
                              <asp:LinkButton ID="lnkupdate" runat="server" CssClass="btnup" CommandName="modify">Update</asp:LinkButton>
                        </ItemTemplate>
                        <EditItemTemplate>
                            <img src='<%#Eval("c_pic") %>' width="100" height="100"/>
                        </EditItemTemplate>
                    </asp:TemplateField>
                    
                    <asp:TemplateField HeaderText="Company Name">
                        <ItemTemplate>
                            <asp:Label  ID="lblname" runat="server" Text='<%#Eval("c_name") %>'></asp:Label>
                        </ItemTemplate>
                        <EditItemTemplate>
                            <asp:Label ID="lblnamee" runat="server" Text='<%#Eval("c_name") %>'></asp:Label>
                        </EditItemTemplate>
                    </asp:TemplateField>

                     <asp:TemplateField HeaderText="Address">
                        <ItemTemplate>
                            <asp:Label  ID="lbladd" runat="server" Text='<%#Eval("address") %>'></asp:Label>
                        </ItemTemplate>
                        <EditItemTemplate>
                            <asp:Textbox  ID="txtadd" runat="server" Text='<%#Eval("address") %>'></asp:Textbox>
                        </EditItemTemplate>
                    </asp:TemplateField>


                        <asp:TemplateField HeaderText="Job Title">
                         <ItemTemplate>
                            <asp:Label ID="lbljtitle" runat="server" Text='<%#Eval("job_title") %>'></asp:Label>
                        </ItemTemplate>
                        <EditItemTemplate>
                            <asp:Label ID="lbljtitle" runat="server" Text='<%#Eval("job_title") %>'></asp:Label>
                        </EditItemTemplate>
                            </asp:TemplateField> 
                    
                    <asp:TemplateField HeaderText="Qualification">
                        <ItemTemplate>
                            <asp:Label ID="lblquali" runat="server" Text='<%#Eval("quali") %>'></asp:Label>
                        </ItemTemplate>
                        <EditItemTemplate>
                            <asp:TextBox ID="txtquali" runat="server" Text='<%#Eval("quali") %>'></asp:TextBox>
                        </EditItemTemplate>
                        </asp:TemplateField>
                     <asp:TemplateField HeaderText="Experience">
                        <ItemTemplate>
                            <asp:Label ID="lblexpr" runat="server" Text='<%#Eval("exper") %>'></asp:Label>
                        </ItemTemplate>
                        <EditItemTemplate>
                            <asp:TextBox ID="txtexpr" runat="server" Text='<%#Eval("exper") %>'></asp:TextBox>
                        </EditItemTemplate>
                        </asp:TemplateField>

                    <asp:TemplateField HeaderText="Job Description">
                        <ItemTemplate>
                            <asp:Label ID="lbljdesc" runat="server" Text='<%#Eval("j_desc") %>'></asp:Label>
                        </ItemTemplate>
                        <EditItemTemplate>
                            <asp:TextBox ID="txtjdesc" runat="server" Text='<%#Eval("j_desc") %>'></asp:TextBox>
                        </EditItemTemplate>
                        </asp:TemplateField>
                         
                    <asp:TemplateField HeaderText="Number of vacany">
                        <ItemTemplate>
                            <asp:Label ID="lblnvac" runat="server" Text='<%#Eval("no_vacan") %>'></asp:Label>
                        </ItemTemplate>
                        <EditItemTemplate>
                            <asp:TextBox ID="txtnvac" runat="server" Text='<%#Eval("no_vacan") %>'></asp:TextBox>
                        </EditItemTemplate>
                        </asp:TemplateField>

                      <asp:TemplateField HeaderText="Salary Package">
                        <ItemTemplate>
                            <asp:Label ID="lblsal" runat="server" Text='<%#Eval("sal_package") %>'></asp:Label>
                        </ItemTemplate>
                        <EditItemTemplate>
                            <asp:TextBox ID="txtsal" runat="server" Text='<%#Eval("sal_package") %>'></asp:TextBox>
                        </EditItemTemplate>
                        </asp:TemplateField>


                

                    <asp:TemplateField HeaderText="State">
                        <ItemTemplate>
                            <asp:Label ID="lblsname" runat="server" Text='<%#Eval("s_name") %>'></asp:Label>
                        </ItemTemplate>
                        <EditItemTemplate>
                            <asp:DropDownList ID="ddlstate" runat="server" DataSourceID="SqlDataSource1" DataTextField="s_name" DataValueField="s_id"></asp:DropDownList>
                            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:con %>" SelectCommand="SELECT * FROM [tbl_State]"></asp:SqlDataSource>
                        </EditItemTemplate>
                    </asp:TemplateField>
                    
                    <asp:TemplateField HeaderText="city">
                        <ItemTemplate>
                            <asp:Label ID="lblcity" runat="server" Text='<%#Eval("c_name") %>'></asp:Label>
                        </ItemTemplate>
                        <EditItemTemplate>
                            <asp:DropDownList ID="ddlcity" runat="server" DataSourceID="SqlDataSource2" DataTextField="c_name" DataValueField="c_id" ></asp:DropDownList>
                            <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:con %>" SelectCommand="SELECT * FROM [tbl_City]"></asp:SqlDataSource>
                        </EditItemTemplate>
                    </asp:TemplateField>
                    
                    <asp:TemplateField HeaderText="Location">
                        <ItemTemplate>
                            <asp:Label ID="lblloc" runat="server" Text='<%#Eval("l_name") %>'></asp:Label>
                        </ItemTemplate>
                        <EditItemTemplate>
                            <asp:DropDownList ID="ddlloc" runat="server" DataSourceID="SqlDataSource3" DataTextField="l_name" DataValueField="l_id"></asp:DropDownList>
                            <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:con %>" SelectCommand="SELECT * FROM [tbl_Location]"></asp:SqlDataSource>
                        </EditItemTemplate>
                    </asp:TemplateField>
                
                        <asp:TemplateField HeaderText="Date of Start">
                        <ItemTemplate>
                            <asp:Label ID="llbgen" runat="server" Text='<%#Eval("dos") %>'></asp:Label>
                        </ItemTemplate>
                        <EditItemTemplate>
                            <asp:Label ID="lblgenn" runat="server" Text='<%#Eval("dos") %>'></asp:Label>
                        </EditItemTemplate>
                    </asp:TemplateField>
                        
                </Fields>
            </asp:DetailsView>

            </div>
         </div>

</asp:Content>

