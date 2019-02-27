<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/SiteMaster.Master" Inherits="System.Web.Mvc.ViewPage<IEnumerable<BloodBank.Models.BloodRequistion>>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
    Welcome to Blood Bank Management System
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

		<div class="row" <%--style="min-height:400px;"--%>>
             <%--<div class="col-lg-1">
             </div>--%>
              <div class="col-lg-12">
                 <img src="../../images/redb.jpg" alt="image" height="500" width="1170">
                     <div class="carousel-caption">
                         <h2>DONATE BLOOD AND GET REAL BLESSINGS</br></h2>
                         <p>Blood is the most precious gift that anyone can give to another person.</br>Donating blood not only saves the life also save doner's lives.</p>
                     </div>  
               </div>
              <%--<div class="col-lg-1">
              </div>--%>  
          </div>
                <hr />
                 <div class="row">
                     <div class="col-lg-4"></div>
                     <div class="col-lg-4">
                     <h2 class="text-primary">Current Request for Blood</h2>
                     </div>
                     <div class="col-lg-4"></div>
                 </div>

              <div class="row">
                       <div class="col-lg-1"></div>
                            <div class="col-lg-10">
                            <table class="table" >    
                            <% foreach (var item in Model) { %>
                                    <tr>
                                        <td>
                                            
                                            '<%: Html.DisplayFor(modelItem => item.Amount) %>'
                                            unit "<%: Html.DisplayFor(modelItem => item.BloodGroup) %>"
                                            blood is needed <%: Html.DisplayFor(modelItem => item.UrgencyLevel) %> 
                                            at <%: Html.DisplayFor(modelItem => item.HospitalName) %>, Date 
                                            <%: Html.DisplayFor(modelItem => item.DateOfNeed) %> of time
                                            <%: Html.DisplayFor(modelItem => item.TimeOfNeed) %>.If Possible Please call 
                                            <%: Html.DisplayFor(modelItem => item.ContactNumber) %>.Kind request, Please Save a Family.
                                                       
                                        </td>
                                    </tr>
                                <%--<div class="requistions">
                                    <p>  bag of blood is needed  </p>
                                </div>--%>    
                            <% } %>

                            </table>
                            </div>
                       <div class="col-lg-1"></div>
                 </div>
           <hr />

             <div class="row">
                           <div class="col-lg-4">
                           </div>
                           <div class="col-lg-4">
                           <h2 class="text-success">DONATION PROCESS</h2>
                           <%--<p>The donation process from the time you arrive the center until the time you leave.</p>--%>
                           </div>
                           <div class="col-lg-4">
                           </div>                    
              </div>
              <br />
          <div class="row">
                             <div class="col-lg-4">
                               <img src="../../images/process_1.jpg" alt="image"height="350" width="368">
                                       <div class="carousel-caption">
                                       <h2>1.REGISTRATION</h2>
                                       </div>
                             </div>
                             <div class="col-lg-4">        
                               <img src="../../images/process_2.jpg" alt="image"height="350" width="368">
                                   <div class="carousel-caption">
                                   <h2>2.SCREENING</h2>
                                   </div>
                              </div>
                          <div class="col-lg-4">
                           <img src="../../images/Process_3.jpg" alt="image"height="350" width="368">
                           <div class="carousel-caption">
                           <h2>3.DONATION</h2>
                           </div>
                          </div>
         </div>

</asp:Content>
