<%@ Page Title="" Language="C#" MasterPageFile="~/EventAdminMaster.Master" AutoEventWireup="true" CodeBehind="EventList.aspx.cs" Inherits="eventAdmin.EventList" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h1 class="jumbotron">This is the Event List Page</h1>
    <form runat="server" class="form-horizontal" role="form">
    <asp:GridView ID="yourEventsGrid" runat="server" AutoGenerateColumns="False">
        <Columns>
            <asp:BoundField DataField="ID" />
            <asp:BoundField DataField="Title" />
            <asp:BoundField DataField="Description" />
            <asp:BoundField DataField="Date" />
        </Columns>
        </asp:GridView>
     </form>   
</asp:Content>

