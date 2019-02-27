<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/SiteMaster.Master" Inherits="System.Web.Mvc.ViewPage<BloodBank.Models.StakeHolder>" %>

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
        <legend>StakeHolder</legend>
        <div class="row">
        <div class="col-lg-6">
        <div class="editor-label">
            <%: Html.LabelFor(model => model.FullName) %>
        </div>
        <div class="editor-field">
            <%: Html.EditorFor(model => model.FullName) %>
            <%: Html.ValidationMessageFor(model => model.FullName) %>
        </div>
        </div>
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
        </div>
        <div class="row">
        <div class="col-lg-6">
        <div class="editor-label">
            <%: Html.LabelFor(model => model.PhoneNumber) %>
        </div>
        <div class="editor-field">
            <%: Html.EditorFor(model => model.PhoneNumber) %>
            <%: Html.ValidationMessageFor(model => model.PhoneNumber) %>
        </div>
        </div>
        <div class="col-lg-6">
        <div class="editor-label">
            <%: Html.LabelFor(model => model.EmailAddress) %>
        </div>
        <div class="editor-field">
            <%: Html.EditorFor(model => model.EmailAddress) %>
            <%: Html.ValidationMessageFor(model => model.EmailAddress) %>
        </div>
        </div>
        </div>
        <div class="row">
        <div class="col-lg-6">
        <div class="editor-label">
            <%: Html.LabelFor(model => model.DateOfBirth) %>
        </div>
        <div class="editor-field">
            <%: Html.EditorFor(model => model.DateOfBirth) %>
            <%: Html.ValidationMessageFor(model => model.DateOfBirth) %>
        </div>
        </div>
        <div class="col-lg-6">
        <div class="editor-label">
            <%: Html.LabelFor(model => model.StakeHolderType) %>
        </div>
        <div class="editor-field">
            <%: Html.EditorFor(model => model.StakeHolderType) %>
            <%: Html.ValidationMessageFor(model => model.StakeHolderType) %>
        </div>
        </div>
        </div>
        <div class="row">
        <div class="col-lg-6">
        <div class="editor-label">
            <%: Html.LabelFor(model => model.Country) %>
        </div>
        <div class="editor-field">
            <%: Html.EditorFor(model => model.Country) %>
            <%: Html.ValidationMessageFor(model => model.Country) %>
        </div>
        </div>
        <div class="col-lg-6">
        <div class="editor-label">
            <%: Html.LabelFor(model => model.District) %>
        </div>
        <div class="editor-field">
            <%: Html.EditorFor(model => model.District) %>
            <%: Html.ValidationMessageFor(model => model.District) %>
        </div>
        </div>
        </div>
        <div class="row">
        <div class="col-lg-6">
        <div class="editor-label">
            <%: Html.LabelFor(model => model.Thana) %>
        </div>
        <div class="editor-field">
            <%: Html.EditorFor(model => model.Thana) %>
            <%: Html.ValidationMessageFor(model => model.Thana) %>
        </div>
        </div>
        <div class="col-lg-6">
        <div class="editor-label">
            <%: Html.LabelFor(model => model.PresentAddress) %>
        </div>
        <div class="editor-field">
            <%: Html.EditorFor(model => model.PresentAddress) %>
            <%: Html.ValidationMessageFor(model => model.PresentAddress) %>
        </div>
        </div>
        </div>
        <div class="row">
        <div class="col-lg-6">
        <div class="editor-label">
            <%: Html.LabelFor(model => model.Weight) %>
        </div>
        <div class="editor-field">
            <%: Html.EditorFor(model => model.Weight) %>
            <%: Html.ValidationMessageFor(model => model.Weight) %>
        </div>
        </div>
        <div class="col-lg-6">
        <div class="editor-label">
            <%: Html.LabelFor(model => model.IsDonor) %>
        </div>
        <div class="editor-field">
            <%: Html.EditorFor(model => model.IsDonor) %>    
            <%: Html.ValidationMessageFor(model => model.IsDonor) %>
        </div>
        </div>
        </div>
        <div class="row">
        <div class="col-lg-6">
        <div class="editor-label">
            <%: Html.LabelFor(model => model.IsReceiver) %>
        </div>
        <div class="editor-field">
            <%: Html.EditorFor(model => model.IsReceiver) %> 
            <%: Html.ValidationMessageFor(model => model.IsReceiver) %>
        </div>
        </div>
        <div class="col-lg-6">
        <div class="editor-label">
            <%: Html.LabelFor(model => model.AreaId, "Area") %>
        </div>
        <div class="editor-field">
            <%: Html.DropDownList("AreaId", String.Empty)%>
            <%: Html.ValidationMessageFor(model => model.AreaId) %>
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
