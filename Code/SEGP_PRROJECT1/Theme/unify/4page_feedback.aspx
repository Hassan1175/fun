<%@ Page Language="C#" AutoEventWireup="true" CodeFile="4page_feedback.aspx.cs" Inherits="SEGP_PRROJECT1.Theme.feedback" %>


<!DOCTYPE aspx>




<form id="form1" runat="server">




    <!--[if IE 8]> <aspx lang="en" class="ie8"> <![endif]-->
    <!--[if IE 9]> <aspx lang="en" class="ie9"> <![endif]-->
    <!--[if !IE]><!-->
    <aspx lang="en"> <!--<![endif]-->


<head>
	<title>Feedback</title>
    


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





    

    
<style type="text/css">
    .auto-style1
    {
        width: 100%;
    }
    .auto-style2
    {
        width: 220px;
    }
    .auto-style3
    {
        width: 280px;
    }
    .auto-style4
    {
        width: 220px;
        height: 19px;
    }
    .auto-style5
    {
        width: 280px;
        height: 19px;
    }
    .auto-style6
    {
        height: 19px;
    }
</style>
    


</head>

<body>

    <br>
    <br>
<div class="wrapper">
	<!--=== Header ===-->
	<div class="header">
		<div class="container">
			<!-- Logo -->
			<a class="logo" href="3page1_index.aspx">
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
			<div class="container" style="margin-left:-260px">
				<ul class="nav navbar-nav">
					<!-- Home -->
					<li class="active">
						<a href="4page1_index.aspx">
							Home
						</a>


					</li>
					<!-- End Home -->
                       <li >
                        <a href="4page_create_task.aspx">Create Task</a>
					</li>

					
					<li >							
                        <a href="4page_progress.aspx">Check Progress</a>


					</li>
                   <li >
                         <a href="4page_feedback.aspx">Feedback to Admin</a>
					</li>
                    

                   



                    <hr>


					<!-- End Demo Pages -->

				
				</ul>
			</div><!--/end container-->
		</div><!--/navbar-collapse-->
	</div>
	<!--=== End Header ===-->
    
	

   
    <div class="container">
    
        </div>


      <table class="auto-style1">
                  <tr>
                      <td class="auto-style2">&nbsp;</td>
                      <td class="auto-style3">&nbsp;</td>
                      <td>&nbsp;</td>
                  </tr>
                  <tr>
                      <td class="auto-style2">Co_Head Name</td>
                      <td class="auto-style3">
                          <asp:TextBox ID="TextBox1" runat="server" Height="39px" Width="202px"></asp:TextBox>
                      </td>
                      <td>&nbsp;</td>
                  </tr>
                  <tr>
                      <td class="auto-style2">&nbsp;</td>
                      <td class="auto-style3">&nbsp;</td>
                      <td>&nbsp;</td>
                  </tr>
                  <tr>
                      <td class="auto-style4">Project Name</td>
                      <td class="auto-style5">
                          <asp:DropDownList ID="DropDownList1" runat="server" Height="39px" Width="202px">
                          </asp:DropDownList>
                      </td>
                      <td class="auto-style6"></td>
                  </tr>
                  <tr>
                      <td class="auto-style2">&nbsp;</td>
                      <td class="auto-style3">&nbsp;</td>
                      <td>&nbsp;</td>
                  </tr>
                  <tr>
                      <td class="auto-style2">Project Briefing</td>
                      <td class="auto-style3">
                          <asp:TextBox ID="TextBox2" runat="server" Height="39px" Width="202px"></asp:TextBox>
                      </td>
                      <td>
                             <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1" ErrorMessage="Briefing is required"></asp:RequiredFieldValidator>
                      </td>
                  </tr>
                  <tr>
                      <td class="auto-style2">&nbsp;</td>
                      <td class="auto-style3">&nbsp;</td>
                      <td>&nbsp;</td>
                  </tr>
                  <tr>
                      <td class="auto-style2">General Briefing</td>
                      <td class="auto-style3">
                          <asp:TextBox ID="TextBox3" runat="server" Height="39px" Width="202px"></asp:TextBox>
                      </td>
                      <td>
                          &nbsp;</td>
                  </tr>
                  <tr>
                      <td class="auto-style2">&nbsp;</td>
                      <td class="auto-style3">&nbsp;</td>
                      <td>&nbsp;</td>
                  </tr>
                  <tr>
                      <td class="auto-style2">Problem Faced</td>
                      <td class="auto-style3">
                          <asp:TextBox ID="TextBox4" runat="server" Height="39px" Width="202px"></asp:TextBox>
                      </td>
                      <td>
                          &nbsp;</td>
                  </tr>
                  <tr>
                      <td class="auto-style2">&nbsp;</td>
                      <td class="auto-style3">&nbsp;</td>
                      <td>&nbsp;</td>
                  </tr>
                  <tr>
                      <td class="auto-style2">Date</td>
                      <td class="auto-style3">
                          <asp:TextBox ID="TextBox5" runat="server" Height="39px" TextMode="Date" Width="199px"></asp:TextBox>
                      </td>
                      <td>&nbsp;</td>
                  </tr>
                  <tr>
                      <td class="auto-style2">&nbsp;</td>
                      <td class="auto-style3">&nbsp;</td>
                      <td>&nbsp;</td>
                  </tr>
                  <tr>
                      <td class="auto-style2">&nbsp;</td>
                      <td class="auto-style3">
                          <asp:Button ID="Button1" runat="server" Text="DONE" OnClick="Button1_Click" Width="101px" />
                      </td>
                      <td>
                          &nbsp;</td>
                  </tr>
                  <tr>
                      <td class="auto-style2">&nbsp;</td>
                      <td class="auto-style3">&nbsp;</td>
                      <td>&nbsp;</td>
                  </tr>
                  <tr>
                      <td class="auto-style2">&nbsp;</td>
                      <td class="auto-style3">
                          &nbsp;</td>
                      <td>
                          &nbsp;</td>
                  </tr>
              </table>



     <br>
     <br>
     <br>
     	 <hr width="1150" style="border: 3px dotted #0099CC" color="	#33FF5E" size="4">
     <br>

     <br> <br>
     <br>
	















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

</form>


