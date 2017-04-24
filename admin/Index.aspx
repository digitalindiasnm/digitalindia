<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Index.aspx.cs" Inherits="admin_Index" %>

<!DOCTYPE html>
<script src="../assets/js/jquery-1.20.2.min.js"></script>
<%--<script type="text/javascript">
    function Uadmin(c) {
        var label = document.getElementById('<%=lbluname.ClientID%>');
        if (c.value != "admin") {

            label.innerText = "Wrong ID";
        }
        else {
            label.innerText = "";
        }
    }
    function padmin(c) {
        var label = document.getElementById('<%=lblpass.ClientID%>');
        if (c.value != "admin") {

            label.innerText = "Wrong password";
        }
        else {
            label.innerText = "";
        }
    }
</script>--%>
<html xmlns="http://www.w3.org/1999/xhtml">

<!-- Mirrored from binarycart.com/bclivedemos/01-05-2014/v1/bs-binary-admin/login.html by HTTrack Website Copier/3.x [XR&CO'2014], Sun, 01 Jan 2017 16:06:50 GMT -->
<head>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Digital india Admin</title>
	<!-- BOOTSTRAP STYLES-->
    <link href="assets/css/bootstrap.css" rel="stylesheet" />
     <!-- FONTAWESOME STYLES-->
    <link href="assets/css/font-awesome.css" rel="stylesheet" />
        <!-- CUSTOM STYLES-->
    <link href="assets/css/custom.css" rel="stylesheet" />
     <!-- GOOGLE FONTS-->
   <link href='http://fonts.googleapis.com/css?family=Open+Sans' rel='stylesheet' type='text/css' />

</head>
<body>
    <div class="container">
        <div class="row text-center ">
            <div class="col-md-12">
                <br /><br />
                <h2> Digital India Admin : Login</h2>
               
                <h5>( Login yourself to get access )</h5>
                 <br />
            </div>
        </div>
         <div class="row ">
               
                  <div class="col-md-4 col-md-offset-4 col-sm-6 col-sm-offset-3 col-xs-10 col-xs-offset-1">
                        <div class="panel panel-default">
                            <div class="panel-heading">
                        <strong>   Enter Details To Login </strong>  
                            </div>
                            <div class="panel-body">
                                <form runat="server">
                                       <br />
                                     <div class="form-group input-group">
                                            <span class="input-group-addon"><i class="fa fa-tag"  ></i></span>
                                         <asp:TextBox ID="txtuname" CssClass="form-control" runat="server"></asp:TextBox>
                                         
                                      
                                         <asp:Label ID="lbluname" runat="server" Text=""></asp:Label>

                                        </div>
                                                                              <div class="form-group input-group">
                                            <span class="input-group-addon"><i class="fa fa-lock"  ></i></span>
                                            <asp:TextBox ID="txtpass" CssClass="form-control" runat="server" TextMode="Password"></asp:TextBox>
                                            <asp:Label ID="lblpass" runat="server" Text="" ></asp:Label>
                                           
                                        </div>
                                    
                                    <asp:Button ID="btnlogin" runat="server"  class="btn btn-primary " Text="Login Now" OnClick="btnlogin_Click" />
                                    <asp:Label ID="Label1" runat="server" Text="" ForeColor="Red"></asp:Label>
                                     <%--<a href="main.aspx" class="btn btn-primary ">Login Now</a>--%>
                                    <hr />
                                  
                                    </form>
                            </div>
                            
                              
                        </div>
                    </div>
                
                
        </div>
    </div>


     <!-- SCRIPTS -AT THE BOTOM TO REDUCE THE LOAD TIME-->
    <!-- JQUERY SCRIPTS -->
    <script src="assets/js/jquery-1.10.2.js"></script>
      <!-- BOOTSTRAP SCRIPTS -->
    <script src="assets/js/bootstrap.min.js"></script>
    <!-- METISMENU SCRIPTS -->
    <script src="assets/js/jquery.metisMenu.js"></script>
      <!-- CUSTOM SCRIPTS -->
    <script src="assets/js/custom.js"></script>
<script>
    (function (i, s, o, g, r, a, m) {
        i['GoogleAnalyticsObject'] = r; i[r] = i[r] || function () {
            (i[r].q = i[r].q || []).push(arguments)
        }, i[r].l = 1 * new Date(); a = s.createElement(o),
        m = s.getElementsByTagName(o)[0]; a.async = 1; a.src = g; m.parentNode.insertBefore(a, m)
    })(window, document, 'script', '../../../../../www.google-analytics.com/analytics.js', 'ga');

    ga('create', 'UA-38955291-1', 'auto');
    ga('send', 'pageview');

</script>
</body>

<!-- Mirrored from binarycart.com/bclivedemos/01-05-2014/v1/bs-binary-admin/login.html by HTTrack Website Copier/3.x [XR&CO'2014], Sun, 01 Jan 2017 16:06:50 GMT -->
</html>
