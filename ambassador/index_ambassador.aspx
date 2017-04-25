<%@ Page Title="" Language="C#" MasterPageFile="~/ambassador/ambassador.master" AutoEventWireup="true" CodeFile="index_ambassador.aspx.cs" Inherits="ambassador_index_ambassador" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
     <style type="text/css">
        .auto-style1 {
        width: 147px;
    }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

<%--    <div class="tp-banner-container" style="height:600px;">
        <div class="tp-banner" >
          <ul style="display:none;">
            <li data-transition="random-static" data-slotamount="7" data-masterspeed="300"  data-saveperformance="off" >
              <!-- MAIN IMAGE -->
              <img src="assets/images/slide.jpg"  alt="slide"  data-bgposition="center center" data-bgfit="cover" data-bgrepeat="no-repeat">
              

  
         

        
      
        </li>
            <!-- SLIDE  -->
            <li data-transition="random-static" data-slotamount="7" data-masterspeed="300"  data-saveperformance="off" >
              <!-- MAIN IMAGE -->
              <img src="assets/images/slider2.jpg"  alt="slider2"  data-bgposition="center center" data-bgfit="cover" data-bgrepeat="no-repeat"/>
    </li>
          </ul>
            </div>
        </div>--%>
                 <!--Ambassador start-->
          <div class="page-in">
        <div class="container">
          <div class="row">
            <div class="col-lg-6 pull-left">
              <div class="page-in-name"><h1>WelCome :&nbsp;&nbsp;<span><asp:Label ID="lbluname" runat="server" Text=""></asp:Label></span></h1></div>
            </div>
            <div class="col-lg-6 pull-right">
              <div class="page-in-bread"><span> Information of ambassador Profile </span><a href="../Default.aspx" title="Logout">Logout</a> </div></div>                
            </div>
        </div>
      </div>
  

            
              <div class="container">
            <div class="col-lg-6 col-md-6 col-sm-12">
            <div class="promo-block">
              <div class="promo-text"></div>
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
                 <p>     World is so unfair to some people but everyone knows they have to face it be it a small one or a difficult one. But us, people are so busy in our lives we don’t even think about anyone who needs our help. Those people also want to live happily as some of us but there are many problems in their life which they have to face to live on their life.</p>
                  <p>
                      Such is the problem occurred in a family from Bihar. A boy of a year old has a disease which was diagnosed almost three months after his birth but their parents weren’t able to arrange the amount for the operation.
                         </p>
                            <p>
                                Vimal Baswa and Babita Devi was blessed with a son and they named him “Satyam” but they never knew they had to face such a difficulty after only three months of their son’s birth. Satyam used to cry a lot but for some time his parents ignored as they thought it used to be common in children. But when the problem increased, they forced to visit a doctor in their hometown Bihar. But the doctor did all the check up and referred him to visit the doctor in Patna as it has more advanced doctors than in Bihar.
                            </p>
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
              <div class="promo-text">Ambassador</div>
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
                    <img alt="" src="assets/images/s1.png"/>
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
      

        </div>


</asp:Content>

