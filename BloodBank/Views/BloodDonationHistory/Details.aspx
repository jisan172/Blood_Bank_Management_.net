<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/SiteMaster.Master" Inherits="System.Web.Mvc.ViewPage<BloodBank.Models.BloodDonationHistory>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
    Details
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

<h2>Details of Blood Donation History</h2>

<fieldset>
    <%--<legend>BloodDonationHistory</legend>--%>
    <table class="table">
    <tr>
        <th>Fields</th>
        <th>Data</th>
    </tr>
    <tr>
    <td><div class="display-label">DonatedBy</div></td>
    <td><div class="display-field">
        <%: Html.DisplayFor(model => model.DonatedBy.FullName) %>
    </div></td>
    </tr>
    <tr>
    <td><div class="display-label">Requisition</div></td>
    <td><div class="display-field">
        <%: Html.DisplayFor(model => model.Requisition.BloodGroup) %>
    </div></td>
    </tr>
    <tr>
    <td><div class="display-label">Donation Date</div></td>
    <td><div class="display-field">
        <%: Html.DisplayFor(model => model.DonationDate) %>
    </div></td>
    </tr>
    <tr>
    <td><div class="display-label">Donation Time</div></td>
    <td><div class="display-field">
        <%: Html.DisplayFor(model => model.DonationTime) %>
    </div></td>
    </tr>
    <tr>
    <td><div class="display-label">Amount</div></td>
    <td><div class="display-field">
        <%: Html.DisplayFor(model => model.Amount) %>
    </div></td>
    </tr>
    <tr>
    <td><div class="display-label">Remarks</div></td>
    <td><div class="display-field">
        <%: Html.DisplayFor(model => model.Remarks) %>
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
