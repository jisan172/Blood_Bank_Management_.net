<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/SiteMaster.Master" Inherits="System.Web.Mvc.ViewPage<BloodBank.Models.Notice>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
    Details
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

<h2>Details of Notice</h2>

<fieldset>
    <%--<legend>Notice</legend>--%>
    <table class="table">
    <tr>
        <th>Fields</th>
        <th>Data</th>
    </tr>
    <tr>
    <td><div class="display-label">Requisition</div></td>
    <td><div class="display-field">
        <%: Html.DisplayFor(model => model.Requisition.BloodGroup) %>
    </div></td>
    </tr>
    <tr>
    <td><div class="display-label">Notice Text</div></td>
    <td><div class="display-field">
        <%: Html.DisplayFor(model => model.NoticeText) %>
    </div></td>
    </tr>
    <tr>
    <td><div class="display-label">Notice Date</div></td>
    <td><div class="display-field">
        <%: Html.DisplayFor(model => model.NoticeDate) %>
    </div></td>
    </tr>
    <tr>
    <td><div class="display-label">Notice Time</div></td>
    <td><div class="display-field">
        <%: Html.DisplayFor(model => model.NoticeTime) %>
    </div></td>
    </tr>
    <tr>
    <td><div class="display-label">Remarks</div></td>
    <td><div class="display-field">
        <%: Html.DisplayFor(model => model.Remarks) %>
    </div></td>
    </tr>
    <tr>
    <td><div class="display-label">NoticeTo</div></td>
    <td><div class="display-field">
        <%: Html.DisplayFor(model => model.NoticeTo.FullName) %>
    </div></td>
    </tr>
    <tr>
    <td><div class="display-label">NoticeBy</div></td>
    <td><div class="display-field">
        <%: Html.DisplayFor(model => model.NoticeBy.FullName) %>
    </div></td>
    </tr>
    </table>
</fieldset>
<br />
<p>

    <button type="button" class="btn btn-default"><%: Html.ActionLink("Edit", "Edit", new { id=Model.Id }) %></button>
    <button type="button" class="btn btn-default"><%: Html.ActionLink("Back to List", "Index") %></button>
</p>

</asp:Content>
