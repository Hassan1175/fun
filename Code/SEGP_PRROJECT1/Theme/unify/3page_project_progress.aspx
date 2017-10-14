<%@ Page Language="C#" AutoEventWireup="true" CodeFile="3page_project_progress.aspx.cs" Inherits="SEGP_PROJECTNEWWW.Theme.unify._3page_project_detail" %>

<!DOCTYPE aspx>


<form id="form1" runat="server">


<!--[if IE 8]> <aspx lang="en" class="ie8"> <![endif]-->
<!--[if IE 9]> <aspx lang="en" class="ie9"> <![endif]-->
<!--[if !IE]><!--> <aspx lang="en"> <!--<![endif]-->


<head>
	<title>Progress</title>
    


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
        width: 86%;
        height: 70px;
    }
    .auto-style3
    {
        width: 394px;
    }
    .auto-style4
    {
        width: 243px
    }
    .auto-style5
    {
        width: 69%;
    }
    .auto-style6
    {
        width: 249px
    }
    .auto-style7
    {
        width: 301px;
    }
    .auto-style8
    {
        width: 66%;
    }
    .auto-style9
    {
        width: 171px;
    }
    .auto-style10
    {
        width: 257px;
    }
    .auto-style11
    {
        width: 196px;
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
			<div class="container" style="margin-left:-70px">
				<ul class="nav navbar-nav">
					<!-- Home -->
					<li class="active">
						<a href="3page1_index.aspx">
							Home
						</a>


					</li>
					<!-- End Home -->
                  

					
						
					<li >							
                        <a href="3page_project_progress.aspx">Progress</a>


					</li>
                  
                     <li >
                      <a href="3page_project_record.aspx">Personal-Records</a>
					</li>


                   



                    <hr>


					<!-- End Demo Pages -->

				
				</ul>
			</div><!--/end container-->
		</div><!--/navbar-collapse-->
	</div>
	<!--=== End Header ===-->
    
	

     <br>
<asp:Panel ID="Panel1" runat="server" Height="90px" Width="700px">
    <table class="auto-style1">
        <tr>
            <td class="auto-style3">Select Group_ID from the list where you are working</td>
            <td class="auto-style4">
                <asp:DropDownList ID="DropDownList1" runat="server" Height="22px" Width="162px">
                </asp:DropDownList>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style3">&nbsp;</td>
            <td class="auto-style4">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style3">&nbsp;</td>
            <td class="auto-style4">
                <asp:Button ID="Button1" runat="server" Text="Button" OnClick="Button1_Click" />
            </td>
            <td>&nbsp;</td>
        </tr>
    </table>
    </asp:Panel>

<asp:Panel ID="Panel2" runat="server" Height="90px" Width="700px">
    <table class="auto-style5">
        <tr>
            <td class="auto-style6">Select Project Name about whom
                <br />
                you want to update about progress</td>
            <td class="auto-style7">
                <asp:DropDownList ID="DropDownList2" runat="server" Height="18px" Width="184px">
                </asp:DropDownList>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style6">&nbsp;</td>
            <td class="auto-style7">
                <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="Button" />
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style6">&nbsp;</td>
            <td class="auto-style7">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
    </table>
    </asp:Panel>
<asp:Panel ID="Panel3" runat="server" Height="35px" Width="937px">
    <table class="auto-style8">
        <tr>
            <td class="auto-style9">Relevent Co_Head</td>
            <td class="auto-style11">
                <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
            </td>
            <td>
                <asp:TextBox ID="TextBox6" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style9">&nbsp;</td>
            <td class="auto-style11">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style9">Select Task Name</td>
            <td class="auto-style11">
                <asp:DropDownList ID="DropDownList3" runat="server" Height="23px" Width="131px">
                </asp:DropDownList>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style9">&nbsp;</td>
            <td class="auto-style11">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style9">Done Work(in %)</td>
            <td class="auto-style11">
                <asp:DropDownList ID="DropDownList4" runat="server">
                </asp:DropDownList>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="DropDownList4" ErrorMessage="Select percentage performance"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style9">&nbsp;</td>
            <td class="auto-style11">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style9">Problem Faced</td>
            <td class="auto-style11">
                <asp:TextBox ID="TextBox1" runat="server" Height="47px"></asp:TextBox>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style9">&nbsp;</td>
            <td class="auto-style11">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style9">General Briefing</td>
            <td class="auto-style11">
                <asp:TextBox ID="TextBox2" runat="server" Height="42px"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox2" ErrorMessage="Fill that requirment"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style9">&nbsp;</td>
            <td class="auto-style11">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style9">Material Required(if any)</td>
            <td class="auto-style11">
                <asp:TextBox ID="TextBox3" runat="server" Height="42px"></asp:TextBox>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style9">&nbsp;</td>
            <td class="auto-style11">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style9">Date</td>
            <td class="auto-style11">
                <asp:TextBox ID="TextBox4" runat="server" Height="27px" TextMode="Date"></asp:TextBox>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style9">&nbsp;</td>
            <td class="auto-style11">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style9">&nbsp;</td>
            <td class="auto-style11">
                <asp:Button ID="Button3" runat="server" Text="Button" Width="109px" OnClick="Button3_Click" />
            </td>
            <td>
                <asp:Button ID="Button4" runat="server" Height="39px" OnClick="Button4_Click" Text="Cick here to select new Group-id" Width="248px" />
            </td>
        </tr>
        <tr>
            <td class="auto-style9">&nbsp;</td>
            <td class="auto-style11">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style9">&nbsp;</td>
            <td class="auto-style11">
                <asp:Label ID="Label1" runat="server" Text=""></asp:Label>
            </td>
            <td>&nbsp;</td>
        </tr>
    </table>
    </asp:Panel>
     <br>
     <br>
     <br>
         <hr width="1190" style="border: 2px dashed #C0C0C0" color="#FFFFFF" size="6">
     <br>
     <br>

     <br> <br>
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



