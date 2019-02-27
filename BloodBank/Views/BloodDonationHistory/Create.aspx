<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/SiteMaster.Master" Inherits="System.Web.Mvc.ViewPage<BloodBank.Models.BloodDonationHistory>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
    Create
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

<h2>Create</h2>
<script type="text/javascript">
    $(document).ready(function () {
        $('input').addClass('form-control');
        $('select').addClass('form-control');
    });
</script>
<script src="<%: Url.Content("~/Scripts/jquery.validate.min.js") %>" type="text/javascript"></script>
<script src="<%: Url.Content("~/Scripts/jquery.validate.unobtrusive.min.js") %>" type="text/javascript"></script>

<% using (Html.BeginForm()) { %>
    <%: Html.ValidationSummary(true) %>
    <fieldset>
        <legend>Blood Donation History</legend>
        <div class="row">
        <div class="col-lg-6">
        <div class="editor-label">
            <%: Html.LabelFor(model => model.StakeholderId, "DonatedBy") %>
        </div>
        <div class="editor-field">
            <%: Html.DropDownList("StakeholderId", String.Empty) %>
            <%: Html.ValidationMessageFor(model => model.StakeholderId) %>
        </div>
        </div>
        <div class="col-lg-6">
        <div class="editor-label">
            <%: Html.LabelFor(model => model.RequisitionId, "Requisition") %>
        </div>
        <div class="editor-field">
            <%: Html.DropDownList("RequisitionId", String.Empty) %>
            <%: Html.ValidationMessageFor(model => model.RequisitionId) %>
        </div>
        </div>
        </div>
        <div class="row">
        <div class="col-lg-6">
        <div class="editor-label">
            <%: Html.LabelFor(model => model.DonationDate) %>
        </div>
        <div class="editor-field">
            <%: Html.EditorFor(model => model.DonationDate) %>
            <%: Html.ValidationMessageFor(model => model.DonationDate) %>
        </div>
        </div>
        <div class="col-lg-6">
        <div class="editor-label">
            <%: Html.LabelFor(model => model.DonationTime) %>
        </div>
        <div class="editor-field">
            <%: Html.EditorFor(model => model.DonationTime) %>
            <%: Html.ValidationMessageFor(model => model.DonationTime) %>
        </div>
        </div>
        </div>
        <div class="row">
        <div class="col-lg-6">
        <div class="editor-label">
            <%: Html.LabelFor(model => model.Amount) %>
        </div>
        <div class="editor-field">
            <%: Html.EditorFor(model => model.Amount) %>
            <%: Html.ValidationMessageFor(model => model.Amount) %>
        </div>
        </div>
        <div class="col-lg-6">
        <div class="editor-label">
            <%: Html.LabelFor(model => model.Remarks) %>
        </div>
        <div class="editor-field">
            <%: Html.EditorFor(model => model.Remarks) %>
            <%: Html.ValidationMessageFor(model => model.Remarks) %>
        </div>
        </div>
        </div>
        <br />
        <p>
            <input type="submit" value="Create" class="btn btn-block btn-primary" />
        </p>
    </fieldset>
<% } %>

<div>
    <button type="button" class="btn btn-default"><%: Html.ActionLink("Back to List", "Index") %></button>
</div>

</asp:Content>
