<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/SiteMaster.Master" Inherits="System.Web.Mvc.ViewPage<BloodBank.Models.BloodRequistion>" %>

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
        <legend>Blood Requistion</legend>
        <div class="row">
        <div class="col-lg-6">
        <div class="editor-label">
            <%: Html.LabelFor(model => model.BloodGroup) %>
        </div>
        <div class="editor-field">
            <%: Html.DropDownList("BloodGroup", new List<SelectListItem> {
                new SelectListItem {Text="A+", Value="A+"},
                new SelectListItem {Text = "B+", Value="B+"},
                new SelectListItem {Text="O+", Value = "O+"},
                new SelectListItem {Text="AB+", Value="AB+"},
                new SelectListItem {Text = "B-", Value="B-"},
                new SelectListItem {Text="O-", Value = "O+"},
                new SelectListItem {Text="A-", Value="A-"},
                new SelectListItem {Text = "AB-", Value="AB-"}                
            }, optionLabel:"Choose Blood Group" ) %>
            <%: Html.ValidationMessageFor(model => model.BloodGroup) %>
        </div>
        </div>
        <div class="col-lg-6">
        <div class="editor-label">
            <%: Html.LabelFor(model => model.Amount) %>
        </div>
        <div class="editor-field">
            <%: Html.EditorFor(model => model.Amount) %>
            <%: Html.ValidationMessageFor(model => model.Amount) %>
        </div>
        </div>
        </div>
        <div class="row">
        <div class="col-lg-6">
        <div class="editor-label">
            <%: Html.LabelFor(model => model.StakeholderId, "RequisitionBy") %>
        </div>
        <div class="editor-field">
            <%: Html.DropDownList("StakeholderId", String.Empty) %>
            <%: Html.ValidationMessageFor(model => model.StakeholderId) %>
        </div>
        </div>
        <div class="col-lg-6">
        <div class="editor-label">
            <%: Html.LabelFor(model => model.AreaId, "Area") %>
        </div>
        <div class="editor-field">
            <%: Html.DropDownList("AreaId", String.Empty) %>
            <%: Html.ValidationMessageFor(model => model.AreaId) %>
        </div>
        </div>
        </div>
        <div class="row">
        <div class="col-lg-6">
        <div class="editor-label">
            <%: Html.LabelFor(model => model.ContactNumber) %>
        </div>
        <div class="editor-field">
            <%: Html.EditorFor(model => model.ContactNumber) %>
            <%: Html.ValidationMessageFor(model => model.ContactNumber) %>
        </div>
        </div>
        <div class="col-lg-6">
        <div class="editor-label">
            <%: Html.LabelFor(model => model.UrgencyLevel) %>
        </div>
        <div class="editor-field">
            <%: Html.EditorFor(model => model.UrgencyLevel) %>
            <%: Html.ValidationMessageFor(model => model.UrgencyLevel) %>
        </div>
        </div>
        </div>
        <div class="row">
        <div class="col-lg-6">
        <div class="editor-label">
            <%: Html.LabelFor(model => model.HospitalName) %>
        </div>
        <div class="editor-field">
            <%: Html.EditorFor(model => model.HospitalName) %>
            <%: Html.ValidationMessageFor(model => model.HospitalName) %>
        </div>
        </div>
        <div class="col-lg-6">
        <div class="editor-label">
            <%: Html.LabelFor(model => model.DateOfNeed) %>
        </div>
        <div class="editor-field">
            <%: Html.EditorFor(model => model.DateOfNeed) %>
            <%: Html.ValidationMessageFor(model => model.DateOfNeed) %>
        </div>
        </div>
        </div>
        <div class="row">
        <div class="col-lg-6">
        <div class="editor-label">
            <%: Html.LabelFor(model => model.TimeOfNeed) %>
        </div>
        <div class="editor-field">
            <%: Html.EditorFor(model => model.TimeOfNeed) %>
            <%: Html.ValidationMessageFor(model => model.TimeOfNeed) %>
        </div>
        </div>
        <div class="col-lg-6">
        <div class="editor-label">
            <%: Html.LabelFor(model => model.RequisitionDate) %>
        </div>
        <div class="editor-field">
            <%: Html.EditorFor(model => model.RequisitionDate) %>
            <%: Html.ValidationMessageFor(model => model.RequisitionDate) %>
        </div>
        </div>
        </div>
        <div class="row">
        <div class="col-lg-6">
        <div class="editor-label">
            <%: Html.LabelFor(model => model.RequisitionTime) %>
        </div>
        <div class="editor-field">
            <%: Html.EditorFor(model => model.RequisitionTime) %>
            <%: Html.ValidationMessageFor(model => model.RequisitionTime) %>
        </div>
        </div>
        <div class="col-lg-6">
        <div class="editor-label">
            <%: Html.LabelFor(model => model.Status) %>
        </div>
        <div class="editor-field">
            <%: Html.EditorFor(model => model.Status) %>
            <%: Html.ValidationMessageFor(model => model.Status) %>
        </div>
        </div>
        </div>
        <div class="row">
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
