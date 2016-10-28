<%@ Page Title="" Language="C#" MasterPageFile="~/EventAdminMaster.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="eventAdmin.Login" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

        <!-- Begin page content -->
    <!-- this is comment -->
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

</asp:Content>
