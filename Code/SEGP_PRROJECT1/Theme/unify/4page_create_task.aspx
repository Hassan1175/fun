<%@ Page Language="C#" AutoEventWireup="true" CodeFile="4page_create_task.aspx.cs" Inherits="SEGP_PRROJECT1.Theme.unify._4page_create_task1" %>

<!DOCTYPE aspx>



<form id="form1" runat="server">




    <!--[if IE 8]> <aspx lang="en" class="ie8"> <![endif]-->
    <!--[if IE 9]> <aspx lang="en" class="ie9"> <![endif]-->
    <!--[if !IE]><!-->
    <aspx lang="en"> <!--<![endif]-->


<head>
	<title>Create Task</title>
    


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
        width: 101%;
    }
    .auto-style3
    {
        width: 447px;
    }
    .auto-style4
    {
        width: 173px;
    }
    .auto-style10
    {
        width: 293px
    }
    .auto-style12
    {
        width: 163px;
    }
    .auto-style13
    {
        width: 173px;
        height: 24px;
    }
    .auto-style14
    {
        width: 293px;
        height: 24px;
    }
    .auto-style15
    {
        width: 163px;
        height: 24px;
    }
    .auto-style16
    {
        width: 188px;
        height: 24px;
    }

     tr.spaceUnder > td
{
  padding-bottom: 1em;
}
    .auto-style17
    {
        width: 188px;
    }
    .auto-style18
    {
        width: 369px;
        height: 24px;
    }
    .auto-style19
    {
        width: 369px
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
    
	<br/>
    
    
<asp:Panel ID="Panel1" runat="server" Height="113px">

    
<h3 style="padding-left:375px"><u> Following groups will work under your supervision</u></h3>
    <br/>
    <br/>
    <table class="auto-style1">
        <tr>
            <td class="auto-style3">Select Group ID of the group to whom you want to assign task</td>
            <td>
                <asp:DropDownList ID="DropDownList1" runat="server" Height="32px"  Width="312px">
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td class="auto-style3">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style3">&nbsp;</td>
            <td>
                <asp:Button ID="Button1" runat="server" Text="SELECT" OnClick="Button1_Click" />
            </td>
        </tr>
    </table>
    </asp:Panel>

         <br>
     <br>

   
     <br>
   


<asp:Panel ID="Panel2" runat="server">



     <table class="auto-style1">
        <tr class="spaceUnder">
            <td class="auto-style13">Attachment</td>
            <td class="auto-style18">
                <asp:FileUpload ID="FileUpload1" runat="server" Height="35px" Width="167px" />
            </td>
            <td class="auto-style15">&nbsp;</td>
            <td class="auto-style16">
                &nbsp;</td>
        </tr>
        <tr class="spaceUnder">
            <td class="auto-style13">&nbsp;</td>
            <td class="auto-style18" >
                &nbsp;</td>
            <td class="auto-style15">
                &nbsp;</td>
            <td class="auto-style16">&nbsp;</td>
        </tr>
        <tr class="spaceUnder">
            <td class="auto-style13">Project Name</td>
            <td class="auto-style18">
                <asp:DropDownList ID="DropDownList2" runat="server" Height="30px" Width="167px">
                </asp:DropDownList>
            </td>
            <td class="auto-style15"></td>
            <td class="auto-style16">
                <asp:Button ID="Button4" runat="server" Height="48px" OnClick="Button3_Click" Text="Click here if you want to Select new Group ID" Width="333px" />
            </td>
        </tr>
        <tr class="spaceUnder">
            <td class="auto-style4">Task Name</td>
            <td class="auto-style19">
                <asp:TextBox ID="TextBox1" runat="server" Height="29px" Width="168px"></asp:TextBox>
            </td>
            <td class="auto-style12">&nbsp;</td>
            <td class="auto-style17">&nbsp;</td>
        </tr>
        <tr class="spaceUnder">
            <td class="auto-style4">Select RA</td>
            <td class="auto-style19">
                <asp:DropDownList ID="DropDownList3" runat="server" Height="24px" Width="173px">
                </asp:DropDownList>
            </td>
            <td class="auto-style12">&nbsp;</td>
            <td class="auto-style17">
                <asp:Button ID="Button6" runat="server" Height="48px" OnClick="Button5_Click" Text="Update Entry" Width="333px" />
            </td>
        </tr>
        <tr class="spaceUnder">
            <td class="auto-style4">Start Date</td>
            <td class="auto-style19">
                <asp:TextBox ID="TextBox2" runat="server" Height="26px" Width="174px" TextMode="Date"></asp:TextBox>
            </td>
            <td class="auto-style12">
                &nbsp;</td>
            <td class="auto-style17">&nbsp;</td>
        </tr>
        <tr class="spaceUnder">
            <td class="auto-style4">Finish Date</td>
            <td class="auto-style19">
                <asp:TextBox ID="TextBox3" runat="server" Height="26px" TextMode="Date" Width="174px"></asp:TextBox>
            </td>
            <td class="auto-style12">&nbsp;</td>
            <td class="auto-style17">&nbsp;</td>
        </tr>
        <tr class="spaceUnder">
            <td class="auto-style4">Briefing</td>
            <td class="auto-style19">
                <asp:TextBox ID="TextBox4" runat="server" Height="82px" Width="176px"></asp:TextBox>
            </td>
            <td class="auto-style12">&nbsp;</td>
            <td class="auto-style17">&nbsp;</td>
            <td></td>
        </tr>
         <tr class="spaceUnder">
             <td class="auto-style4">&nbsp;</td>
             <td class="auto-style19">&nbsp;</td>
             <td class="auto-style12">&nbsp;</td>
             <td class="auto-style17">&nbsp;</td>
         </tr>
         <tr class="spaceUnder">
             <td class="auto-style4">&nbsp;</td>
             <td class="auto-style19">
                 <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="DONE" Width="125px" />
             </td>
             <td class="auto-style12">&nbsp;</td>
             <td class="auto-style17">
                 &nbsp;</td>
         </tr>
         <tr>
             <td class="auto-style4">&nbsp;</td>
             <td class="auto-style19">&nbsp;</td>
             <td class="auto-style12">&nbsp;</td>
             <td class="auto-style17">&nbsp;</td>
         </tr>
         <tr>
             <td class="auto-style4">&nbsp;</td>
             <td class="auto-style19">
                 <asp:Label ID="Label1" runat="server" Text=""></asp:Label>
             </td>
             <td class="auto-style12">
                 &nbsp;</td>
             <td class="auto-style17">&nbsp;</td>
         </tr>
         <tr>
             <td class="auto-style4">&nbsp;</td>
             <td class="auto-style19">&nbsp;</td>
             <td class="auto-style12">&nbsp;</td>
             <td class="auto-style17">&nbsp;</td>
         </tr>
         <tr>
             <td class="auto-style4">&nbsp;</td>
             <td class="auto-style19">&nbsp;</td>
             <td class="auto-style12">&nbsp;</td>
             <td class="auto-style17">&nbsp;</td>
         </tr>
    </table>


</asp:Panel>


     <br>
    <br> 
    <br>

<asp:Panel ID="Panel3" runat="server" Height="81px">
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
    <asp:TextBox ID="TextBox6" runat="server"></asp:TextBox>
    </asp:Panel>


     <br>
    <br> 
    	 <hr width="1150" style="border: 3px dotted #0099CC" color="	#33FF5E" size="4">
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


