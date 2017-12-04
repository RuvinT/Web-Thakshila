<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="PhysicsArticles.aspx.cs" Inherits="CommentRepeaterProject.View" %>

<!DOCTYPE html>
<html lang="en">
<head runat="server">
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<meta name="description" content="free-educational-responsive-web-template-webEdu">
	<meta name="author" content="webThemez.com">
	<title>Web Thakshila</title>
	<!--Ara card view wala css tika-->
    <link href="http://fonts.googleapis.com/css?family=Roboto:300,400,700|" rel="stylesheet" type="text/css">
    <link href="fonts/font-awesome.min.css" rel="stylesheet" type="text/css">
    <link media="all" type="text/css" rel="stylesheet" href="./hospital_files/ubuntu.css">

		<link media="all" type="text/css" rel="stylesheet" href="./hospital_files/font-awesome.min.css">

		<link media="all" type="text/css" rel="stylesheet" href="./hospital_files/bootstrap.min.css">

		<link media="all" type="text/css" rel="stylesheet" href="./hospital_files/default.css">

		<link media="all" type="text/css" rel="stylesheet" href="./hospital_files/default.date.css">

		<link media="all" type="text/css" rel="stylesheet" href="./hospital_files/default.time.css">

		<link media="all" type="text/css" rel="stylesheet" href="./hospital_files/style.css">

		<link media="all" type="text/css" rel="stylesheet" href="./hospital_files/bootstrap-chosen.css">

		<!--		NEW UI-->
		<link media="all" type="text/css" rel="stylesheet" href="./hospital_files/style-new.css">

    <link rel="stylesheet" href="style.css">
    <!--Ara card view wala css tika iwarai-->
    <link rel="favicon" href="assets/images/favicon.png">
	<link rel="stylesheet" media="screen" href="http://fonts.googleapis.com/css?family=Open+Sans:300,400,700">
	<link rel="stylesheet" href="assets/css/bootstrap.min.css">
	<link rel="stylesheet" href="assets/css/font-awesome.min.css">
	<!-- Custom styles for our template -->
	<link rel="stylesheet" href="assets/css/bootstrap-theme.css" media="screen">
	<link rel="stylesheet" href="assets/css/style.css">
	<!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries -->
	<!--[if lt IE 9]>
	<script src="assets/js/html5shiv.js"></script>
	<script src="assets/js/respond.min.js"></script>
	<![endif]-->
</head>


<body>

    <form id="form2" runat="server">
	<!-- Fixed navbar -->
	<div class="navbar navbar-inverse">
		<div class="container">
			<div class="navbar-header">
				<!-- Button for smallest screens -->
				<button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse"><span class="icon-bar"></span><span class="icon-bar"></span><span class="icon-bar"></span></button>
				<a class="navbar-brand" href="index.html">
					<img src="assets/images/logo1.png" alt="Techro HTML5 template"></a>
			</div>
			<div class="navbar-collapse collapse">
				<ul class="nav navbar-nav pull-right mainNav">
					<ul class="nav navbar-nav pull-right mainNav">
                    <li><a href="index.aspx">Home</a></li>
					<li class="active"><a href="AdvanceLevel.aspx">A/L</a></li>
					<li ><a href="Ordinarylevel.aspx">O/L</a></li>
					<li><a href="Video.aspx">Video</a></li>
					<li><a href="News.aspx">News</a></li>
					
					<li><a href="contact.aspx">Contact</a></li>

                    
				</ul>
			</div>
	<!-- /.navbar -->

		<header id="head" class="secondary">
            <div class="container">
                    <h1>Advance Level Physics</h1>
                    <p>Download your Articles</p>
                </div>
    </header>

    
    
	 <!--repeat--> <asp:Repeater ID="Repeater1" runat="server" >
    <ItemTemplate>
				
		<ul class="ui-component-list">
						<li>
				<div class="ui-component ui-component-primary ui-component-doctors">
					<div class="ui-component-content" data-link="">
						<div class="doctor-photo"><img src="./hospital_files/PDF.ico"></div>
						<div class="doctor-quick-details">
							<ul>
								<li class="doctor-name"><a href=""><%#Eval("Title") %> </a></li>

																<li class="doctor-title">
									<%#Eval("AuName") %>
								</li>
								
							</ul>
						</div>
					</div>

					<div class="ui-component-options">
						<ul>
							<li>
								
                                <asp:LinkButton ID="LinkButton1" runat="server"  text="Download" OnClick="open"  CommandArgument='<%#Eval("ID")%>'></asp:LinkButton>
							</li>
						</ul>
					</div>
				</div>
			</li>
					</ul>
         </ItemTemplate>

         </asp:Repeater>
<!--repeat-->
        <footer id="footer">
 
		<div class="container">
   <div class="row">
		<div class="footer2">
			<div class="container">
				<div class="row">

					<div class="col-md-6 panel">
						<div class="panel-body">
							<p class="simplenav">
								<a href="index.html">Home</a> | 
								<a href="about.html">About</a> |
								<a href="courses.html">Courses</a> |
								<a href="price.html">Price</a> |
								<a href="videos.html">Videos</a> |
								<a href="contact.html">Contact</a>
							</p>
						</div>
					</div>
					<div class="col-md-6 panel">
						<div class="panel-body">
							<p class="text-right">
								Copyright &copy; <a href="#" rel="develop">Team-Zenith</a>
							</p>
						</div>
					</div>

				</div>
				<!-- /row of panels -->
			</div>
		</div>
	</footer>


	<!-- JavaScript libs are placed at the end of the document so the pages load faster -->
	<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.10.2/jquery.min.js"></script>
	<script src="http://netdna.bootstrapcdn.com/bootstrap/3.0.0/js/bootstrap.min.js"></script>
	<script src="assets/js/custom.js"></script>
    <!--Ara card view wala script tika-->
        <script src="js/jquery-1.11.1.min.js"></script>
    <script src="js/plugins.js"></script>
    <script src="js/app.js"></script>
        <!--Ara card view wala script tika iwarai-->
        </form>
</body>
</html>

