<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="2page_FYP_record.aspx.cs" Inherits="SEGP_PROJECTNEWWW.Theme.unify._2page_FYP_record" %>

<!DOCTYPE aspx>


<!--[if IE 8]> <aspx lang="en" class="ie8"> <![endif]-->
<!--[if IE 9]> <aspx lang="en" class="ie9"> <![endif]-->
<!--[if !IE]><!--> <aspx lang="en"> <!--<![endif]-->


<head>
	<title>FYP Records</title>
    


    <link href="../../Custom.css" rel="stylesheet" />
	<!-- Meta -->
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<meta name="description" content="">
	<meta name="Generator" content="RabinsXP">
	<meta name="author" content="">	

    <!-- Favicon -->
 
    <link rel="shortcut icon" href="../../Pics/favi.png">
	<!-- Web Fonts -->
	<link rel='stylesheet' type='text/css' href='http://fonts.googleapis.com/css?family=Open+Sans:400,300,600&amp;subset=cyrillic,latin'>

	<!-- CSS Global Compulsory -->
	<link rel="stylesheet" href="assets/plugins/bootstrap/css/bootstrap.min.css">
	<link rel="stylesheet" href="assets/css/style.css">
    

	<!-- CSS Header and Footer -->
	<link rel="stylesheet" href="assets/css/headers/header-default.css">
	<link rel="stylesheet" href="assets/css/footers/footer-v1.css">

	<!-- CSS Implementing Plugins -->
	<link rel="stylesheet" href="assets/plugins/animate.css">
	<link rel="stylesheet" href="assets/plugins/line-icons/line-icons.css">
	<link rel="stylesheet" href="assets/plugins/font-awesome/css/font-awesome.min.css">
	<link rel="stylesheet" href="assets/plugins/parallax-slider/css/parallax-slider.css">
	<link rel="stylesheet" href="assets/plugins/owl-carousel/owl-carousel/owl.carousel.css">

	<!-- CSS Theme -->
	<link rel="stylesheet" href="assets/css/theme-colors/default.css" id="style_color">
	<link rel="stylesheet" href="assets/css/theme-skins/dark.css">

	<!-- CSS Customization -->
	<link rel="stylesheet" href="assets/css/custom.css">
</head>

<body>

    <br>
    <br>
<div class="wrapper">
	<!--=== Header ===-->
	<div class="header">
		<div class="container">
			<!-- Logo -->
			<a class="logo" href="2page1_index.aspx">
                <img src="../../Pics/log1.png" />

			</a>
			<!-- End Logo -->

			<!-- Topbar -->
			<div class="topbar">
				<ul class="loginbar pull-right">
					    
				
					<li><a href="Page_login1.aspx"><h3>Logout</h3></a></li>
				</ul>
			</div>
			<!-- End Topbar -->

			<!-- Toggle get grouped for better mobile display -->
			<button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-responsive-collapse">
				<span class="sr-only">Toggle navigation</span>
				<span class="fa fa-bars"></span>
			</button>
			<!-- End Toggle -->

		</div><!--/end container-->



        <br>
        
        
        
        <hr>


		<!-- Collect the nav links, forms, and other content for toggling -->
		<div class="collapse navbar-collapse mega-menu navbar-responsive-collapse">
			<div class="container" style="margin-right:160px">
				<ul class="nav navbar-nav">
					<!-- Home -->
					<li class="active">
						<a href="2page1_index.aspx">
							Home
						</a>


					</li>
					<!-- End Home -->

					<!-- Pages -->
							
				
					<!-- End Pages -->

					  <li class="dropdown">
						<a  class="dropdown-toggle">
							Records
						</a>
						<ul class="dropdown-menu">
							<li>
								<a href="2page_Co_record.aspx">Co-Head Records</a>
							</li>
							<li>
								<a href="2page_RA_record.aspx">RA's Records</a>
								
							</li>
							
							<li >
								<a href="2page_project_data.aspx">Projects Records</a>
							</li>
                            <li >
								<a href="#">General  Records</a>
							</li>
						
							
						</ul>
					</li>
					

					<!-- Features -->
					<li >
						<a href="2page_RA_allocation.aspx">
							RA's Allocation
						</a>
						
					</li>
                  
					<!-- End Features -->

					<!-- Shortcodes -->
					<li>
						<a href="2page_group_assingment.aspx" >
						   Group Allocation
						</a>
						
					</li>
					<!-- End Shortcodes -->

					<!-- Demo Pages -->
					
                    <li >
                        <a href="2page_funds.aspx">Funds</a>
					</li>

                     <li >
                       <a href="2page_co_feedback.aspx">Co-Head Feedback</a>
					</li>




					<!-- End Demo Pages -->

				
				</ul>
			</div><!--/end container-->
		</div><!--/navbar-collapse-->
	</div>
	<!--=== End Header ===-->
    <br>
  <form id="Form1" runat="server"> 
    <div class="container">
    <br>
     <<div style ="padding-left:310px">
         <h1>Records of all available Intrnees</h1>
         </div>
     
   <div  style ="height:300px; width:2250px">
       <br>
     <br>
      

