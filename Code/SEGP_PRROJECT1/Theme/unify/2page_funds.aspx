<%@ Page Language="C#" AutoEventWireup="true" CodeFile="2page_funds.aspx.cs" Inherits="SEGP_PRROJECT1.Theme.unify._2page_funds" %>

<!DOCTYPE aspx>



<form id="form1" runat="server">


    <!--[if IE 8]> <aspx lang="en" class="ie8"> <![endif]-->
    <!--[if IE 9]> <aspx lang="en" class="ie9"> <![endif]-->
    <!--[if !IE]><!-->
    <aspx lang="en"> <!--<![endif]-->


<head>
	<title>Funds</title>
    


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
 
    <br/>
  
	<!--=== Footer Version 1 ===-->
    <!--=== End Footer Version 1 ===-->
    <div class ="container">
  


              <table class="auto-style1">
                  <tr>
                      <td class="auto-style2">&nbsp;</td>
                      <td class="auto-style3">&nbsp;</td>
                      <td>&nbsp;</td>
                  </tr>
                  <tr>
                      <td class="auto-style2">Project</td>
                      <td class="auto-style3">
                          <asp:DropDownList ID="DropDownList1" runat="server" Height="39px" Width="202px">
                          </asp:DropDownList>
                      </td>
                      <td>
                          <asp:Button ID="Button2" runat="server" Text="Update Entry" height="40px"  Width="342px" OnClick="Button2_Click" />
                      </td>
                  </tr>
                  <tr>
                      <td class="auto-style2">&nbsp;</td>
                      <td class="auto-style3">&nbsp;</td>
                      <td>&nbsp;</td>
                  </tr>
                  <tr>
                      <td class="auto-style4">Curency Type</td>
                      <td class="auto-style5">
                          <asp:DropDownList ID="DropDownList2" runat="server" Height="39px" Width="202px">
                              <asp:ListItem>PKR</asp:ListItem>
                              <asp:ListItem>$</asp:ListItem>
                              <asp:ListItem>€</asp:ListItem>
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
                      <td class="auto-style2">Estimated Cost</td>
                      <td class="auto-style3">
                          <asp:TextBox ID="TextBox1" runat="server" Height="39px" Width="202px"></asp:TextBox>
                      </td>
                      <td>
                          <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToValidate="TextBox1" ErrorMessage="Enter a valid number" Operator="DataTypeCheck" Type="Integer"></asp:CompareValidator>
                      </td>
                  </tr>
                  <tr>
                      <td class="auto-style2">&nbsp;</td>
                      <td class="auto-style3">&nbsp;</td>
                      <td>&nbsp;</td>
                  </tr>
                  <tr>
                      <td class="auto-style2">Total Grant</td>
                      <td class="auto-style3">
                          <asp:TextBox ID="TextBox2" runat="server" Height="39px" Width="202px"></asp:TextBox>
                      </td>
                      <td>
                        <asp:CompareValidator ID="CompareValidator2" runat="server" ControlToValidate="TextBox2" ErrorMessage="Enter a valid number" Operator="DataTypeCheck" Type="Integer"></asp:CompareValidator>
                      </td>
                  </tr>
                  <tr>
                      <td class="auto-style2">&nbsp;</td>
                      <td class="auto-style3">&nbsp;</td>
                      <td>&nbsp;</td>
                  </tr>
                  <tr>
                      <td class="auto-style2">Used Grant</td>
                      <td class="auto-style3">
                          <asp:TextBox ID="TextBox3" runat="server" Height="39px" Width="202px"></asp:TextBox>
                      </td>
                      <td>
 <asp:CompareValidator ID="CompareValidator3" runat="server" ControlToValidate="TextBox3" ErrorMessage="Enter a valid number" Operator="DataTypeCheck" Type="Integer"></asp:CompareValidator>
                      </td>
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
                      <td class="auto-style2">Donar Name(Optional)</td>
                      <td class="auto-style3">
                          <asp:TextBox ID="TextBox4" runat="server" Height="39px" Width="200px"></asp:TextBox>
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
                          <asp:Button ID="Button1" runat="server" Text="DONE" OnClick="Button1_Click" />
                      </td>
                      <td>
                          &nbsp;</td>
                  </tr>
              </table>

<asp:Panel ID="Panel1" runat="server" Height="104px">
    <asp:TextBox ID="TextBox6" runat="server"></asp:TextBox>



</asp:Panel>



        <br/>
        <br/>
        <br/>
        <br/>
         <hr width="1190" style="border: 2px dashed #C0C0C0" color="#FFFFFF" size="6">
        <br/>
        <br/>
        <br/>
        <br/>

    </div>
    </div>

    <!--/wrapper-->

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



