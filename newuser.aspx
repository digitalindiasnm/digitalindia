<%@ Page Title="" Language="C#" MasterPageFile="~/index.master" AutoEventWireup="true" CodeFile="newuser.aspx.cs" Inherits="newuser" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <script src="government/assets/js/jquery-1.20.2.min.js"></script>
 <script type="text/javascript">
     function uname(c)
     {
         var label = document.getElementById('<%=lbluname.ClientID %>');
         if (c.value == "")
            {
                label.innerText = "Please Enter User Name";
            }
            else {
                label.innerText = "";
            }
     }
     function validate(c)
     {
         var expre = /^([a-zA-Z0-9_\-\.]+)@([a-zA-Z0-9]+)\.([a-zA-Z]{2,5})$/
         
         var label = document.getElementById('<%=lblemail.ClientID%>');
         if (c.value == "" && !expre.test(c.value))
         {
             label.innerText = "Invalid Email Id";
         }
              
         else
         {
             label.innerText = "";
         }
     }
     function pass(c) {
         var label = document.getElementById('<%=lblpass.ClientID %>');
         if (c.value == "") {
             label.innerText = "Please Enter Password";
         }

         else {
             label.innerText = "";
         }
     }
     function repass(c) {
         var label = document.getElementById('<%=lblrepass.ClientID %>');
         if (c.value == "") {
             label.innerText = "Please Enter Re-Password";
         }
         //if (c.value == 'txtpass') {
         //    label.innerText = "Please Enter Same Password";
         //}

         else {
             label.innerText = "";
         }
     }
     function con(c)
     {
         var expre = "123456789";
         
         var label = document.getElementById('<%=lblcon.ClientID %>');
         if (c.value == "" && !expre.test(c.value)) {
             label.innerText = "Invalid Contact Number";
         }

         else {
             label.innerText = "";
         }
     }
          
     </script>
    </asp:Content>


