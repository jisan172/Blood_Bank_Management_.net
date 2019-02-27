<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/SiteMaster.Master" Inherits="System.Web.Mvc.ViewPage<BloodBank.Models.StakeHolder>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
    Details
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

<h2>Details of Stakeholder</h2>

<fieldset>
    <%--<legend>StakeHolder</legend>--%>
    <table class="table">
    <tr>
        <th>Fields</th>
        <th>Data</th>
    </tr>
    <tr>
    <td><div class="display-label">Full Name</div></td>
    <td><div class="display-field">
        <%: Html.DisplayFor(model => model.FullName) %>
    </div></td>
    </tr>
    <tr>
    <td><div class="display-label">Blood Group</div></td>
    <td><div class="display-field">
        <%: Html.DisplayFor(model => model.BloodGroup) %>
    </div></td>
    </tr>
    <tr>
    <td><div class="display-label">Phone Number</div></td>
    <td><div class="display-field">
        <%: Html.DisplayFor(model => model.PhoneNumber) %>
    </div></td>
    </tr>
    <tr>
    <td><div class="display-label">Email Address</div></td>
    <td><div class="display-field">
        <%: Html.DisplayFor(model => model.EmailAddress) %>
    </div></td>
    </tr>
    <tr>
    <td><div class="display-label">Date Of Birth</div></td>
    <td><div class="display-field">
        <%: Html.DisplayFor(model => model.DateOfBirth) %>
    </div></td>
    </tr>
    <tr>
    <td><div class="display-label">StakeHolder Type</div></td>
    <td><div class="display-field">
        <%: Html.DisplayFor(model => model.StakeHolderType) %>
    </div></td>
    </tr>
    <tr>
    <td><div class="display-label">Country</div></td>
    <td><div class="display-field">
        <%: Html.DisplayFor(model => model.Country) %>
    </div></td>
    </tr>
    <tr>
    <td><div class="display-label">District</div></td>
    <td><div class="display-field">
        <%: Html.DisplayFor(model => model.District) %>
    </div></td>
    </tr>
    <tr>
    <td><div class="display-label">Thana</div></td>
    <td><div class="display-field">
        <%: Html.DisplayFor(model => model.Thana) %>
    </div></td>
    </tr>
    <tr>
    <td><div class="display-label">PresentAddress</div></td>
    <td><div class="display-field">
        <%: Html.DisplayFor(model => model.PresentAddress) %>
    </div></td>
    </tr>
    <tr>
    <td><div class="display-label">Weight</div></td>
    <td><div class="display-field">
        <%: Html.DisplayFor(model => model.Weight) %>
    </div></td>
    </tr>
    <tr>
    <td><div class="display-label">IsDonor</div></td>
    <td><div class="display-field">
        <%: Html.DisplayFor(model => model.IsDonor) %>
    </div></td>
    </tr>
    <tr>
    <td><div class="display-label">IsReceiver</div></td>
    <td><div class="display-field">
        <%: Html.DisplayFor(model => model.IsReceiver) %>
    </div></td>
    </tr>
    <tr>
    <td><div class="display-label">Area</div></td>
    <td><div class="display-field">
        <%: Html.DisplayFor(model => model.Area.AreaName) %>
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
