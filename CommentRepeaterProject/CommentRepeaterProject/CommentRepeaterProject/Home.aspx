<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="CommentRepeaterProject.Home" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
   
    <link href="CSS1/dashboard.css" rel="stylesheet" type="text/css" />
    <link href="CSS1/divlogo.css" rel="stylesheet" type="text/css" />
    	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<meta name="description" content="free-educational-responsive-web-template-webEdu">
	<meta name="author" content="webThemez.com">
	<title>web thakshila</title>
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
    <script type="text/javascript">
        function readarticles() {
            PageMethods.ReadArticles();
        }
    </script>
</head>
<body>
    <form id="form1" runat="server">
    <div class="divlogo">Forum</div>
    <div class="div_header">
     Welcome : <label id="welcome" runat="server"/>     
    </div>
    <div class="div_logout"><a href="forumLogin.aspx">Logout</a></div>
      <div id="div_dashboard_box" class="div_dashboard" runat="server" visible="false">
     <table>
      <tr>
       <th>Dashboard</th>
      </tr>
      <tr>
       <td><a href="Default.aspx">Home Page</a></td>
      </tr>
      <tr>
       <td><a href="Dashboard.aspx">Post Articles</a></td>
      </tr>
      <tr>
       <td><a href="Home.aspx">Your Articles</a></td>
      </tr>
     </table>
    </div>
    <div>
    <!--
      <div class="div_post_display">
       <h2><div id="div_h1" runat="server"></div></h2>
        <p></p><div id="post_msg" runat="server"></div></p>
      </div>
      -->
      &nbsp;&nbsp; 
        <label id="lblwelcom0" runat="server"/>     
      <asp:Panel ID="div_post_display_panel" style="margin-top:-35px;" runat="server"/>
      <asp:ScriptManager runat="server" EnablePageMethods="true" ID="scrptmgr">
          </asp:ScriptManager>
    </div>
    </form>
</body>
</html>
