<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/SiteMaster.Master" Inherits="System.Web.Mvc.ViewPage<IEnumerable<BloodBank.Models.Notice>>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
    Notice
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

<h2>Notice</h2>

<p>
    <button type="button" class="btn btn-default"><%: Html.ActionLink("Create New", "Create") %></button>
</p>
<table class="table">
    <tr>
        <th>
            Requisition
        </th>
        <th>
            Notice Text
        </th>
        <th>
            Notice Date
        </th>
        <%--<th>
            NoticeTime
        </th>
        <th>
            Remarks
        </th>--%>
        <th>
            NoticeTo
        </th>
        <th>
            NoticeBy
        </th>
        <th>Action</th>
    </tr>

<% foreach (var item in Model) { %>
    <tr>
        <td>
            <%: Html.DisplayFor(modelItem => item.Requisition.BloodGroup) %>
        </td>
        <td>
            <%: Html.DisplayFor(modelItem => item.NoticeText) %>
        </td>
        <td>
            <%: Html.DisplayFor(modelItem => item.NoticeDate) %>
        </td>
        <%--<td>
            <%: Html.DisplayFor(modelItem => item.NoticeTime) %>
        </td>
        <td>
            <%: Html.DisplayFor(modelItem => item.Remarks) %>
        </td>--%>
        <td>
            <%: Html.DisplayFor(modelItem => item.NoticeTo.FullName) %>
        </td>
        <td>
            <%: Html.DisplayFor(modelItem => item.NoticeBy.FullName) %>
        </td>
        <td>
            <button type="button" class="btn btn-default"><%: Html.ActionLink("Edit", "Edit", new { id=item.Id }) %></button>
            <button type="button" class="btn btn-info"><%: Html.ActionLink("Details", "Details", new { id=item.Id }) %></button>
            <button type="button" class="btn btn-danger"><%: Html.ActionLink("Delete", "Delete", new { id=item.Id }) %></button>
        </td>
    </tr>
<% } %>

</table>

</asp:Content>
