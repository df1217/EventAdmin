<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="LoginStart.aspx.cs" Inherits="eventAdmin.LoginStart" %>

﻿<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
    <meta name="description" content="" />
    <meta name="author" content="" />
    <title>Event Calendar Administration App</title>
    <!-- Latest compiled and minified CSS -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css" />
    <!-- Optional theme -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap-theme.min.css" />
    <!-- Custom styles for this template -->
    <link href="styles\sticky-footer-navbar.css" rel="stylesheet" />
    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
      <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
</head>
<body>
    <header>
        <nav class="navbar navbar-default navbar-fixed-top">
            <div class="container">
                <div class="navbar-header">
                    <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    </button>
                    <a class="navbar-brand" href="#">Event Admin</a>
                </div> <!--end nav bar header -->
                <div id="navbar" class="collapse navbar-collapse">
                    <ul class="nav navbar-nav navbar-right">
                        <li runat="server" id="loginLI" class="active">
                            <a runat="server" id="loginA" href="#">Login</a></li>
                        <li runat="server" id="listLI">
                            <a runat="server" id="listA" href="EventList.aspx">Event List</a></li>
                        <li runat="server" id="addLI" >
                            <a runat="server" id="addA" href="AddEvent.aspx">Add Event</a></li>
                        <li runat="server" id="logoutLI" >
                            <a runat="server" id="logoutA" href="Login.aspx">Logout</a></li>
                    </ul>
                </div><!--end nav bar -->
            </div><!-- end container -->
        </nav>
    </header>
    <div class="container">
        <!-- Begin page content -->
        <div class="container">
          <div class="page-header">
            <h1>Login</h1>
          </div>
          <p class="lead">Please enter your user id and password to login.</p>
          <form runat="server" class="form-horizontal" role="form">
            <div class="form-group">
                <label class="control-label col-sm-2" for="userid">User Id:</label>
                <div class="col-sm-6">
                    <input runat="server" type="text" class="form-control" id="userid" placeholder="Enter user id" />
                </div> 
                <div class="col-sm-4">
                    <!-- validation control goes here -->            
                    <asp:RequiredFieldValidator ID="valReqUserid" runat="server" 
                        ControlToValidate="userid" ErrorMessage="You must enter a user id" 
                        SetFocusOnError="True" EnableClientScript="false"> 
                    </asp:RequiredFieldValidator>   
                </div>
            </div>
            <div class="form-group">
                <label class="control-label col-sm-2" for="pwd">Password:</label>
                <div class="col-sm-6"> 
                    <input runat="server" type="password" class="form-control" id="pwd" placeholder="Enter password" />
                </div>
                <div class="col-sm-4">
                    <!-- validation control goes here -->
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server"  
                        ControlToValidate="pwd" ErrorMessage="Password must be 8 to 16 characters" 
                        SetFocusOnError="True" ValidationExpression="^(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{8,16}$" EnableClientScript="false"> 

                    </asp:RegularExpressionValidator>
                </div>
            </div>
            <div class="form-group"> 
                <div class="col-sm-offset-2 col-sm-10">
                    <div class="checkbox">
                    <label><input runat="server" id="saveChk" type="checkbox" /> Remember me</label>
                    </div>
                </div>
            </div>
            <div class="form-group"> 
                <div class="col-sm-offset-2 col-sm-10">
                    <asp:Button ID="Button1" runat="server" Text="Login" OnClick="Button1_Click" />
                </div>
                
            </div>
            <div class="form-group">
                <div class="col-sm-offset-2 col-sm-10">
                    <asp:Label ID="loginErrorMessage" runat="server" Text="Label"></asp:Label>
                </div>
            </div>
            </form>
        </div>
    </div>
    <footer class="footer">
      <div class="container">
        <p class="text-muted">PUT YOUR FOOTER HERE</p>
      </div>
    </footer>

    <!-- Bootstrap core JavaScript
    ================================================== -->
    <!-- Placed at the end of the document so the pages load faster -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
    <!-- Latest compiled and minified JavaScript -->
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.min.js"></script>
</body>
</html>