<asp:GridView ID="GridView1" runat="server"  B BorderWidth="1px" CellPadding="3" CellSpacing="2" Width="1050px"></asp:GridView>
    <br>
     <br>
	</div>
        </div>
        </form>
	<hr width="1190" style="border: 2px dashed #C0C0C0" color="#FFFFFF" size="6">
     <br> <br>
     <br>
	



	<!--=== Footer Version 1 ===-->
    <div class="footer-v1">
        <div class="footer">

          
            <div class="container">
                <div class="row">
                    

                      <!-- About -->
                 
					<div class="col-md-3 md-margin-bottom-40    pull-left">
						<a href="index.aspx"><img  class="footer-logo" src="../../Pics/log1.png" alt=""></a>
						<p>Namal Reasearch Centre is one of most innovative reasearch centres in Pakistan. Which is contributing its best to innovation.</p>
						<p>Namal's research Centre  is targeting solor energy cells, robotics, green energy soloutions and many more innovative aspects.</p>
					</div><!--/col-md-3-->
					<!-- End About -->


					<!-- Link List -->
					<div class="col-md-3 md-margin-bottom-40">
						<div class="headline"><h2>Useful Links</h2></div>
						<ul class="list-unstyled link-list">
							<li><a href="https://www.namal.edu.pk/">Namal Website</a><i class="fa fa-angle-right"></i></li>
							<li><a href="http://library.namal.edu.pk/">Namal Library</a><i class="fa fa-angle-right"></i></li>
	                        <li><a href="https://www.namal.edu.pk/lab-it-facilities/">Labs and IT</a><i class="fa fa-angle-right"></i></li>
							<li><a href="https://www.namal.edu.pk/communication">Comunication</a><i class="fa fa-angle-right"></i></li>
					
						</ul>
					</div><!--/col-md-3-->
					<!-- End Link List -->

					<!-- Address -->
					<div class="col-md-3 map-img md-margin-bottom-40">
						<div class="headline"><h2>Contact Us</h2></div>
						<address class="md-margin-bottom-40">
						Namal College <br />
							Mianwali,Pakistan <br />
                            Address: 30 Km Talagang Road, Mianwali, 42250, Pakistan <br />
							Phone:+92 (459) 236995<br />
							Email: <a  >info@namal.edu.pk</a><br />
							
						</address>
					</div><!--/col-md-3-->
					<!-- End Address -->


                    
                    <!-- Latest -->
                    <div class="col-md-3 md-margin-bottom-40  pull-right">
                        <div class="posts">
                            <div class="headline"><h2>Donate US</h2></div>
                            <ul class="list-unstyled latest-list">
                                <li>
                                    <p>Be the part of change. Donate us to contribute your part in innovation.
                                         You can donate us by clicking the button below and then by following instructions. </p>
                          
                               
                                </li>


                                <li>
                             
                                    <a href ="Page_donate.aspx" class="btn btn-success rounded" > Donate Us</a>





                                   </li>
                                
                            </ul>
                        </div>
                    </div><!--/col-md-3-->
                    <!-- End Latest -->









                </div>
            </div>
        </div><!--/footer-->

        <div class="copyright">
            <div class="container">
                <div class="row">
                   

                    <!-- Social Links -->
                    <div class="col-md-6">
                        <ul class="footer-socials list-inline">
                            <li>
                                <a href="#" class="tooltips" data-toggle="tooltip" data-placement="top" title="" data-original-title="Facebook">
                                    <i class="fa fa-facebook"></i>
                                </a>
                            </li>
                            <li>
                                <a href="#" class="tooltips" data-toggle="tooltip" data-placement="top" title="" data-original-title="Skype">
                                    <i class="fa fa-skype"></i>
                                </a>
                            </li>
                            <li>
                                <a href="#" class="tooltips" data-toggle="tooltip" data-placement="top" title="" data-original-title="Google Plus">
                                    <i class="fa fa-google-plus"></i>
                                </a>
                            </li>
                            <li>
                                <a href="#" class="tooltips" data-toggle="tooltip" data-placement="top" title="" data-original-title="Linkedin">
                                    <i class="fa fa-linkedin"></i>
                                </a>
                            </li>
                            <li>
                                <a href="#" class="tooltips" data-toggle="tooltip" data-placement="top" title="" data-original-title="Pinterest">
                                    <i class="fa fa-pinterest"></i>
                                </a>
                            </li>
                            <li>
                                <a href="#" class="tooltips" data-toggle="tooltip" data-placement="top" title="" data-original-title="Twitter">
                                    <i class="fa fa-twitter"></i>
                                </a>
                            </li>

                        </ul>
                    </div>
                    <!-- End Social Links -->
                </div>
            </div>
        </div><!--/copyright-->
    </div>
    <!--=== End Footer Version 1 ===-->
