<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/SiteMaster.Master" Inherits="System.Web.Mvc.ViewPage<BloodBank.Models.Area>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
    Edit
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

<h2>Edit</h2>
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
        <legend>Area</legend>
        
        <%: Html.HiddenFor(model => model.Id) %>

        <%: Html.HiddenFor(model => model.AreaId) %>
        <div class="row">
               <div class="col-lg-6">
                        <div class="editor-label">
                            <%: Html.LabelFor(model => model.AreaName) %>
                        </div>
                        <div class="editor-field">
                            <%: Html.DropDownList("AreaName", new List<SelectListItem> {
                                new SelectListItem {Text="Dhaka", Value="Dhaka"},
                                new SelectListItem {Text = "Khulna", Value="Khulna"},
                                new SelectListItem {Text="Chittagong", Value = "Chittagong"},
                                new SelectListItem {Text="Rajshahi", Value="Rajshahi"},
                                new SelectListItem {Text = "Rangpur", Value="Rangpur"},
                                new SelectListItem {Text="Sylhet", Value = "Sylhet"},
                                new SelectListItem {Text="Barisal", Value="Barisal"},
                                new SelectListItem {Text = "Mymensingh", Value="Mymensingh"}                
                            }, optionLabel:"Choose Area" ) %>
                            <%: Html.ValidationMessageFor(model => model.AreaName) %>
                        </div>
               </div>
               <div class="col-lg-6">
                        <div class="editor-label">
                            <%: Html.LabelFor(model => model.Description) %>
                        </div>
                        <div class="editor-field">
                            <%: Html.EditorFor(model => model.Description) %>
                            <%: Html.ValidationMessageFor(model => model.Description) %>
                        </div>
               </div>
            </div>             
        <br />
        <p>
            <input type="submit" value="Save" class="btn btn-block btn-primary" />
            <br />
            <button type="button" class="btn btn-default"><%: Html.ActionLink("Back to List", "Index") %></button>
        </p>
    </fieldset>
<% } %>


</asp:Content>
