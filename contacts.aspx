<%@ Page Title="" Language="C#" MasterPageFile="~/index.master" AutoEventWireup="true" CodeFile="contacts.aspx.cs" Inherits="contacts" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="body" Runat="Server">
         <div class="page-in">
        <div class="container">
          <div class="row">
            <div class="col-lg-6 pull-left">
              <div class="page-in-name"><h1>Contacts: <span>Need Support? Get It!</span></h1></div>
            </div>
            <div class="col-lg-6 pull-right">
              <div class="page-in-bread"><span>You are here: </span><a href="index.aspx"  title="Home Page">Home</a>\ Contacts</div></div>                
            </div>
        </div>
      </div>
      <div class="tp-banner-container" style="height:600px;">
        <a href="index.aspx"></a>
        <div class="tp-banner" >
          <ul style="display:none;">
            <li data-transition="random-static" data-slotamount="7" data-masterspeed="300"  data-saveperformance="off" >
              <!-- MAIN IMAGE -->
                <img src="assets/images/slide.jpg" alt="slide" data-bgposition="center center" data-bgfit="cover" data-bgrepeat="no-repeat" />
              

  
         
                
        
      
        </li>
            <!-- SLIDE  -->
            <li data-transition="random-static" data-slotamount="7" data-masterspeed="300"  data-saveperformance="off" >
              <!-- MAIN IMAGE -->
              <img src="assets/images/slider2.jpg"  alt="slider2"  data-bgposition="center center" data-bgfit="cover" data-bgrepeat="no-repeat"/>
    </li>
          </ul>
         


       
        </div>
     
        </div>  
    <div class="col-lg-6 col-md-6 col-sm-12">
            
            
          </div>
      <div class="container marg50">
    <div class="row">
          <div class="col-lg-8 col-md-8 col-sm-12">
            <div class="promo-block">
              <div class="promo-text">Feedback Form</div>
              <div class="center-line"></div>
            </div>
            <div class="marg30">
              <div class="row">
                <div class="form-style" id="contact_form">
                  <div id="contact_body">
                    <div class="col-lg-4">
                      <p class="text_cont"><asp:textbox runat="server" ID="txtname" name="name"  placeholder="Name" required="true" class="input-cont-textarea"/></p>
                    </div>
                    <div class="col-lg-4">
                      <p class="text_cont"><asp:textbox runat ="server" ID="txtemail" textmode="email" name="email" placeholder="E-mail" required="true" class="input-cont-textarea"/></p>
                    </div>
                    <div class="col-lg-4">
                      <p class="text_cont"><asp:textbox runat ="server" ID="txtsubj" placeholder="Subject" required="true" class="input-cont-textarea"/></p>
                    </div>
                    <div class="col-lg-12">
                      <p class="text_cont" style="margin-bottom:0px;"><asp:TextBox runat ="server" textmode="MultiLine" ID="txtmsg" placeholder="Message" required="true" style="margin-bottom:0px;" class="input-cont-textarea" cols="40" rows="10" ></asp:TextBox></p>
                    </div>
                    <div class="col-lg-12"><div id="contact_results"></div></div> 
                    <div class="col-lg-12"><p><asp:Button ID="btnsubmit" runat="server" Text="Submit" class="btn btn-default" value="Send message" OnClick="btnsubmit_Click"/></p></div>
                  </div>
                </div>
              </div>
            </div>
          </div>
          <div class="col-lg-4 col-md-4 col-sm-12">
            <div class="promo-block">
              <div class="promo-text">Information</div>
              <div class="center-line"></div>
            </div>
            <div class="marg50">
              <ul class="contact-composer">
                <li><i class="icon-map-pin"></i> <span>Adress: D-502;Status Tower;Opp TV Tower;Thaltej;Ahmedabad(Gujarat)</span></li>
                <li><i class="icon-phone"></i> <span>Phone: (+91)9033301250</span></li>
                <li><i class="icon-printer"></i> <span>Website: apconsservices.com</span></li>
                <li><i class="icon-megaphone"></i> <span>Skype: companyname</span></li>
                <li><i class="icon-envelope"></i> <span>E-mail: shaileshpatel0910@email.com</span></li>

              </ul>
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

