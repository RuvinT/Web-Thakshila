<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Upload.aspx.cs" Inherits="CommentRepeaterProject.Upload" %>

<!DOCTYPE html>
<html  xmlns="http://www.w3.org/1999/xhtml">

<head runat="server">
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<meta name="description" content="free-educational-responsive-web-template-webEdu">
	<meta name="author" content="webThemez.com">
	<title>web thakhila</title>
	<!--Ara card view wala css tika-->
    <link href="http://fonts.googleapis.com/css?family=Roboto:300,400,700|" rel="stylesheet" type="text/css">
    <link href="fonts/font-awesome.min.css" rel="stylesheet" type="text/css">

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
    <style type="text/css">
        .auto-style2 {
            width: 4%;
        }
        .auto-style3 {
            width: 470px;
        }
    </style>
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
                    <h1>Advance Level</h1>
                    <p></p>
                </div>
    </header>
<!-- cut -->
    
    <div class="container">
<h3>Courses</h3>
<p>
   Authors are requested to submit their paper by using online submission form or by

  simply e-mail your paper at <a href="jagodaruvin@gmail.com"> jagodaruvin@gmail.com</a> or  <a href="indunilmaduranga@gmail.com"> indunilmaduranga@gmail.com</a></p>

                                     <strong><span style="float:right">(<span style="color:#F00">*</span>) Mandatory(අනිවාර්යයි).</span></strong></p>
        <p>
            &nbsp;</p>