<asp:Content ID="Content2" ContentPlaceHolderID="body" Runat="Server">



    <asp:ScriptManager ID="ScriptManager1" runat="server">

    </asp:ScriptManager>
     
    <div class="container">
            <div class="col-lg-6 col-md-6 col-sm-12">
            <div class="promo-block">
              <div class="promo-text">WelCome</div>
              <div class="center-line"></div>
            </div>
            <div class="marg50">
              <div>
                  <div class="container">
        <div class="row text-center  ">
            <div class="col-md-12">
            </div>
        </div>
         <div class="row">
          
                <div class="col-lg-6 col-md-6 col-sm-12">
                        <div class="panel panel-default">
                            <div class="panel-heading">
                        <strong>  New User ? Register Yourself </strong>  
                            </div>
                            <div class="panel-body">
                                <br />
                                  <table>
                                    <tr class="form-group input-group">
                                        <td>
                                              <span style="height:34px" class="input-group-addon"><i class="fa fa-circle-o-notch"  ></i></span>
                                        </td>
                                        <td>
                                            
                                            <asp:TextBox ID="txtname" Width="300px" CssClass="form-control" onblur="uname(this)" onfocus="" placeholder="Your Name" runat="server" ToolTip="Enter Only Alphabets"></asp:TextBox>
                                           
                                        </td>
                                         <td>
                                             <asp:Label ID="lbluname" Width="250" runat="server" Text="" ForeColor="Red" Font-Bold="true"></asp:Label>
                                         </td>
                                    </tr>
                                     <tr class="form-group input-group">
                                        <td>
                                              <span style="height:34px"  class="input-group-addon">@</span>
                                        </td>
                                        <td>
                                            <asp:TextBox ID="txtemail" Width="240px" CssClass="form-control"   onblur="validate(this)" placeholder="EmailId" runat="server"></asp:TextBox>
                                        </td>
                                          <td>
                                             <asp:Button ID="Button1" runat="server" Text="Available"  OnClick="btnavail_Click" class="btn btn-success"/>
                                           
                                         </td>
                                         <td>
                                              <asp:Label ID="lblemail" Width="250" runat="server" Text="" ForeColor="Red" Font-Bold="true"></asp:Label>
                                         </td>
                                         <td>
                                             <asp:Button ID="btnavail" runat="server" Text="Available"  OnClick="btnavail_Click" class="btn btn-success"/>
                                           
                                         </td>
                                    </tr>
                                      <tr class="form-group input-group">
                                        <td>
                                              <span style="height:34px" class="input-group-addon"><i class="fa fa-lock"  ></i></span>
                                        </td>
                                        <td>
                                            <asp:TextBox ID="txtpass" Width="300px" CssClass="form-control" textmode="Password" onblur="pass(this)" placeholder="Your Password" runat="server" MaxLength="8"></asp:TextBox>
                                        </td>
                                          <td>
                                             <asp:Label ID="lblpass" Width="250" runat="server" Text="" ForeColor="Red" Font-Bold="true"></asp:Label>
                                         </td>
                                    </tr>
                                        <tr class="form-group input-group">
                                        <td>
                                              <span style="height:34px" class="input-group-addon"><i class="fa fa-lock"  ></i></span>
                                        </td>
                                        <td>
                                            <asp:TextBox ID="txtrepass" Width="300px" CssClass="form-control" textmode="Password" onblur="repass(this)" placeholder="Retype Password" runat="server" MaxLength="8"></asp:TextBox>
                                        </td>
                                          <td>
                                             <asp:Label ID="lblrepass" Width="250" runat="server" Text="" ForeColor="Red" Font-Bold="true"></asp:Label>
                                              <asp:CompareValidator ForeColor="red" ID="CompareValidator1" runat="server" ControlToCompare="txtpass" ControlToValidate="txtrepass" ErrorMessage="Password does not match"></asp:CompareValidator>
                                
                                         </td>
                                    </tr>
                                       <tr class="form-group input-group">
                                        <td>
                                              <span style="height:34px" class="input-group-addon"><i class="fa fa-tag"  ></i></span>
                                        </td>
                                        <td>
                                            <asp:TextBox ID="txtcon" Width="300px" CssClass ="form-control" Errormessage="Enter Only Number" onblur="con(this)" placeholder="Contact Number" runat="server" MaxLength="10"></asp:TextBox>

                                            
                                        </td>
                                          <td>
                                             <asp:Label ID="lblcon" Width="250" runat="server" Text="" ForeColor="Red" Font-Bold="true"></asp:Label>
                                         </td>
                                    </tr>
                                                                       
                                     <tr class="form-group">
                                        <td>
                                            <asp:Button ID="lnkregister" runat="server" Text="Register Me"  OnClick="lnkregister_Click" class="btn btn-success"  />
                                           
                                        </td>
                                        <td >
                                             
                                        </td>
                                        <td>

                                        </td>
                                    </tr>
                                      <tr>
                                          <td>
                                              &nbsp;
                                          </td>
                                      </tr>
                                       <tr>
                                        <td>
                                             Already Registered ?  <a href="Login.aspx" >Login here</a>
                                        </td>
                                    </tr>
                                   </table>
                  
                             </div>
                           
                        </div>
                    </div>
         
            </div>
          </div>
              </div>
            </div>
          </div>

              <div class="col-lg-6 col-md-6 col-sm-12">
            <div class="promo-block">
              <div class="promo-text">Digital India</div>
              <div class="center-line"></div>
            </div>
            <div class="marg50">
              <div id="carousel-example-generic" class="carousel slide" data-ride="carousel">
                <ol class="carousel-indicators">
                  <li data-target="#carousel-example-generic" data-slide-to="0" class="active"></li>
                  <li data-target="#carousel-example-generic" data-slide-to="1" class="active"></li>
                  <li data-target="#carousel-example-generic" data-slide-to="2" class="active"></li>
                </ol>
                <div class="carousel-inner">
                  <div class="item active">
                    <img alt="" src="assets/images/s1.jpg"/>
                  </div>
                  <div class="item">
                    <img alt="" src="assets/images/s2.jpg"/>
                  </div>
                  <div class="item">
                    <img alt="" src="assets/images/s3.jpg"/>
                  </div>
                   
                </div>
                <a class="left carousel-control" href="#carousel-example-generic" data-slide="prev">
                <i class="fa fa-angle-left car_icon"></i>
                </a>
                <a class="right carousel-control" href="#carousel-example-generic" data-slide="next">
                <i class="fa fa-angle-right car_icon"></i>
                </a>
              </div>
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

