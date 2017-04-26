<%@ Page Title="" Language="C#" MasterPageFile="~/ngo/ngo.master" AutoEventWireup="true" CodeFile="index_ngo.aspx.cs" Inherits="ngo_ngo" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style1 {
        width: 147px;
    }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
      <div class="tp-banner-container" style="height:600px;">
        <div class="tp-banner" >
          <ul style="display:none;">
            <li data-transition="random-static" data-slotamount="7" data-masterspeed="300"  data-saveperformance="off" >
              <!-- MAIN IMAGE -->
              <img src="assets/images/slide.jpg"  alt="slide"  data-bgposition="center center" data-bgfit="cover" data-bgrepeat="no-repeat">
                     
      




        </li>
            <!-- SLIDE  -->
            <li data-transition="random-static" data-slotamount="7" data-masterspeed="300"  data-saveperformance="off" >
              <!-- MAIN IMAGE -->
              <img src="assets/images/slider2.jpg"  alt="slider2"  data-bgposition="center center" data-bgfit="cover" data-bgrepeat="no-repeat">
    </li>
          </ul>
            <div>
                   <!--NGO start-->

            <div class="page-in">
        <div class="container">
          <div class="row">
            <div class="col-lg-6 pull-left">
              <div class="page-in-name"><h1>User: <span>Wel come To NGO</span></h1></div>
            </div>
            <div class="col-lg-6 pull-right">
              <div class="page-in-bread"><span>You are here: </span><a href="../Default.aspx" title="Home Page">Logout</a></div></div>               
            </div>
        </div>
      </div>
      <div class="container marg50">
        <div class="row">
          <div class="col-lg-9">
            <div class="classic-blog">
              <div class="cl-blog-img"><img src="assets/images/blog1.png" alt="img Not Found"/></div>
              <div class="cl-blog-naz">
                <div class="cl-blog-type"><i class="icon-pencil"></i></div>
                <div class="cl-blog-name"><a href="#">What is a NGO – Non Governmental Organization?.</a></div>
                <div class="cl-blog-text">NGO may be defined as an association having a definite cultural, educational, religious or social program registered with the Central Government. The full form of NGO is Non Governmental Organization, NGO’s are also referred to as Non Profit Organisations (NPO’s) sometimes.</div>
              </div>
              
              <div class="cl-blog-line"></div>
            </div>
            <div class="classic-blog">
             
              </div>
            
            
         
          </div> 
          <div class="col-lg-3">         
            <div class="promo-text-blog">Sectors</div>
           <div class="classic-blog">
              <div class="cl-blog-video">
                   <video width="320" height="240" controls>
                     <source src="assets/images/Human Trafficking - Award Winning Social Awareness Short Film.mp4" type="video/mp4"/>
                         Your browser does not support the video tag.
                    </video> 
 
              <div class="cl-blog-naz">
                <div class="cl-blog-type"><i class="icon-video"></i></div>
                <div class="cl-blog-name"><a href="#">Human Trafficking Award Winning Social Awareness Short Film </a></div>
            
              <div class="cl-blog-line"></div>
            </div>
            
                <script type="text/javascript">
                    jQuery(function ($) {
                        $(".tweet").tweet({
                            modpath: 'assets/php/',
                            username: "dankovtheme",
                            avatar_size: 40,
                            count: 3,
                            loading_text: "loading tweet...",
                            template: "{text}"
                        });
                    });
                </script>
            
        </div>
      </div>


               <!--GOV end-->

              </div>
            </div>
              

       
        </div>
      </div>

    <br />
    <br />
    
      </script>

               <!--NGO end-->


            </div>
              

       
        </div>
      </div>

    <br />
    <br />
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

