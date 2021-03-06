﻿<%@ Page Language="C#" AutoEventWireup="true" CodeFile="2page_project_record.aspx.cs" Inherits="SEGP_PRROJECT1.Theme.unify._2page_project_record" %>

<!DOCTYPE aspx>




<!--[if IE 8]> <aspx lang="en" class="ie8"> <![endif]-->
<!--[if IE 9]> <aspx lang="en" class="ie9"> <![endif]-->
<!--[if !IE]><!-->
<aspx lang="en"> <!--<![endif]-->


<head>
	<title>Project-Record</title>
    


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
        width: 306px;
        font-weight: bold;
        text-align: right;
    }
    .auto-style3
    {
        width: 306px;
        height: 20px;
        font-weight: bold;
        text-align: right;
    }
    .auto-style4
    {
        width: 340px;
        height: 20px;
    }
    #Form1
    {
        height: 212px;
    }
    .auto-style5
    {
        width: 340px
    }
    tr.spaceUnder > td
{
  padding-bottom: 1em;
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
       <br>
       <br>
     
 <form id="Form1" runat="server"> 

        <table class="nav-justified">
            <tr class="spaceUnder">
                <td class="auto-style1">Project Name</td>
                <td class="auto-style5">
                    <asp:TextBox ID="TextBox1" runat="server" Width="256px" Height="42px"></asp:TextBox>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1" ErrorMessage="Enter the project name" ForeColor="#CC0000"></asp:RequiredFieldValidator>
                </td>
            
            </tr>
            
            <tr class="spaceUnder">
                <td class="auto-style1">Estimated Cost</td>
                <td class="auto-style5">
                    <asp:TextBox ID="TextBox2" runat="server" Width="256px" Height="42px"></asp:TextBox>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox2" ErrorMessage="Enter the estimated cost" ForeColor="#CC0000"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr class="spaceUnder">
                <td class="auto-style1">Category</td>
                <td class="auto-style5">
                    <asp:DropDownList ID="DropDownList1" runat="server" Height="45px" Width="255px">
                        <asp:ListItem>Select Category</asp:ListItem>
                        <asp:ListItem>Computer Science</asp:ListItem>
                        <asp:ListItem>Electrical</asp:ListItem>
                        <asp:ListItem>General</asp:ListItem>
                    </asp:DropDownList>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="DropDownList1" ErrorMessage="Select Category" ForeColor="#CC0000"></asp:RequiredFieldValidator>
                </td>
            </tr>


          
            <tr class="spaceUnder">
                <td class="auto-style3">Donar Name(Optional)</td>
                <td class="auto-style4">
                    <asp:TextBox ID="TextBox3" runat="server" Width="256px" Height="42px"></asp:TextBox>
                </td>
                <td class="about"></td>
            </tr>

            <tr class="spaceUnder">
                <td class="auto-style1">Description</td>
                <td class="auto-style5">
                    <asp:TextBox ID="TextBox4" runat="server" Width="259px" Height="42px"></asp:TextBox>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="TextBox4" ErrorMessage="Enter project description" ForeColor="#CC0000"></asp:RequiredFieldValidator>
                </td>
            </tr>
        </table>
        <div style="padding-left:440px">
        <asp:Button ID="Button1" runat="server" Text="DONE" OnClick="Button1_Click" Width="75px" />

        <asp:Label ID="Label1" runat="server" Text=""></asp:Label>
            </div>
        </form>
	
     <br>
    
     <br>
     <br>
	

     <br>
    
     <br>
     <br>
	

    <br>
    
     <div style="padding-left:200px">
    <a href="2page_update_project_entry.aspx"><h2>Click Here If you want to update any registered Entry</h2></a>
        </div>
    <hr width="1190" style="border: 2px dashed #C0C0C0" color="#FFFFFF" size="6">
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