<br/>
        <!--Ara card view eka-->
  <section id="content">
     <table width="80%" border="0" cellspacing="5" cellpadding="5">

                                   <tbody>
                                       <tr>

                                     <td colspan="3">

                                       </td>

                                   </tr>

                                   <tr>

                                     <td class="auto-style2">&nbsp;</td>

                                     <td colspan="2" align="right" class="auto-style3">

                                       <span style="color:#2B3743;font-size:14px;font-weight:bold"></span>

                                       </td>

                                   </tr>

                                   <tr>

                                     
                                      <td class="auto-style2">&nbsp;</td>
                                     <td colspan="2" align="left" class="auto-style3">Paper Title(ලිපියේ නම) <span style="color:#F00"> *</span></td>
                                        
										  
										   
                                   </tr>
                                     <tr>
									 <td class="auto-style2">&nbsp;</td>
									 </tr>
                                   <tr>

                                     <td class="auto-style2">&nbsp;</td>

                                     <td colspan="2" align="left" class="auto-style3"> <asp:TextBox ID="Title" class="required input-field" runat="server" Width="314px"></asp:TextBox> </td>

                                   </tr>
                                    <tr>
									 <td class="auto-style2">&nbsp;</td>
									 </tr>
                                   <tr>

                                     <td class="auto-style2">&nbsp;</td>

                                     <td colspan="2" align="left" class="auto-style3">Name of Corresponding Author(කතෘගේ  නම )  <span style="color:#F00"> *</span></td>

                                   </tr>
                                       <tr>
									 <td class="auto-style2">&nbsp;</td>
									 </tr>
                                   <tr>

                                     <td class="auto-style2">&nbsp;</td>

                                     <td colspan="2" align="left" class="auto-style3">

                                       <label for="author_name"></label>

                                         <asp:TextBox ID="AuthorName" class="required input-field" runat="server" Width="318px"></asp:TextBox>  </td>

                                   </tr>
                                     <tr>
									 <td class="auto-style2">&nbsp;</td>
									 </tr>
                                   <tr>

                                     <td class="auto-style2">&nbsp;</td>

                                     <td colspan="2" align="left" class="auto-style3">Email of Corresponding Author(විද්‍යුත් ලිපිනය) <span style="color:#F00"> *</span></td>

                                   </tr>
                                    <tr>
									 <td class="auto-style2">&nbsp;</td>
									 </tr>
                                   <tr>

                                     <td class="auto-style2">&nbsp;</td>

                                     <td colspan="2" align="left" class="auto-style3">
                                         <asp:TextBox ID="Email" class="required input-field" runat="server" Width="318px"  ></asp:TextBox> </td>

                                   </tr>
                                    <tr>
									 <td class="auto-style2">&nbsp;</td>
									 </tr>
                                  
                                    <tr>
									 <td class="auto-style2">&nbsp;</td>
									 </tr>
                                  

                                   <tr>

                                     <td class="auto-style2">&nbsp;</td>

                                     <td colspan="2" align="left" class="auto-style3">Journal Name in which paper is to be included(ලිපිය පල වියයුතු අංශය)</td>

                                   </tr>
								   <tr>
									 <td class="auto-style2">&nbsp;</td>
									 </tr>

                                   <tr>

                                     <td class="auto-style2">&nbsp;</td>

                                     <td colspan="2" align="left" class="auto-style3">
                                         <asp:DropDownList ID="DropDownList1" runat="server">
                                             <asp:ListItem>Select(තෝරන්න )</asp:ListItem>
                                             <asp:ListItem>A/L science(උසස්පෙළ විද්‍යාව)</asp:ListItem>
                                             <asp:ListItem>A/L Maths(උසස්පෙළ  ගණිතය )</asp:ListItem>
                                             <asp:ListItem>A/L commerce(උසස්පෙළ වානිජ )</asp:ListItem>
                                             <asp:ListItem>A/L Arts(උසස්පෙළ කලා )</asp:ListItem>
                                             <asp:ListItem>A/L Technology(උසස්පෙළ තාක්ෂණවේදය )</asp:ListItem>
                                             <asp:ListItem> A/L IT(උසස්පෙළ තොරතුරු  තාක්ෂණය )</asp:ListItem>
                                             <asp:ListItem>O/L Articles(සාමාන්‍යපෙළ  සගරා )</asp:ListItem>
                                             <asp:ListItem>Journals on science (විද්‍යා සගරා )</asp:ListItem>
                                             <asp:ListItem>English</asp:ListItem>
                                              <asp:ListItem>Other(වෙනත් )</asp:ListItem>
                                             
                                         </asp:DropDownList>

	

                                       

                                     </td>
									 <tr>
									 <td class="auto-style2">&nbsp;</td>
									 </tr>

                                   </tr>

                                   <tr>

                                     <td class="auto-style2">&nbsp;</td>

                                     <td colspan="2" align="left" class="auto-style3">Paper Type</td>

                                   </tr>
								   <tr>
									 <td class="auto-style2">&nbsp;</td>
									 </tr>

                                   <tr>

                                     <td class="auto-style2"></td>

                                     <td colspan="2" align="left" class="auto-style3">
                                         <asp:DropDownList ID="DropDownList2" runat="server" >
                                             <asp:ListItem>Lecture Notes</asp:ListItem>
                                             <asp:ListItem>Question papers</asp:ListItem>
                                             <asp:ListItem>Short Notes<</asp:ListItem>
                                             <asp:ListItem>Science Journals</asp:ListItem>
                                             <asp:ListItem>Other</asp:ListItem>
                                         </asp:DropDownList>

                                                            </td>
									

                                     <td width="62%" align="left">

                                       <div id="oth" style="display:none">

                                         <input name="other_paper_type" type="text" id="other_paper_type" class="input-field" size="50">

                                       </div>

                                     </td>


                                   <tr>

                                     <td class="auto-style2">&nbsp;</td>

                                     <td colspan="2" align="left" class="auto-style3">Province name</td>

                                   </tr>
                                    <tr>
									 <td class="auto-style2">&nbsp;</td>
									 </tr>
                                   <tr>

                                     <td class="auto-style2">&nbsp;</td>

                                     <td colspan="2" align="left" class="auto-style3">
                                         <asp:TextBox ID="Province" class="required input-field" runat="server" Width="318px"></asp:TextBox> </td>

                                   </tr>
								   <tr>
									 <td class="auto-style2">&nbsp;</td>
									 </tr>

                                   <tr>

                                     <td class="auto-style2">&nbsp;</td>

                                     <td colspan="2" align="left" class="auto-style3">&nbsp;</td>

                                   </tr>
								   <tr>
									 <td class="auto-style2">&nbsp;</td>
									 </tr>

                                   <tr>

                                     <td class="auto-style2">&nbsp;</td>

                                      <td colspan="2" align="left" class="auto-style3">Upload your Article in ms-word or pdf <span style="color:#F00">(.pdf ,.doc or .docx) *</span> </td>

                                   </tr>
								   <tr>
									 <td class="auto-style2">&nbsp;</td>
									 </tr>

                                   <tr>

                                     <td class="auto-style2">&nbsp;</td>

                                     <td colspan="2" align="left" class="auto-style3">
                                         <asp:FileUpload ID="FileUpload1" runat="server" Width="224px" /></td>

                                   </tr>
								   <tr>
									 <td class="auto-style2">&nbsp;</td>
									 </tr>

                                   <tr>

                                     <td class="auto-style2">&nbsp;</td>

                                     <td colspan="2" align="left" class="auto-style3">&nbsp;</td>

                                   </tr>
								   <tr>
									 <td class="auto-style2">&nbsp;</td>
									 </tr>

                                  
								   <tr>
									 <td class="auto-style2">&nbsp;</td>
									 </tr>

                                 

                                   <tr>

                                     <td class="auto-style2">&nbsp;</td>

                                     <td colspan="2" align="left" class="auto-style3">
                                         <asp:Button ID="Button1" runat="server" Text="Submit" OnClick="Button1_Click" style="height: 26px" />                            </td>

                                   </tr>

                                  
                                     <tr>
									 <td class="auto-style2">&nbsp;</td>
									 </tr>
                                  

                                   

                                   

                                   <tr>

                                     <td class="auto-style2">&nbsp;</td>

                                     <td colspan="2" align="left" class="auto-style3">
                                         <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
                                       </td>

                                   </tr>

                                   <tr>

                                     <td class="auto-style2">&nbsp;</td>

                                     <td colspan="2" align="left" class="auto-style3">
                                         &nbsp;</td>

                                   </tr>

                                   <tr>

                                     <td colspan="3">&nbsp;</td>

                                   </tr>

                               </tbody></table>
    </section>

        <!--Ara card view eka iwarai-->

</div>
    
	<!-- container -->
	<!-- /container -->
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

