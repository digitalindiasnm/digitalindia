<%@ Page Title="" Language="C#" MasterPageFile="~/index.master" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="Default2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
  <%--  <style type="text/css">
        .container {
        float:right;
        position:relative;

        }
        .auto-style1 {
            width: 47px;
        }
        .auto-style2 {
            display: inline-block;
            padding-left: 20px;
            margin-bottom: 0;
            font-weight: 400;
            vertical-align: middle;
            cursor: pointer;
            width: 47px;
        }
    </style>--%>
     <script type="text/javascript">
         function validate(c) {
             var expre = /^([a-zA-Z0-9_\-\.]+)@([a-zA-Z0-9_\-\.]+)\.([a-zA-Z]{2,5})$/
             var label = document.getElementById('<%=Label1.ClientID%>');
             if (c.value == "" && !expre.test(c.value)) {
                 label.innerText = "Invalid Email-Id";
            }
           
            else {
                label.innerText = "";
            }
        }

        function pass(c) {
            var label = document.getElementById('<%=Label2.ClientID%>');
            if (c.value == "") {
                label.innerText = "Please Enter Password";
            }
            else {
                label.innerText = "";
            }
        }
         function SaveData(a) {
             if (typeof a !== "undefined") {
                 PageMethods.SaveData(a, savesuccess, savefailed);//you can use the jQuery syntax also here if you are using webservice to save the data.
             }
         }
         function savesuccess() {
             alert('Data Saved');
         }
         function savefailed() {
             alert('Save Failed');
         }
</script>
   


</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="body" Runat="Server">
     <div class="page-in">
        <div class="container">
          <div class="row">
            <div class="col-lg-6 pull-left">
              <div class="page-in-name"><h1>WelCome: <span>Login Here</span></h1></div>
            </div>
            <div class="col-lg-6 pull-right">
              <div class="page-in-bread"><span>You are here: </span><a href="Default.aspx" title="Go to Home Page">Home</a> \ Login Page</div></div>                
            </div>
        </div>
      </div>
            <!--login table start-->
            <div class="row">
<div class="container">
    
         <div class="container">
             

             <div class="row">
                 <div class="container marg100">
                <div class="col-lg-8">
               <div class="col-lg-12">
                  <div class="col-lg-8">
                        <div class="panel panel-default">
                            <div class="panel-heading">
                        <strong>Login yourself to get access</strong>  
                            </div>
                            <div class="panel-body">
                              <table>
                                    <tr class="form-group input-group">
                                        <td >
                                              <span style="height:34px" class="input-group-addon"><i class="fa fa-tag"  ></i></span>
                                        </td>
                                        <td>
                                            <asp:TextBox ID="txtusername" Width="200" CssClass="form-control" onblur="validate(this)" placeholder="Your Username" runat="server"></asp:TextBox>
                                        </td>
                                        <td>
                                            <%--<asp:RegularExpressionValidator ID="RegularExpressionValidator1"  ForeColor="Red"
                                                runat="server" ErrorMessage="Invalid Email Id" ValidationExpression="^([a-zA-Z0-9_\-\.]+)@([a-zA-Z0-9_\-\.]+)\.([a-zA-Z]{2,5})$" 
                                                ControlToValidate="txtusername" SetFocusOnError="True" Width="250" Font-Bold="True"></asp:RegularExpressionValidator>
                                            --%><span>
                                             <asp:Label ID="Label1" Width="250" runat="server" Text="" ForeColor="Red" Font-Bold="true"></asp:Label></span>
                                        </td>
                                     </tr>
                                     <tr class="form-group input-group">
                                        <td>
                                              <span style="height:34px" class="input-group-addon"><i class="fa fa-tag"  ></i></span>
                                        </td>
                                        <td>
                                            <asp:TextBox ID="txtpass" Width="200" CssClass="form-control" onblur="pass(this)" textmode="Password" placeholder="Your Password" runat="server"></asp:TextBox>
                                        </td>
                                         <td>
                                             <asp:Label ID="Label2" Width="250" runat="server" Text="" ForeColor="Red" Font-Bold="true"></asp:Label>
                                         </td>
                                    </tr>
                                    <tr class="form-group">
                                        <td>
                                           <asp:CheckBox ID="chkremember" runat="server"  />Remember Me
                                       
                                       &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                            <asp:LinkButton ID="lnkpass" PostBackUrl="~/Forgetpass.aspx" runat="server">Forgot Password ? </asp:LinkButton>
                                        </td>
                                        <td>

                                        </td>
                                    </tr>
                                    
                                    <tr>
                                        <td>
                                            <asp:Button ID="btnLogin" runat="server" class="btn btn-success " Text="Login Now" OnClick="btnLogin_Click"/>  
                                            &nbsp;&nbsp;
                                           <asp:Label ID="lblmsg" Width="250" runat="server" Text="" ForeColor="Red" Font-Bold="true"></asp:Label>
                                        </td>
                                        <td>
                                            
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                              Not register ? <asp:LinkButton ID="LinkButton1" runat="server" OnClick="LinkButton1_Click"> Register</asp:LinkButton> 
                                        </td>
                                    </tr>
                                </table>
                      
                            </div>
                           
                        </div>
                    </div>
                </div>
                    </div>
                 <div>
                  <h4>Digital India</h4>
                     <div></div>
                  <div class="marg30" style="font-weight:300">
                  Digital Technologies which include Cloud Computing and Mobile Applications have emerged as catalysts for rapid economic growth and citizen empowerment across the globe. Digital technologies are being increasingly used by us in everyday lives from retail stores to government offices. They help us to connect with each other and also to share information on issues and concerns faced by us. In some cases they also enable resolution of those issues in near real time. 
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
      </div>            

            </div>
      
    <script type="text/javascript">
        var revapi;
        jQuery(document).ready(function () {
            revapi = jQuery('.tp-banner').revolution({
                delay: 9000,
                startwidth: 1140,
                startheight: 600,
                hideThumbs: 200,

                thumbWidth: 100,
                thumbHeight: 50,
                thumbAmount: 2,


                simplifyAll: "off",

                navigationType: "bullet",
                navigationArrows: "solo",
                navigationStyle: "round",

                touchenabled: "on",
                onHoverStop: "on",
                nextSlideOnWindowFocus: "off",

                swipe_threshold: 0.7,
                swipe_min_touches: 1,
                drag_block_vertical: false,

                keyboardNavigation: "off",

                navigationHAlign: "center",
                navigationVAlign: "bottom",
                navigationHOffset: 0,
                navigationVOffset: 20,

                soloArrowLeftHalign: "left",
                soloArrowLeftValign: "center",
                soloArrowLeftHOffset: 20,
                soloArrowLeftVOffset: 0,

                soloArrowRightHalign: "right",
                soloArrowRightValign: "center",
                soloArrowRightHOffset: 20,
                soloArrowRightVOffset: 0,

                shadow: 0,
                fullWidth: "on",
                fullScreen: "off",

                spinner: "spinner3",

                stopLoop: "off",
                stopAfterLoops: -1,
                stopAtSlide: -1,

                shuffle: "off",

                autoHeight: "off",
                forceFullWidth: "on",


                hideTimerBar: "on",
                hideThumbsOnMobile: "off",
                hideNavDelayOnMobile: 1500,
                hideBulletsOnMobile: "on",
                hideArrowsOnMobile: "on",
                hideThumbsUnderResolution: 0,

                hideSliderAtLimit: 0,
                hideCaptionAtLimit: 0,
                hideAllCaptionAtLilmit: 0,
                startWithSlide: 0
            });
        }); //ready
      </script>
</asp:Content>

