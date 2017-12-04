<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="PhysicsDiscus.aspx.cs" EnableEventValidation="false" Inherits="CommentRepeaterProject.Comment" %>

<!DOCTYPE html>
<html  xmlns="http://www.w3.org/1999/xhtml">

<head runat="server">
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<meta name="description" content="free-educational-responsive-web-template-webEdu">
	<meta name="author" content="webThemez.com">
	<title>Web Thakshila</title>
	<!--Ara card view wala css tika-->
    <link href="http://fonts.googleapis.com/css?family=Roboto:300,400,700|" rel="stylesheet" type="text/css">
    <link href="fonts/font-awesome.min.css" rel="stylesheet" type="text/css">

    <link rel="stylesheet" href="style.css">
    <!--Ara card view wala css tika iwarai-->
    <link rel="favicon" href="assets/images/favicon.png">
	<link rel="stylesheet" media="screen" href="http://fonts.googleapis.com/css?family=Open+Sans:300,400,700">
	<link rel="stylesheet" href="assets/css/bootstrap.min.css">
	
	<!-- Custom styles for our template -->
	<link rel="stylesheet" href="assets/css/bootstrap-theme.css" media="screen">
	<link rel="stylesheet" href="assets/css/style.css">
	<!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries -->
	<!--[if lt IE 9]>
	<script src="assets/js/html5shiv.js"></script>
	<script src="assets/js/respond.min.js"></script>
	<![endif]-->
     <script src="//ajax.googleapis.com/ajax/libs/jquery/1/jquery.min.js"></script>
    <script type="text/javascript">
        //GridView Comment 
        var prevComment = [];
        function showReply(n) {
            $("#divReply" + n).show();
            return false;
        }
        function closeReply(n) {
            $("#divReply" + n).hide();
            return false;
        }
    </script>
    <style type="text/css">
        .link {
            text-decoration:none;
            color:#808080;
        }
            .link:hover {
                color:#dddddd;
            }
        .auto-style1 {
            width: 664px;
            margin-left: 37px;
        }
        .auto-style2 {
            margin-left: 21;
        }
        .auto-style3 {
            margin-left: 32px;
            margin-right: 42px;
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
                    <h1>Advance Level Physics</h1>
                    <p> ඔබේ උසස්පෙල හෞතික විද්‍යා ප්‍රශ්න මෙහි විමසන්න</p>
                </div>
    </header>

    
    <div class="container">
<h3> ඔබේ  ප්‍රශ්න කෙටියෙන් විමසන්න</h3>
<p>සිංහලෙන් ප්‍රශ්න විමසීම අදහා Google ආදාන මෙවලම් උපයෝගී කර ගන්න <a href="https://chrome.google.com/webstore/detail/google-input-tools/mclkkofklkfljcocdinagocijmpgbhab">ආදාන  මෙවලමි සදහා</a>
   </p>

                                  
        
            &nbsp;</p>
<br/>
        <!--Ara card view eka-->
      <div style="padding:15px 20px; " class="auto-style1">
        <asp:Label ID="Label1" runat="server" style="color:black" Text="Ask Your Question"></asp:Label>
        <asp:Label ID="Label2" runat="server" style="color:crimson" Text=""></asp:Label>
      <asp:TextBox ID="txtComment" runat="server" TextMode="MultiLine" Width="571px" Height="60px" CssClass="auto-style2"></asp:TextBox>
        <asp:Image ID="Image1" runat="server" ImageUrl="~/Images/default-profile.png" style="width:30px; height:30px; border-radius:50%;" />
        <asp:Button ID="btnCommentPublish" Text="Publish" runat="server" style="background-color:#4800ff; border:1px solid #4800ff; padding:7px 25px; border-radius:5px; color:#fff; float:right;" OnClick="btnCommentPublish_Click" />
    </div><br />
    <div>
        <asp:GridView ID="GridViewComment" runat="server" AutoGenerateColumns="false" BorderWidth="0" Width="50%" OnRowDataBound="GridViewComment_RowDataBound" CssClass="auto-style3">
            <Columns>
                <asp:TemplateField>
                    <ItemTemplate>
                    <div style="width:100%;">
                                    <table style="margin:3px 5px; width:100%;">
                                        <tr>
                                            <td style="width:55px; vertical-align:text-top;">                                                                                                               
                                                <asp:Image ID="ImageParent" runat="server" style="width:50px; height:50px;" ImageUrl="~/Images/default-profile.png" />
                                            </td>
                                            <td style="padding:0px 5px; text-align:left; vertical-align:top;">
                                                <asp:Label ID="Label3" runat="server" style="color:red;"   Text='<% #Eval("Username") %>'></asp:Label><br>
                                              <asp:Label ID="lblCommentID" runat="server" Visible="false" Text='<% #Eval("CommentID") %>'></asp:Label>
                                              <asp:Label ID="lblCommentMessage" runat="server" style="color:black" Text='<% #Eval("CommentMessage") %>'></asp:Label><br />
                                               <a class="link" id='lnkReplyParent<%# Eval("CommentID") %>' href="javascript:void(0)" onclick="showReply(<%# Eval("CommentID") %>); return false;">Reply</a>&nbsp;
                                               <a class="link" id="lnkCancel" href="javascript:void(0)" onclick="closeReply(<%# Eval("CommentID") %>); return false;">Cancel</a>
                                               <div id='divReply<%# Eval("CommentID") %>' style="display:block; margin-top:5px;">
                                                    <asp:TextBox ID="txtCommentReplyParent" runat="server" TextMode="MultiLine" Width="560px" Height="60px"></asp:TextBox>
                                                    <asp:Button ID="btnReplyParent" runat="server" Text="Reply" style="float:right;margin:5px;" OnClick="btnReplyParent_Click" />
                                               </div>
                                            </td>
                                        </tr>
                                     </table>
                     </div>
                        <div style="padding-left:75px;">
                            <asp:GridView ID="GridViewChild" runat="server" AutoGenerateColumns="false" BorderWidth="0" Width="50%">
                                 <Columns>
                                  <asp:TemplateField>
                                    <ItemTemplate>
                                        <div style="width:100%;">
                                    <table style="margin:3px 5px; width:100%;">
                                        <tr>
                                            <td style="width:55px; vertical-align:text-top;">                                                                                                               
                                                <asp:Image ID="ImageChild" runat="server" style="width:50px; height:50px;" ImageUrl="~/Images/default-profile.png" />
                                            </td>
                                            <td style="padding:0px 5px; text-align:left; vertical-align:top;">
                                              <asp:Label ID="lblParentCommentID" runat="server" style="color:red" Text='<% #Eval("ChildUsername") %>'></asp:Label><br>
                                              <asp:Label ID="lblChildCommentID" runat="server" Visible="false" Text='<% #Eval("ChildCommentID") %>'></asp:Label>
                                              <asp:Label ID="lblChildCommentMessage" runat="server" style="color:black" Text='<% #Eval("ChildCommentMessage") %>'></asp:Label><br />
                                               <a class="link" id='lnkReplyChild<%# Eval("ChildCommentID") %>' href="javascript:void(0)" onclick="showReply(<%# Eval("ChildCommentID") %>); return false;">Reply</a>&nbsp;
                                               <a class="link" id="lnkCancel" href="javascript:void(0)" onclick="closeReply(<%# Eval("ChildCommentID") %>); return false;">Cancel</a>
                                               <div id='divReply<%# Eval("ChildCommentID") %>' style="display:none; margin-top:5px;">
                                                    <asp:TextBox ID="txtCommentReplyChild" runat="server" TextMode="MultiLine" Width="560px" Height="60px"></asp:TextBox>
                                                    <asp:Button ID="btnReplyChild" runat="server" Text="Reply" style="float:right;margin:5px;" OnClick="btnReplyChild_Click" />
                                               </div>  
                                            </td>
                                        </tr>
                                     </table>
                     </div>
                                    </ItemTemplate>
                                  </asp:TemplateField>
                                 </Columns>
                            </asp:GridView>
                        </div>
                    </ItemTemplate>
                </asp:TemplateField>
            </Columns>
        </asp:GridView>
    </div>

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


