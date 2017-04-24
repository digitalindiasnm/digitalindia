<%@ Page Language="C#" AutoEventWireup="true" CodeFile="printngo.aspx.cs" Inherits="admin_printambassador" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <%--<link href="css/style.css" rel="stylesheet" type="text/css" />--%>
    <title id="Title1" runat="server">Digital India</title>
    <script type="text/javascript">
        function initPrint() {
            document.getElementById('divPrint').innerHTML = opener.document.getElementById('<%= Request.QueryString["uid"] %>').innerHTML;
            print_window();
        };

    </script>
    <style>
        body { font-size: 14px; font-family: Arial; font-weight: bold; }
        h2 { text-align: center; }
        span { font-weight: normal;}
        .divPad { padding: 7px; }
        .header { background: #DCE6F0; margin: 7px 0px; padding: 10px 5px; }
        td { padding: 3px;}
        
        .cssheaderh2 { text-align: center; background: #DDD9C4; border: solid 2px #000}
        
        .auto-style2 {
            width: 310px;
        }
        
    </style>
    
</head>
<body>
    <form id="form1" runat="server">
    <div style="padding: 2px 50px">
        <div class="divPad">
            <table style="height: 78px; width: 887px; margin-left: 0px">
                <tr>
                <th class="auto-style2">
        <asp:Image ID="imglogo" runat="server" Height="80px" ImageAlign="Left" AlternateText="Apcons"  ImageUrl="~/admin/logo.jpg" Width="300px"/>
            
                
              <h5 style="float: right;text-align:left; margin-left: 0px;"> 
                  D-502,Status Tower<br />
                  Opp TV Tower,<br />
                  Thaltej<br />
                  Ahmedabad(Gujarat)<br />
                  </h5>
                  
               </th>
                </tr>
                <tr>
                     <td> <hr style="width: 1237px"/></td>
                    
                </tr>
                </table>
                
            
        </div>
        <div class="divPad" style="min-height: 400px;">
            <div id="page-inner">
               
                                   

                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="false">
                                        <Columns>
                                            <asp:TemplateField Visible="false">
                                                <ItemTemplate>
                                            <asp:Label ID="lblupid" runat="server" Text='<%#Eval("np_id") %>'></asp:Label>
                                                    <asp:Label ID="lbluid" runat="server" Text='<%#Eval("u_id") %>'></asp:Label>
                                                </ItemTemplate>
                                            </asp:TemplateField>
                                            <asp:TemplateField HeaderText="NGO Logo" Visible="false">
                                                <ItemTemplate>
                                                    <img src='<%#Eval("n_pic") %>' width="100" height="100"/>
                                                </ItemTemplate>
                                            </asp:TemplateField>
                                           <asp:TemplateField HeaderText="NGO Name">
                                                <ItemTemplate>
                                                    <asp:Label ID="lblname" runat="server" Text='<%#Eval("ngo_name") %>'></asp:Label>
                                                </ItemTemplate>
                                            </asp:TemplateField>
                                           <%-- <asp:TemplateField HeaderText="Starting Date of Comapny">
                                                <ItemTemplate>
                                                    <asp:Label ID="lbldos" runat="server" Text='<%#Eval("dos") %>'></asp:Label>
                                                </ItemTemplate>
                                            </asp:TemplateField>--%>
                                             <asp:TemplateField HeaderText="Contact Number">
                                                <ItemTemplate>
                                                    <asp:Label ID="lblcon" runat="server" Text='<%#Eval("contact_no") %>'></asp:Label>
                                                </ItemTemplate>
                                            </asp:TemplateField>


                                            <asp:TemplateField HeaderText="Email ID">
                                                <ItemTemplate>
                                                    <asp:Label ID="lblemail" runat="server" Text='<%#Eval("email_id") %>'></asp:Label>
                                                </ItemTemplate>
                                            </asp:TemplateField>
                                             <asp:TemplateField HeaderText="Address">
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
                                            </asp:TemplateField>
                                             <asp:TemplateField HeaderText="Status">
                                                <ItemTemplate>
                                                    <asp:Label ID="lblstatus" runat="server" Text='<%#Eval("status") %>'></asp:Label>
                                                </ItemTemplate>
                                            </asp:TemplateField>

                                        </Columns>
                                     
                                    </asp:GridView>
                                      
                                </div>




            <div id="divPrint">
            </div>
            <div style="clear: both;"></div>
        </div>
        <br />
        <center>
            <input id="btn_print" type="Button" value="&nbsp;&nbsp;Print&nbsp;&nbsp;" onclick="print_window()" style="cursor: pointer;" />
          
           <asp:Button ID="Button1" runat="server" PostBackUrl="~/admin/main.aspx" Text="Cancel"></asp:Button>
        </center>
    </div>
    <script language="javascript">
        function print_window() {
            document.getElementById("btn_print").style.display = 'none';
            window.print();
            document.getElementById("btn_print").style.display = 'none';
        }
        initPrint();
    </script>


    </form>
</body>
</html>
