<%@ Page Title="" Language="C#" MasterPageFile="~/index.master" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
     <style type="text/css">
        .auto-style1 {
        width: 147px;
    }
    </style>
    <script type="text/javascript" language="javascript">
        function disableBackButton() {
            window.history.forward(-1);
        }
        setTimeout("disableBackButton()", 10);
        //disableBackButton();
        //window.onload = disableBackButton();
        //window.onpageshow = function (evt) { if (evt.persisted) disableBackButton() }
        window.onunload = function () { null 
        }
        window.onload = disableBackButton();
        </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="body" Runat="Server">
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

 <%--   <div class="page-in">  
            <div class="container">
          <div class="row">
            <div class="col-lg-6 pull-left">
              <div class="page-in-name"><h1>Ministry of Electronics & Information Technology Government of India</h1></div>
            </div>
            <div class="col-lg-6 pull-right">
              <div class="page-in-bread"><span>WelCome </span><a href="#" title="Home Page">Home</a></div></div>                
            </div>
     
        </div>
      </div>--%>

        

          <div class="container marg30">
        <div class="row">
           
        </div>
      </div> 
             <div class="container marg100">
            <div class="row">
          <div class="col-lg-6 col-md-6 col-sm-1">
            <div class="promo-block">
              <div class="promo-text">Digital India</div>
              <div class="center-line"></div>
            </div>
            <div class="marg50">
              <asp:Image runat ="server" Id="Image1" ImageUrl="~/assets/images/index_ind.jpg" height="500" scrolling="no" marginheight="0" marginwidth="0" /> 
              
              
              
            </div>
          </div>
          <div class="col-lg-6 col-md-6 col-sm-12">
            <div class="promo-block">
              <div class="promo-text">What is Digital India ?</div>
              <div class="center-line"></div>
            </div>
            <div class="marg50">
            <div class="promo-paragraph"><h3>Digital Technologies which include Cloud Computing and Mobile Applications have emerged as catalysts for rapid economic growth and citizen empowerment across the globe. Digital technologies are being increasingly used by us in everyday lives from retail stores to government offices. They help us to connect with each other and also to share information on issues and concerns faced by us. In some cases they also enable resolution of those issues in near real time.</h3> </div>
             <div class="promo-paragraph"><h3>Digital India is a campaign launched by the Government of India to ensure that Government services are made available to citizens electronically by improved online infrastructure and by increasing Internet connectivity or by making the country digitally empowered in the field of technology. </h3></div>
            </div>
          </div>
          


          
              <div class="promo-text">  </div>
            
            
          

              
              
              
            
        </div> 

       <div class="container marg50">
        <div class="row">
             <div class="container-color marg50">
        <div class="container">
          <div class="row">
            <div class="col-lg-12">
              <div class="promo-block">
                <div class="promo-text">Recent Works</div>
                <div class="center-line"></div>
              </div>
              <div class="promo-paragraph">Best of the best</div>
            </div>
          </div>
        </div>
        <div class="container marg30">
          <div>
            <div class="cbp-l-grid-projects" id="grid-container">
              <ul>
                <li class="cbp-item">
                  <div class="cbp-item-wrapper">
                    <div class="portfolio-dankovteam">
                      <div class="portfolio-image"><img src="assets/images/11.jpg" alt="Mann Ki Baat"/>
                        <div class="portfolio-hover">
                          <p class="icon-links">
                                 
                            <a href="mankibaatindex.aspx"  class="col-lg-3"><i class="fa fa-arrow-right"></i></a>                           
                            <a href="assets/images/11.jpg" class="cbp-lightbox" data-title="Mann Ki Baat"><i  class="fa fa-camera"></i></a>
                          </p>
                        </div>
                      </div>
                      <h2>Mann Ki Baat</h2>
                      <p>by  Prime Minister Narendra Modi </p>
                    </div>
                  </div>
                </li>
                <li class="cbp-item">
                  <div class="cbp-item-wrapper">
                    <div class="portfolio-dankovteam">
                      <div class="portfolio-image"><img src="assets/images/22.jpg" alt="Cashless India"/>
                        <div class="portfolio-hover">
                          <p class="icon-links">
                            <a href="cashless.aspx" class="col-lg-3"><i class="fa fa-arrow-right"></i></a>                           
                            <a href="assets/images/22.jpg" class="cbp-lightbox" data-title="Cashless India"><i class="fa fa-camera"></i></a>                          
                          </p>
                        </div>
                      </div>
                      <h2>Cashless India</h2>
                      <p>by Prime Minister Narendra Modi</p>
                    </div>
                  </div>
                </li>
                <li class="cbp-item">
                  <div class="cbp-item-wrapper">
                    <div class="portfolio-dankovteam">
                      <div class="portfolio-image"><img src="assets/images/33.jpg" alt="Swachh Bharat Abhiyan"/>
                        <div class="portfolio-hover">
                            <p class="icon-links">
                                <a href="CleanIndia.aspx"  class="col-lg-3"><i class="fa fa-arrow-right"></i></a>                           
                                <a href="assets/images/33.jpg" class="cbp-lightbox" data-title="Swachh Bharat Abhiyan"><i class="fa fa-camera"></i></a>
                            </p>
                        </div>
                        </div>
                        <h2>Swachh Bharat Abhiyan</h2>
                        <p>by Prime Minister Narendra Modi</p>
                    </div>
                  </div>
                </li>
                <li class="cbp-item">
                  <div class="cbp-item-wrapper">
                    <div class="portfolio-dankovteam">
                      <div class="portfolio-image"><img src="assets/images/44.png" alt="Pradhan Mantri Jan Dhan Yojana (PMJDY)"/>
                        <div class="portfolio-hover">
                            <p class="icon-links">
                                <a href="pmjy.aspx"  class="col-lg-3"><i class="fa fa-arrow-right"></i></a>                           
                                <a href="assets/images/44.png" class="cbp-lightbox" data-title="Pradhan Mantri Jan Dhan Yojana (PMJDY)"><i class="fa fa-camera"></i></a>
                            </p>
                        </div>
                        </div>
                        <h2>Pradhan Mantri JanDhan Yojana</h2>
                        <p>by Prime Minister Narendra Modi</p>
                    </div>
                  </div>
                </li>
                <li class="cbp-item">
                  <div class="cbp-item-wrapper">
                    <div class="portfolio-dankovteam">
                      <div class="portfolio-image"><img src="assets/images/55.jpg" alt="MAKE IN INDI"/>
                        <div class="portfolio-hover">
                            <p class="icon-links">
                             <a href="MAKE IN INDIA.aspx"  class="col-lg-3"><i class="fa fa-arrow-right"></i></a>                           
                             <a href="assets/images/55.jpg" class="cbp-lightbox" data-title="MAKE IN INDI"><i class="fa fa-camera"></i></a>
                            </p>
                        </div>
                        </div>
                        <h2>MAKE IN INDIA</h2>
                        <p>by Prime Minister Narendra Modi</p>
                    </div>
                  </div>
                </li>
                <li class="cbp-item">
                  <div class="cbp-item-wrapper">
                    <div class="portfolio-dankovteam">
                      <div class="portfolio-image"><img src="assets/images/66.jpg" alt="Smart City Projects"/>
                        <div class="portfolio-hover">
                            <p class="icon-links">
                             <a href="SmartCity.aspx"  class="col-lg-3"><i class="fa fa-arrow-right"></i></a>                           
                             <a href="assets/images/66.jpg" class="cbp-lightbox" data-title="Smart City Projects"><i class="fa fa-camera"></i></a>
                            </p>
                        </div>
                        </div>
                        <h2>Smart City Projects</h2>
                        <p>by Prime Minister Narendra Modi</p>
                    </div>
                  </div>
                </li>
               </ul>
            </div>
            
          </div>  
        </div>
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

