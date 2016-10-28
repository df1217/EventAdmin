<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="EventAdminNav.ascx.cs" Inherits="eventAdmin.EventAdminNav" %>
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