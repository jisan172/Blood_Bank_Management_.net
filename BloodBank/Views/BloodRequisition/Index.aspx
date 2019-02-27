<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/SiteMaster.Master" Inherits="System.Web.Mvc.ViewPage<IEnumerable<BloodBank.Models.BloodRequistion>>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
    Blood Requisition
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

<h2>Blood Requisition</h2>

<p>
    <button type="button" class="btn btn-default"><%: Html.ActionLink("Create New", "Create") %></button>
</p>
<table class="table">
    <tr>
        <th>
            Blood Group
        </th>
        <%--<th>
            Amount
        </th>
        <th>
            RequisitionBy
        </th>--%>
        <th>
            Area
        </th>
        <th>
            Contact Number
        </th>
        <th>
            Urgency Level
        </th>
        <th>
            Hospital Name
        </th>
        <%--<th>
            Date Of Need
        </th>
        <th>
            Time Of Need
        </th>
        <th>
            Requisition Date
        </th>
        <th>
            Requisition Time
        </th>
        <th>
            Status
        </th>
        <th>
            Remarks
        </th>--%>
        <th>Action</th>
    </tr>

<% foreach (var item in Model) { %>
    <tr>
        <td>
            <%: Html.DisplayFor(modelItem => item.BloodGroup) %>
        </td>
       <%-- <td>
            <%: Html.DisplayFor(modelItem => item.Amount) %>
        </td>
        <td>
            <%: Html.DisplayFor(modelItem => item.RequisitionBy.FullName) %>
        </td>--%>
        <td>
            <%: Html.DisplayFor(modelItem => item.Area.AreaName) %>
        </td>
        <td>
            <%: Html.DisplayFor(modelItem => item.ContactNumber) %>
        </td>
        <td>
            <%: Html.DisplayFor(modelItem => item.UrgencyLevel) %>
        </td>
        <td>
            <%: Html.DisplayFor(modelItem => item.HospitalName) %>
        </td>
        <%--<td>
            <%: Html.DisplayFor(modelItem => item.DateOfNeed) %>
        </td>
        <td>
            <%: Html.DisplayFor(modelItem => item.TimeOfNeed) %>
        </td>
        <td>
            <%: Html.DisplayFor(modelItem => item.RequisitionDate) %>
        </td>
        <td>
            <%: Html.DisplayFor(modelItem => item.RequisitionTime) %>
        </td>
        <td>
            <%: Html.DisplayFor(modelItem => item.Status) %>
        </td>
        <td>
            <%: Html.DisplayFor(modelItem => item.Remarks) %>
        </td>--%>
        <td>
            <button type="button" class="btn btn-default"><%: Html.ActionLink("Edit", "Edit", new { id=item.Id }) %></button>
            <button type="button" class="btn btn-info"><%: Html.ActionLink("Details", "Details", new { id=item.Id }) %></button>
            <button type="button" class="btn btn-danger"><%: Html.ActionLink("Delete", "Delete", new { id=item.Id }) %></button>
        </td>
    </tr>
<% } %>

</table>

</asp:Content>
