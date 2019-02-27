<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/SiteMaster.Master" Inherits="System.Web.Mvc.ViewPage<BloodBank.Models.Area>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
    Delete
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

<h2>Delete</h2>

<h3>Are you sure you want to delete this?</h3>
<fieldset>
    <legend>Area</legend>
    <table class="table">
    <tr>
      <th>Fields</th>
      <th>Data</th>
    </tr>
    <tr>
    <td><div class="display-label">Area Name</div></td>
    
    
    <td><div class="display-field">
        <%: Html.DisplayFor(model => model.AreaName) %>
    </div></td>
    </tr>
    <tr>
    <td><div class="display-label">Description</div></td>
    <td><div class="display-field">
        <%: Html.DisplayFor(model => model.Description) %>
    </div></td>
    </tr>
    </table>
</fieldset>
 <br />
<% using (Html.BeginForm()) { %>
    <p>
        <input type="submit" value="Delete" class="btn btn-block btn-primary" />
        <br />
        <button type="button" class="btn btn-default"><%: Html.ActionLink("Back to List", "Index") %></button>
    </p>
<% } %>

</asp:Content>
