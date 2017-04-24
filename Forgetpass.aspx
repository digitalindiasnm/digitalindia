<%@ Page Title="" Language="C#" MasterPageFile="~/index.master" AutoEventWireup="true" CodeFile="Forgetpass.aspx.cs" Inherits="Forgetpass" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="body" Runat="Server">

       <div class="page-in">
        <div class="container">
          <div class="row">
            <div class="col-lg-6 pull-left">
              <div class="page-in-name"><h1>WelCome: <span></span></h1></div>
            </div>
            <div class="col-lg-6 pull-right">
              <div class="page-in-bread"><span>You are here: </span><a href="Default.aspx" title="Go to Home Page">Home</a> \ Forget Password</div></div>                
            </div>
        </div>
      </div>




            <!--login table start-->
            <div class="row">

<div class="container">
      <!--  <div class="row text-center ">
       
        </div>-->
         <div class="container">
        <div class="row text-center ">
            <div class="col-md-12">
                <br /><br />
               
            </div>
        </div>
         <div class="row ">

             <div class="row">
                 <div class="container">
                <div class="col-lg-8">
                  
                  <div class="col-lg-8">
                        <div class="panel panel-default">
                            <div class="panel-heading">
                        <strong>Enter Details for Retrive Password </strong>  
                            </div>
                            <div class="panel-body">
                               
                                       <br />
                                <table>
            <tr>
                <td></td>
                <td  >
                 
                    <asp:Image ID="Image1"  runat="server" ImageUrl="~/assets/images/forget.png" Height="150" Width="200" CssClass="img" />
               </td>
            </tr>
           <tr>
                <td >
                  <%-- <asp:Label ID="lblmail" Width="116px" runat="server" Text="Email Address"></asp:Label>--%>
               </td>
               <td>
                 <asp:TextBox ID="txtmail" runat="server" class="form-control" style="width:200px" placeholder="Enter Email" />
               </td>
           </tr>
                   <tr>
                       <td>

                       </td>
                       <td><br />
                           <asp:Button ID="btnsubmit" runat="server" Text="Submit" CssClass="btn btn-primary " style="width:200px" OnClick="btnsubmit_Click"  />
                       </td>
                   </tr>
               </table>
                      
                            </div>
                           
                        </div>
                    </div>
                </div>
                 <div class="ac-container">
                  <h4>Digital India</h4>
                  <div class="marg50" style="font-weight:300">
                  Digital Technologies which include Cloud Computing and Mobile Applications have emerged as catalysts for rapid economic growth and citizen empowerment across the globe. Digital technologies are being increasingly used by us in everyday lives from retail stores to government offices. They help us to connect with each other and also to share information on issues and concerns faced by us. In some cases they also enable resolution of those issues in near real time. 
               </div> 
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





