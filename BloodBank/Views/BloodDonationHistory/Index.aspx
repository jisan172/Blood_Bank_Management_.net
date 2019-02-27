<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/SiteMaster.Master" Inherits="System.Web.Mvc.ViewPage<IEnumerable<BloodBank.Models.BloodDonationHistory>>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
    Blood Donation History
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

<h2>Blood Donation History</h2>

<p>
    <button type="button" class="btn btn-default"><%: Html.ActionLink("Create New", "Create") %></button>
</p>
<table class="table">
    <tr>
        <th>
            DonatedBy
        </th>
        <th>
            Requisition
        </th>
        <th>
            Donation Date
        </th>
        <th>
            Donation Time
        </th>
        <th>
            Amount
        </th>
        <%--<th>
            Remarks
        </th>--%>
        <th>Action</th>
    </tr>

<% foreach (var item in Model) { %>
    <tr>
        <td>
            <%: Html.DisplayFor(modelItem => item.DonatedBy.FullName) %>
        </td>
        <td>
            <%: Html.DisplayFor(modelItem => item.Requisition.BloodGroup) %>
        </td>
        <td>
            <%: Html.DisplayFor(modelItem => item.DonationDate) %>
        </td>
        <td>
            <%: Html.DisplayFor(modelItem => item.DonationTime) %>
        </td>
        <td>
            <%: Html.DisplayFor(modelItem => item.Amount) %>
        </td>
        <%--<td>
            <%: Html.DisplayFor(modelItem => item.Remarks) %>
        </td>--%>
        <td>
            <button type="button" class="btn btn-default"><%: Html.ActionLink("Edit", "Edit", new {  id=item.Id }) %></button>
            <button type="button" class="btn btn-info"> <%: Html.ActionLink("Details", "Details", new {  id=item.Id }) %></button> 
            <button type="button" class="btn btn-danger"><%: Html.ActionLink("Delete", "Delete", new { id=item.Id }) %></button> 
        </td>
    </tr>
<% } %>

</table>

</asp:Content>
