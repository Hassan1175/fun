<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="2page1_index.aspx.cs" Inherits="SEGP_PROJECTNEWWW.Theme.unify._2page1_index" %>

<!DOCTYPE aspx>


<form id="form1" runat="server">


<!--[if IE 8]> <aspx lang="en" class="ie8"> <![endif]-->
<!--[if IE 9]> <aspx lang="en" class="ie9"> <![endif]-->
<!--[if !IE]><!--> <aspx lang="en"> <!--<![endif]-->


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
        width: 100%;
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
    
	

	<!--=== Content Part ===-->
	<br> 
    <br>

  <div id ="lio" runat="server">



  </div>


     <div class="pull-right" style="padding-right:80px; height: 24px;" >
    

       

        <div>
                            <a href="sign.aspx" class="btn btn-success rounded hover-effect" > <h1 class="btn bg-color-white"><b> Add New User</b></h1></a>
       



                        </div>




        <!--=== Here Ends ===-->

        </div>



    <div id="newsmsds" runat="server"> </div>
<h2 class="text-center"><b> Best Projects Details </b>(The projects on front page) </h2>
    
    
    <div class="container">



	
        </div>






    <br>
    <br>
    <br>
    
    <div class="container">


         <div style ="height:350px; width:1150px; overflow:auto;">

             <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" DataKeyNames="ID" DataSourceID="SqlDataSource1">
                 <Columns>
                     <asp:CommandField ShowEditButton="True" />
                     <asp:BoundField DataField="ID" HeaderText="ID" InsertVisible="False" ReadOnly="True" SortExpression="ID" />
                     <asp:BoundField DataField="Title" HeaderText="Title" SortExpression="Title" />
                     <asp:BoundField DataField="Content" HeaderText="Content" SortExpression="Content" />
                 </Columns>
             </asp:GridView>
             </div>
    

        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:SEGPConnectionString3 %>" DeleteCommand="DELETE FROM [projectT] WHERE [ID] = @ID" InsertCommand="INSERT INTO [projectT] ([Title], [Content]) VALUES (@Title, @Content)" SelectCommand="SELECT * FROM [projectT]" UpdateCommand="UPDATE [projectT] SET [Title] = @Title, [Content] = @Content WHERE [ID] = @ID">
            <DeleteParameters>
                <asp:Parameter Name="ID" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="Title" Type="String" />
                <asp:Parameter Name="Content" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="Title" Type="String" />
                <asp:Parameter Name="Content" Type="String" />
                <asp:Parameter Name="ID" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>


        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:SEGPConnectionString5 %>" SelectCommand="SELECT * FROM [main_table]" DeleteCommand="DELETE FROM [main_table] WHERE [ID] = @ID" InsertCommand="INSERT INTO [main_table] ([Title], [Content]) VALUES (@Title, @Content)" ProviderName="System.Data.SqlClient" UpdateCommand="UPDATE [main_table] SET [Title] = @Title, [Content] = @Content WHERE [ID] = @ID">
            <DeleteParameters>
                <asp:Parameter Name="ID" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="Title" Type="String" />
                <asp:Parameter Name="Content" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="Title" Type="String" />
                <asp:Parameter Name="Content" Type="String" />
                <asp:Parameter Name="ID" Type="Int32" />
            </UpdateParameters>

        </asp:SqlDataSource>

        
    <br>
    <br>
        <hr width="1150" style="border: 3px dotted #0099CC" color="	#33FF5E" size="4">



    <br>
    <br>
    
        <h2 class="text-center"><b> Remaining Projects Details </b> </h2>
          <br>
    <br>
    
        <asp:Panel ID="Panel3" runat="server">


         <div style ="height:350px; width:1150px; overflow:auto;">



              <asp:GridView ID="GridView4" runat="server"  AutoGenerateColumns="False" DataSourceID="SqlDataSource2"  OnSelectedIndexChanged="Page_Load" ShowFooter="True" DataKeyNames="ID" ShowHeaderWhenEmpty="True" HorizontalAlign="Justify">
        <Columns>
           
            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
            <asp:TemplateField HeaderText="ID" InsertVisible="False" SortExpression="ID">
                <EditItemTemplate>
                    <asp:Label ID="Label1" runat="server" Text='<%# Eval("ID") %>'></asp:Label>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label1" runat="server" Text='<%# Bind("ID") %>'></asp:Label>
                </ItemTemplate>
              
                <FooterTemplate>
                     <asp:LinkButton ID="Insertkey" OnClick="Insertkey_Click" runat="server">INSERT</asp:LinkButton>

                </FooterTemplate>
        

            </asp:TemplateField>
            <asp:TemplateField HeaderText="Title" SortExpression="Title">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("Title") %>'></asp:TextBox>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label2" runat="server" Text='<%# Bind("Title") %>' ></asp:Label>
                </ItemTemplate>
                  <FooterTemplate>
                   <asp:TextBox ID="Tbox" runat="server"></asp:TextBox>
                </FooterTemplate>
   

            </asp:TemplateField>
           
            <asp:TemplateField HeaderText="Content" SortExpression="Content">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox3" runat="server" Text='<%# Bind("Content") %>'></asp:TextBox>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label4" runat="server" Text='<%# Bind("Content") %>'></asp:Label>
                </ItemTemplate>
                <FooterTemplate>
                   <asp:TextBox ID="Cbox" runat="server"></asp:TextBox>

                </FooterTemplate>

            </asp:TemplateField>
        </Columns>
        <FooterStyle HorizontalAlign="left" VerticalAlign="NotSet" Width="10px" Wrap="true" />

   
    </asp:GridView>




             </div>
            </asp:Panel>
    </div>


    <br>
    <br>
    <br>
    <br>







     <hr width="1190" style="border: 2px dashed #C0C0C0" color="#FFFFFF" size="6">





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

</form>


