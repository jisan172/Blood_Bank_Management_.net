<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/SiteMaster.Master" Inherits="System.Web.Mvc.ViewPage<BloodBank.Models.BloodDonationHistory>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
    Delete
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

<h2>Delete</h2>

<h3>Are you sure you want to delete this?</h3>
<fieldset>
    <legend>BloodDonation History</legend>
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
<% using (Html.BeginForm()) { %>
    <p>
        <input type="submit" value="Delete" class="btn btn-block btn-primary" />
        <br />
        <button type="button" class="btn btn-default"><%: Html.ActionLink("Back to List", "Index") %></button>
    </p>
<% } %>

</asp:Content>
