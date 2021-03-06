<#import "/spring.ftl" as spring/>
<head>
    <title>Search Form</title>
        <#include "/base_libraries/head.ftl"/>
        <link rel="stylesheet" type="text/css" href="/css/searchFormsStyle.css"/>
</head>
    <body>
    <#include "/admin/menu_bar.ftl"/>

            <div class = "container">

               <div class="nav flex-column nav-pills" id="v-pills-tab" role="tablist" aria-orientation="vertical">

               <ul class="nav nav-pills mb-3" id="pills-tab" role="tablist">

                <li class="nav-item">
                 <a class="nav-link active" id="v-pills-home-tab" data-toggle="pill" href="#v-pills-home" role="tab" aria-controls="v-pills-home" aria-selected="true">Vat</a>
                </li>
               <li class="nav-item">
                 <a class="nav-link" id="v-pills-profile-tab" data-toggle="pill" href="#v-pills-profile" role="tab" aria-controls="v-pills-profile" aria-selected="false">Date</a>
                </li>
                <li class="nav-item">
                 <a class="nav-link" id="v-pills-messages-tab" data-toggle="pill" href="#v-pills-messages" role="tab" aria-controls="v-pills-messages" aria-selected="false">Plate</a>
                 </li>
                 <li class="nav-item">
                  <a class="nav-link" id="v-pills-dates-tab" data-toggle="pill" href="#v-pills-dates" role="tab" aria-controls="v-pills-dates" aria-selected="false">Between Dates</a>
                  </li>

               </div>
               <br>&nbsp;
                <div class="tab-content" id="v-pills-tabContent">

                    <div class="tab-pane fade" id="v-pills-home" role="tabpanel" aria-labelledby="v-pills-home-tab">
                        <form action="/admin/search-repair" method="POST" id="repairSearchForm" name = "repairSearchForm" onsubmit="return vatValidation();">
                            <input type="text" class="form-control" id="vat" placeholder="Enter vat" name="vat" onkeyup="vatValidation()"/><br>
                            <span id="vat_error"></span>
                        <input type="submit" class="btn btn-info" name="button" value="Search Vat">
                        </form>
                    </div>
                 <div class="tab-pane fade" id="v-pills-profile" role="tabpanel" aria-labelledby="v-pills-profile-tab">
                 <form action="/admin/search-repair" method="POST" id="repairSearchForm" name = "repairSearchForm">
                        <input type="date" class="form-control" id="date" placeholder="Enter date..." name="date" /><br>
                    <input type="submit" class="btn btn-info" name="button" value="Search Date">
                    </form>
                </div>
                 <div class="tab-pane fade" id="v-pills-messages" role="tabpanel" aria-labelledby="v-pills-messages-tab">
                 <form action="/admin/search-repair" method="POST" id="repairSearchForm" name = "repairSearchForm" onsubmit="return plateValidation();">
                        <input type="text" class="form-control" id="plate" placeholder="Enter plate..(ABD-1234)" name="plate" onkeyup="plateValidation()"/><br>
                        <span id="plate_error"></span>
                    <input type="submit" class="btn btn-info" name="button" value="Search Plate">
                </form>
                </div>
                <div class="tab-pane fade" id="v-pills-dates" role="tabpanel" aria-labelledby="v-pills-dates-tab">
                <form action="/admin/search-repair" method="POST" id="repairSearchForm" name = "repairSearchForm">

                    <div class="col-md-5">
                            <input type="date" class="form-control" id="startDate" placeholder="Enter Start Date..." name="startDate" /><br>
                    </div>
                    <div class="col-md-5">
                            <input type="date" class="form-control" id="beforeDate" placeholder="Enter Before Date..." name="beforeDate" /><br>
                    </div>
                    <input type="submit" class="btn btn-info" name="button" value="Search Between">
                    </form>
                </div>

</div>

<#if errorMessage??>
            <div class="col-md-12">
            <div class="alert alert-danger" role="alert">
             ${errorMessage}
            </div>
            </div>
            </#if>
<hr>
<#if repairs?has_content>
<div class="col-md-11">


<br>
<table class="table" id="myTable">
   <tr>
     <th>Id</th>
     <th>VAT</th>
     <th>Plate</th>
     <th>Date</th>
     <th>Description</th>
     <th>Status</th>
     <th>Type</th>
     <th>First name</th>
     <th>Last name</th>
   </tr>
   <#list repairs as repair>
                  <tr>
                    <td>#${repair.repairId}</td>
                    <td>${repair.getVehicle().getMember().getVat()}</td>
                    <td>${repair.getVehicle().getPlate()}</td>
                    <td>${repair.repairDate?datetime.iso?string("dd/MM/yyyy HH:mm:ss")}</td>
                    <td>${repair.description}</td>
                    <td><#if repair.status==0>Pending<#elseif repair.status==1>In progress<#else>Completed</#if></td>
                    <td><#if repair.type>Big<#else>Small</#if></td>
                    <td>${repair.getVehicle().getMember().getFirstname()}</td>
                    <td>${repair.getVehicle().getMember().getLastname()}</td>


    <th><a href="/admin/edit-repair?id=${repair.repairId}"><button type="button" class="btn btn-info" >Edit</button></a></th>

    <form action ="/admin/delete-repair" name="deleteForm" id ="deleteForm" method="POST" ">
        <input type="hidden" name="hidden_serviceId" id="hidden_serviceId" value="${repair.repairId}">
    <th><input type="submit" class="btn btn-danger" value="Delete" onclick="return confirmRepairDelete()"></th>
    </form>
  </tr>
  </#list>
</table>
</#if>


<#include "/base_libraries/footer.ftl"/>
<#include "/base_libraries/js.ftl"/>
<script type="text/javascript" src="/js/RepairValidation.js"></script>
<script type="text/javascript" src="/js/ConfirmDelete.js"></script>

    </body>


