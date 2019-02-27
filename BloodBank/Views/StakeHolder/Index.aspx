<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/SiteMaster.Master" Inherits="System.Web.Mvc.ViewPage<IEnumerable<BloodBank.Models.StakeHolder>>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
    Stakeholder
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

<h2>StakeHolder</h2>

<p>
    <button type="button" class="btn btn-default"><%: Html.ActionLink("Create New", "Create") %></button>
</p>
<table class="table">
    <tr>
        <th>
            Full Name
        </th>
        <th>
            Blood Group
        </th>
        <th>
            Phone Number
        </th>
        <%--<th>
            Email Address
        </th>--%>
        <th>
            Date Of Birth
        </th>
        <%--<th>
            StakeHolderType
        </th>
        <th>
            Country
        </th>
        <th>
            District
        </th>--%>
       <%--<th>
            Thana
        </th>--%> 
        <th>
            Present Address
        </th>
        <%--<th>
            Weight
        </th>
        <th>
            IsDonor
        </th>
        <th>
            IsReceiver
        </th>
        <th>
            Area
        </th>--%>
        <th>Action</th>
    </tr>

<% foreach (var item in Model) { %>
    <tr>
        <td>
            <%: Html.DisplayFor(modelItem => item.FullName) %>
        </td>
        <td>
            <%: Html.DisplayFor(modelItem => item.BloodGroup) %>
        </td>
        <td>
            <%: Html.DisplayFor(modelItem => item.PhoneNumber) %>
        </td>
        <%--<td>
            <%: Html.DisplayFor(modelItem => item.EmailAddress) %>
        </td>--%>
        <td>
            <%: Html.DisplayFor(modelItem => item.DateOfBirth) %>
        </td>
        <%--<td>
            <%: Html.DisplayFor(modelItem => item.StakeHolderType) %>
        </td>
        <td>
            <%: Html.DisplayFor(modelItem => item.Country) %>
        </td>
        <td>
            <%: Html.DisplayFor(modelItem => item.District) %>
        </td>
        <td>
            <%: Html.DisplayFor(modelItem => item.Thana) %>
        </td>--%>
        <td>
            <%: Html.DisplayFor(modelItem => item.PresentAddress) %>
        </td>
       <%-- <td>
            <%: Html.DisplayFor(modelItem => item.Weight) %>
        </td>
        <td>
            <%: Html.DisplayFor(modelItem => item.IsDonor) %>
        </td>
        <td>
            <%: Html.DisplayFor(modelItem => item.IsReceiver) %>
        </td>
        <td>
            <%: Html.DisplayFor(modelItem => item.Area.AreaName) %>
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
