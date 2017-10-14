<%@ Page Language="C#" AutoEventWireup="true" CodeFile="2page_group_assingment.aspx.cs" Inherits="SEGP_PRROJECT1.Theme.unify._2page_group_assingment" %>

<!DOCTYPE aspx>


<form id="form1" runat="server">


    <!--[if IE 8]> <aspx lang="en" class="ie8"> <![endif]-->
    <!--[if IE 9]> <aspx lang="en" class="ie9"> <![endif]-->
    <!--[if !IE]><!-->
    <aspx lang="en"> <!--<![endif]-->


<head>
	<title>Group Formation</title>
    


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
    .auto-style13
    {
        width: 308px;
        text-align: center;
        height: 29px;
    }
    .auto-style20
    {
        width: 157px;
        height: 20px;
    }
    .auto-style21
    {
        width: 157px;
    }
    .auto-style23
    {
        width: 157px;
        height: 29px;
    }
    .auto-style26
    {
        width: 147px;
        height: 20px;
    }
    .auto-style27
    {
        width: 147px;
    }
    .auto-style29
    {
        width: 147px;
        height: 29px;
    }
    .auto-style45
    {
        text-align: center;
        width: 308px;
    }
    .auto-style47
    {
        width: 308px;
        height: 20px;
    }
    .auto-style48
    {
        width: 204px;
        height: 20px;
    }
    .auto-style50
    {
        width: 204px;
        height: 29px;
    }
    .auto-style51
    {
        width: 204px;
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
     <br>
 
    <div class="container">
     <table class="nav-justified">
         <tr>
             <td class="auto-style48">&nbsp;</td>
             <td class="auto-style47">
                 &nbsp;</td>
             <td class="auto-style20">&nbsp;</td>
             <td class="auto-style26">&nbsp;</td>
         </tr>
         <tr>
             <td class="auto-style48">Choose Attachment</td>
             <td class="auto-style47">
                 <asp:FileUpload ID="FileUpload1" runat="server" Height="42px" Width="211px" />
             </td>
             <td class="auto-style20">&nbsp;</td>
             <td class="auto-style26">&nbsp;</td>
         </tr>
         <tr>
             <td class="auto-style48">&nbsp;</td>
             <td class="auto-style47">
                 &nbsp;</td>
             <td class="auto-style20">&nbsp;</td>
             <td class="auto-style26">&nbsp;</td>
         </tr>
         <tr>
             <td class="auto-style48">Select Co_Head</td>
             <td class="auto-style47">
                 <asp:DropDownList ID="DropDownList1" runat="server" Height="42px" Width="211px">
                 </asp:DropDownList>
             </td>
             <td class="auto-style20">&nbsp;</td>
             <td class="auto-style26">&nbsp;</td>
         </tr>
         <tr>
             <td class="auto-style51">&nbsp;</td>
             <td class="auto-style45">&nbsp;</td>
             <td class="auto-style21">&nbsp;</td>
             <td class="auto-style27">&nbsp;</td>
         </tr>
         <tr>
             <td class="auto-style48">
                 Select Project</td>
             <td class="auto-style47">
                 <asp:DropDownList ID="DropDownList2" runat="server" Height="42px" Width="211px">
                 </asp:DropDownList>
             </td>
             <td class="auto-style20">
                 &nbsp;</td>
             <td class="auto-style26">
                 &nbsp;</td>
         </tr>
         <tr>
             <td class="auto-style48">&nbsp;</td>
             <td class="auto-style47">&nbsp;</td>
             <td class="auto-style20"></td>
             <td class="auto-style26">&nbsp;</td>
         </tr>
         <tr>
             <td class="auto-style48">Group ID</td>
             <td class="auto-style47">
                 <asp:DropDownList ID="DropDownList3" runat="server" Height="42px" Width="211px">
                 </asp:DropDownList>
                 </td>
             <td class="auto-style20"></td>
             <td class="auto-style26">&nbsp;</td>
         </tr>
         <tr>
             <td class="auto-style50"></td>
             <td class="auto-style13">
                 &nbsp;</td>
             <td class="auto-style23"></td>
             <td class="auto-style29">
                 
                   &nbsp;</td>
         </tr>
         <tr>
             <td class="auto-style48">Project Briefing</td>
             <td class="auto-style47">
                 <asp:TextBox ID="TextBox1" runat="server" Height="42px" Width="211px"></asp:TextBox>
             </td>
             <td class="auto-style20">
                 
                   <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1" ErrorMessage="Briefing is required"></asp:RequiredFieldValidator>
             </td>
             <td class="auto-style26">&nbsp;</td>
         </tr>
         <tr>
             <td class="auto-style51">&nbsp;</td>
             <td class="auto-style45">
                 &nbsp;</td>
             <td class="auto-style21">&nbsp;</td>
             <td class="auto-style27">&nbsp;</td>
         </tr>
         <tr>
             <td class="auto-style51">&nbsp;</td>
             <td class="auto-style45">
                 &nbsp;</td>
             <td class="auto-style21">&nbsp;</td>
             <td class="auto-style27">&nbsp;</td>
         </tr>
         <tr>
             <td class="auto-style48">&nbsp;</td>
             <td class="auto-style47">
                 <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="DONE" Width="105px" />
             </td>
             <td class="auto-style20">&nbsp;</td>
             <td class="auto-style26">&nbsp;</td>
         </tr>
         <tr>
             <td class="auto-style51">&nbsp;</td>
             <td class="auto-style45">
                 &nbsp;</td>
             <td class="auto-style21">&nbsp;</td>
             <td class="auto-style27">&nbsp;</td>
         </tr>
         <tr>
             <td class="auto-style51">&nbsp;</td>
             <td class="auto-style45">
                 <asp:Label ID="Label1" runat="server" Text=""></asp:Label>
             </td>
             <td class="auto-style21">&nbsp;</td>
             <td class="auto-style27">&nbsp;</td>
         </tr>
    </table>
        </div>
     <br>
     <br>
     <br>
     <hr width="1190" style="border: 2px dashed #C0C0C0" color="#FFFFFF" size="6">
     <br>
     <br>
     <br>
  
	
	<!--=== Footer Version 1 ===-->

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


