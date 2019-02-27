<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/SiteMaster.Master" Inherits="System.Web.Mvc.ViewPage<IEnumerable<BloodBank.Models.Area>>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
    Area
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

<h2>Area List</h2>

<p>
    <button type="button" class="btn btn-default"><%: Html.ActionLink("Create New", "Create") %></button>
</p>
<table class="table">
    <tr>
        <th>
            Area Name
        </th>
        <th>
            Description
        </th>
        <th>Action</th>
    </tr>

<% foreach (var item in Model) { %>
    <tr>
        <td>
            <%: Html.DisplayFor(modelItem => item.AreaName) %>
        </td>
        <td>
            <%: Html.DisplayFor(modelItem => item.Description) %>
        </td>
        <td>
        
            <button type="button" class="btn btn-default"><%: Html.ActionLink("Edit", "Edit", new {  id=item.Id }) %></button>
            <button type="button" class="btn btn-info"> <%: Html.ActionLink("Details", "Details", new {  id=item.Id }) %></button> 
            <button type="button" class="btn btn-danger"><%: Html.ActionLink("Delete", "Delete", new { id=item.Id }) %></button> 
        
        </td>
    </tr>
<% } %>

</table>

</asp:Content>
