<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/SiteMaster.Master" Inherits="System.Web.Mvc.ViewPage<BloodBank.Models.BloodRequistion>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
    Details
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

<h2>Details of Blood Requisition</h2>

<fieldset>
    <%--<legend>BloodRequistion</legend>--%>
    <table class="table">
    <tr>
        <th>Fields</th>
        <th>Data</th>
    </tr>
    <tr>
    <td><div class="display-label">Blood Group</div></td>
    <td><div class="display-field">
        <%: Html.DisplayFor(model => model.BloodGroup) %>
    </div></td>
    </tr>
    <tr>
    <td><div class="display-label">Amount</div></td>
    <td><div class="display-field">
        <%: Html.DisplayFor(model => model.Amount) %>
    </div></td>
    </tr>
    <tr>
    <td><div class="display-label">RequisitionBy</div></td>
    <td><div class="display-field">
        <%: Html.DisplayFor(model => model.RequisitionBy.FullName) %>
    </div></td>
    </tr>
    <tr>
    <td><div class="display-label">Area</div></td>
    <td><div class="display-field">
        <%: Html.DisplayFor(model => model.Area.AreaName) %>
    </div></td>
    </tr>
    <tr>
    <td><div class="display-label">Contact Number</div></td>
    <td><div class="display-field">
        <%: Html.DisplayFor(model => model.ContactNumber) %>
    </div></td>
    </tr>
    <tr>
    <td><div class="display-label">Urgency Level</div></td>
    <td><div class="display-field">
        <%: Html.DisplayFor(model => model.UrgencyLevel) %>
    </div></td>
    </tr>
    <tr>
    <td><div class="display-label">Hospital Name</div></td>
    <td><div class="display-field">
        <%: Html.DisplayFor(model => model.HospitalName) %>
    </div></td>
    </tr>
    <tr>
    <td><div class="display-label">Date Of Need</div></td>
    <td><div class="display-field">
        <%: Html.DisplayFor(model => model.DateOfNeed) %>
    </div></td>
    </tr>
    <tr>
    <td><div class="display-label">Time Of Need</div></td>
    <td><div class="display-field">
        <%: Html.DisplayFor(model => model.TimeOfNeed) %>
    </div></td>
    </tr>
    <tr>
    <td><div class="display-label">Requisition Date</div></td>
    <td><div class="display-field">
        <%: Html.DisplayFor(model => model.RequisitionDate) %>
    </div></td>
    </tr>
    <tr>
    <td><div class="display-label">Requisition Time</div></td>
    <td><div class="display-field">
        <%: Html.DisplayFor(model => model.RequisitionTime) %>
    </div></td>
    </tr>
    <tr>
    <td><div class="display-label">Status</div></td>
    <td><div class="display-field">
        <%: Html.DisplayFor(model => model.Status) %>
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
