<%@ Page Language="C#" AutoEventWireup="true" CodeFile="sign.aspx.cs" Inherits="SEGP_PRROJECT1.Theme.unify.sign" %>

<!DOCTYPE aspx>








    <!--[if IE 8]> <aspx lang="en" class="ie8"> <![endif]-->
    <!--[if IE 9]> <aspx lang="en" class="ie9"> <![endif]-->
    <!--[if !IE]><!-->
    <aspx lang="en"> <!--<![endif]-->


<head>
	<title>Admin-Main</title>
    


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
        width: 162px;
        text-align: right;
    }
    .auto-style2
    {
        width: 320px;
    }
    .auto-style3
    {
        width: 162px;
        text-align: right;
        height: 24px;
    }
    .auto-style4
    {
        width: 320px;
        height: 24px;
    }
    .auto-style5
    {
        height: 24px;
        color: #CC0000;
    }
    .auto-style6
    {
        color: #CC0000;
    }
        #form1
        {
            height: 223px;
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
								<a href="2page_FYP_record.aspx">FYP/Internee Records</a>
							</li>
							<li >
								<a href="2page_project_record.aspx">Projects Records</a>
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
    
	

	<!--=== Content Part ===-->
	<br> 
    <br>

 
    <div style="padding-left:270px">
     

    <form id="form1" runat="server">


    
    <table class="nav-justified">
        <tr>
            <td class="auto-style1">Name</td>
            <td class="auto-style2">
                <asp:TextBox ID="TextBoxN" runat="server" height="40px" Width="250px"></asp:TextBox>
            </td>
            <td class="auto-style6">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="TextBoxN" ErrorMessage="Name is required"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style1">User&nbsp; Name</td>
            <td class="auto-style2">
                <asp:TextBox ID="TextBoxU" runat="server" height="40px" Width="250px"></asp:TextBox>
            </td>
            <td class="auto-style6">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBoxU" ErrorMessage="User Name is required"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style1">Email Address</td>
            <td class="auto-style2">
                <asp:TextBox ID="TextBoxE" runat="server" height="40px" Width="250px"></asp:TextBox>
            </td>
            <td class="auto-style6">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBoxE" ErrorMessage="Email isrequired"></asp:RequiredFieldValidator>
                <br />
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ErrorMessage="In Valid Email ID" ControlToValidate="TextBoxE" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style3">User Type</td>
            <td class="auto-style4">
                <asp:DropDownList ID="DropDownListT" runat="server" Height="40px" Width="250px">
                    <asp:ListItem>Select User Role</asp:ListItem>
                      <asp:ListItem>Admin</asp:ListItem>
                    <asp:ListItem>Researcher</asp:ListItem>
                    <asp:ListItem>Co_Head</asp:ListItem>
                </asp:DropDownList>
            </td>
            <td class="auto-style5">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="DropDownListT" ErrorMessage="User Role is required" InitialValue="Select User Type"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style1">Password</td>
            <td class="auto-style2">
                <asp:TextBox ID="TextBoxP" runat="server" Height="40px" Width="250px" TextMode="Password"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="TextBoxP" ErrorMessage="Passward is required" style="color: #CC0000"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style1">Confrim Password</td>
            <td class="auto-style2">
                <asp:TextBox ID="TextBoxCR" runat="server" Height="40px"  Width="250px" TextMode="Password"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="TextBoxCR" ErrorMessage="Please confrim your password" style="color: #CC0000"></asp:RequiredFieldValidator>
&nbsp;<br />
                <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="TextBoxP" ControlToValidate="TextBoxCR" ErrorMessage="Both passowrds should be same" style="color: #CC0000"></asp:CompareValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style1">Joining Date</td>
            <td class="auto-style2">
                <asp:TextBox ID="TextBoxD" runat="server" Height="40px"  Width="250px" TextMode="Date"></asp:TextBox>
            </td>
            <td>&nbsp;</td>
     
            
        </tr>
        <tr>
            <td class="auto-style1">&nbsp;</td>
            <td class="auto-style2">
                &nbsp;</td>;
            <td>&nbsp;</td>
     
            
        </tr>
        </table>

  

        <div style="padding-left:207px">
         <asp:Button ID="Button1" runat="server" Text="SIGN UP" OnClick="Button1_Click" height="40px" Width="250px"></asp:Button>
            <h3 style="color:#FF0000">
                       <asp:Label ID="Label1" runat="server"  ></asp:Label>

            </h3>
             </div>   

        <br />
        <br />


         </form>
        </div>
    
     <br />
     <br />
     <br />
     <br />
     <br />
        <br />
     <br />
        <br />


    <div style="padding-left:320px">
    <a href="update_entry.aspx"><h2>Click Here If You Want to Update Any Registered Entry</h2></a>
        </div>
    <hr width="1190" style="border: 2px dashed #C0C0C0" color="#FFFFFF" size="6">


    
    <br>
    <br>
    <br>


       

<!--=== End Footer Version 1 ===-->
</div><!--/wrapper-->

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




