<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Page_login.aspx.cs" Inherits="SEGP_PROJECTNEWWW.Theme.unify.Page_login" %>

<!DOCTYPE aspx>
<!--[if IE 8]> <aspx lang="en" class="ie8"> <![endif]-->
<!--[if IE 9]> <aspx lang="en" class="ie9"> <![endif]-->
<!--[if !IE]><!--> <aspx lang="en"> <!--<![endif]-->

<!-- Cloned by RabinsXP.com-->
<head>
    <title>Login | SEGP-Project</title>

    <!-- Meta -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="">

    
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

    <!-- CSS Page Style -->
    <link rel="stylesheet" href="assets/css/pages/page_log_reg_v1.css">

    <!-- CSS Theme -->
    <link rel="stylesheet" href="assets/css/theme-colors/default.css" id="style_color">
    <link rel="stylesheet" href="assets/css/theme-skins/dark.css">

    <!-- CSS Customization -->
    <link rel="stylesheet" href="assets/css/custom.css">
</head>

<body>

<div class="wrapper">
    <!--=== Header ===-->
    <div class="header">
        <div class="container">
            <!-- Logo -->
            <a class="logo" href="index.aspx">
                 <img src="../../Pics/log1.png" />
            </a>
            <!-- End Logo -->

            <!-- Topbar -->
            <div class="topbar">
                <ul class="loginbar pull-right">
                   
                 
                    <li><a href="page_faq1.aspx">Help</a></li>
                    <li class="topbar-devider"></li>
                    <li><a href="Page_login1.aspx">Login</a></li>
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

       
		<!-- Collect the nav links, forms, and other content for toggling -->
		<div class="collapse navbar-collapse mega-menu navbar-responsive-collapse">
			<div class="container">
				<ul class="nav navbar-nav">
					<!-- Home -->
					<li class="active">
						<a href="index.aspx">
							Home
						</a>


					</li>
					<!-- End Home -->

					<!-- Pages -->
					<li>
						<a href="Page_about.aspx">
							About Us
						</a>
						
					</li>
					<!-- End Pages -->

					<!-- Blog -->
					
					<!-- End Blog -->

						<li class="dropdown">
						<a  class="dropdown-toggle">
							Projects
						</a>
						<ul class="dropdown-menu">
							<li>
								<a href="Èlectrical.aspx">Electrical Projects</a>
								
							</li>
							<li>
								<a href="computer.aspx">CS Projects</a>
								
							</li>
							<li class="dropdown-submenu">
								<a href="javascript:void(0);">General Projects</a>
								<ul class="dropdown-menu">
									<li><a href="#">2 Columns</a></li>
									<li><a href="#">3 Columns</a></li>
									
								</ul>
							</li>
							
						
							
						</ul>
					</li>
					<!-- Features -->
					<li >
						<a href="Page_funds.aspx">
							Funds
						</a>
						
					</li>
					<!-- End Features -->

					<!-- Shortcodes -->
					<li>
						<a href="Page_about_our_team.aspx" >
							Reasearchers
						</a>
						
					</li>
					<!-- End Shortcodes -->

					<!-- Demo Pages -->
					<li >
						
					

                        <a href="Page_contact1.aspx">Contact Us</a>


					</li>



					<!-- End Demo Pages -->
                    <!-- Search Block -->
                    <li>
                        <i class="search fa fa-search search-btn"></i>
                        <div class="search-open">
                            <div class="input-group animated fadeInDown">
                                <input type="text" class="form-control" placeholder="Search">
                                <span class="input-group-btn">
                                    <button class="btn-u" type="button">Go</button>
                                </span>
                            </div>
                        </div>
                    </li>
                    <!-- End Search Block -->
                </ul>
            </div><!--/end container-->
        </div><!--/navbar-collapse-->
    </div>
    <!--=== End Header ===-->


    <!--=== Content Part ===-->
    <div class="container content">
    	<div class="row">
            <div class="col-md-4 col-md-offset-4 col-sm-6 col-sm-offset-3">
                <form id="form1" runat="server">
                    <div class="reg-header">
                        <h2>Login to your account</h2>
                    </div>

                    <div class="input-group margin-bottom-20">
                        <span class="input-group-addon"><i class="fa fa-user"></i></span>
                        <input type="text" placeholder="Username" class="form-control">
                    </div>
                    <div class="input-group margin-bottom-20">
                        <span class="input-group-addon"><i class="fa fa-lock"></i></span>
                        <input type="password" placeholder="Password" class="form-control">
                    </div>

                    <div class="row">
                        <div class="col-md-6 checkbox">
                            <label><input type="checkbox"> Stay signed in</label>
                        </div>
                        <div class="col-md-6">
                            <button class="btn-u pull-right" type="submit">Login</button>
                        </div>
                    </div>

                    <hr>

                    <h4>Forget your Password ?</h4>
                    <p>no worries, <a class="color-green" href="#">click here</a> to reset your password.<asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Button" />
                    </p>
                </form>
            </div>
        </div><!--/row-->
    </div><!--/container-->
    <!--=== End Content Part ===-->
    
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
</div><!--/wrapper-->

<!-- JS Global Compulsory -->
<script type="text/javascript" src="assets/plugins/jquery/jquery.min.js"></script>
<script type="text/javascript" src="assets/plugins/jquery/jquery-migrate.min.js"></script>
<script type="text/javascript" src="assets/plugins/bootstrap/js/bootstrap.min.js"></script>
<!-- JS Implementing Plugins -->
<script type="text/javascript" src="assets/plugins/back-to-top.js"></script>
<script type="text/javascript" src="assets/plugins/smoothScroll.js"></script>
<!-- JS Customization -->
<script type="text/javascript" src="assets/js/custom.js"></script>
<!-- JS Page Level -->
<script type="text/javascript" src="assets/js/app.js"></script>
<script type="text/javascript" src="assets/js/plugins/style-switcher.js"></script>
<script type="text/javascript">
    jQuery(document).ready(function () {
        App.init();
        StyleSwitcher.initStyleSwitcher();
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