</div   ><!--/wrapper-->

<!-- JS Global Compulsory -->
<script type="text/javascript" src="assets/plugins/jquery/jquery.min.js"></script>
<script type="text/javascript" src="assets/plugins/jquery/jquery-migrate.min.js"></script>
<script type="text/javascript" src="assets/plugins/bootstrap/js/bootstrap.min.js"></script>
<!-- JS Implementing Plugins -->
<script type="text/javascript" src="assets/plugins/back-to-top.js"></script>
<script type="text/javascript" src="assets/plugins/smoothScroll.js"></script>
<script type="text/javascript" src="assets/plugins/parallax-slider/js/modernizr.js"></script>
<script type="text/javascript" src="assets/plugins/parallax-slider/js/jquery.cslider.js"></script>
<script type="text/javascript" src="assets/plugins/owl-carousel/owl-carousel/owl.carousel.js"></script>
<!-- JS Customization -->
<script type="text/javascript" src="assets/js/custom.js"></script>
<!-- JS Page Level -->
<script type="text/javascript" src="assets/js/app.js"></script>
<script type="text/javascript" src="assets/js/plugins/owl-carousel.js"></script>
<script type="text/javascript" src="assets/js/plugins/style-switcher.js"></script>
<script type="text/javascript" src="assets/js/plugins/parallax-slider.js"></script>
<script type="text/javascript">
    jQuery(document).ready(function () {
        App.init();
        OwlCarousel.initOwlCarousel();
        StyleSwitcher.initStyleSwitcher();
        ParallaxSlider.initParallaxSlider();
    });
</script>
<!--[if lt IE 9]>
	<script src="assets/plugins/respond.js"></script>
	<script src="assets/plugins/aspx5shiv.js"></script>
	<script src="assets/plugins/placeholder-IE-fixes.js"></script>
<![endif]-->

</body>

<!-- Cloned by RabinsXP.com-->
</aspx>


