<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/SiteMaster.Master" Inherits="System.Web.Mvc.ViewPage<BloodBank.Models.Area>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
    Details
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

<h2>Details of Area</h2>

<fieldset>
    <%--<legend>Details</legend>--%>
    <table class="table">
    <tr>
        <th>Fields</th>
        <%--<th></th>--%>
        <th>Data</th>
    </tr>
    <tr>
    <td><div class="display-label">Area Name</div></td>
    <%--<td></td>--%>
    <td><div class="display-field">
        <%: Html.DisplayFor(model => model.AreaName) %>
    </div></td>
    </tr>
    <tr>
    <td><div class="display-label">Description</div></td>
    <%--<td></td>--%>
    <td><div class="display-field">
        <%: Html.DisplayFor(model => model.Description) %>
    </div></td>
    </tr>
    </table>
</fieldset>
<br />
<p>
    <button type="button" class="btn btn-default"><%: Html.ActionLink("Edit", "Edit", new { /* id=Model.PrimaryKey */ }) %></button>
    <button type="button" class="btn btn-default"><%: Html.ActionLink("Back to List", "Index") %></button>
</p>

</asp:Content>
